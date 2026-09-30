#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <errno.h>

/* ============================================================
 * AXI DMA
 * Address Editor:
 * PS -> DMA S_AXI_LITE = 0xA0000000
 * ============================================================ */

#define DMA_BASE       0xA0000000UL
#define DMA_MAP_SIZE   0x10000UL


/* ============================================================
 * u-dma-buf
 *
 * 8 KB total:
 *
 * offset 0x0000 -> TX
 * offset 0x1000 -> RX
 * ============================================================ */

#define UDMABUF_DEV        "/dev/udmabuf0"
#define UDMABUF_PHYS_SYSFS "/sys/class/u-dma-buf/udmabuf0/phys_addr"

#define UDMABUF_SIZE    0x2000UL

#define TX_OFFSET       0x0000UL
#define RX_OFFSET       0x1000UL

#define NUM_WORDS       16
#define NUM_BYTES       (NUM_WORDS * sizeof(uint32_t))


/* ============================================================
 * AXI DMA register offsets
 * ============================================================ */

/* MM2S: Memory -> AXI Stream */
#define MM2S_DMACR      0x00
#define MM2S_DMASR      0x04
#define MM2S_SA         0x18
#define MM2S_SA_MSB     0x1C
#define MM2S_LENGTH     0x28

/* S2MM: AXI Stream -> Memory */
#define S2MM_DMACR      0x30
#define S2MM_DMASR      0x34
#define S2MM_DA         0x48
#define S2MM_DA_MSB     0x4C
#define S2MM_LENGTH     0x58


/* ============================================================
 * DMA control/status bits
 * ============================================================ */

#define DMA_RUN         0x00000001
#define DMA_RESET       0x00000004

#define DMA_IDLE        0x00000002

#define DMA_ERR_MASK    0x00000770


/* ============================================================
 * Read physical address from:
 *
 * /sys/class/u-dma-buf/udmabuf0/phys_addr
 * ============================================================ */

static uint64_t read_udmabuf_phys_addr(void)
{
    FILE *fp;
    char buf[64];
    uint64_t addr;

    fp = fopen(UDMABUF_PHYS_SYSFS, "r");

    if (fp == NULL) {
        perror("fopen phys_addr");
        exit(1);
    }

    if (fgets(buf, sizeof(buf), fp) == NULL) {
        perror("fgets phys_addr");
        fclose(fp);
        exit(1);
    }

    fclose(fp);

    addr = strtoull(buf, NULL, 0);

    return addr;
}


/* ============================================================
 * Wait for DMA reset bit to clear
 * ============================================================ */

static int wait_reset_done(
    volatile uint32_t *dma,
    uint32_t reg_offset)
{
    int timeout = 100000;

    while (timeout > 0) {

        if ((dma[reg_offset / 4] & DMA_RESET) == 0)
            return 0;

        usleep(10);

        timeout--;
    }

    return -1;
}


/* ============================================================
 * MAIN
 * ============================================================ */

int main(void)
{
    int mem_fd;
    int buf_fd;

    volatile uint32_t *dma;

    volatile uint8_t  *buffer;
    volatile uint32_t *tx;
    volatile uint32_t *rx;

    uint64_t udmabuf_phys;

    uint64_t tx_phys;
    uint64_t rx_phys;

    uint32_t mm2s_status;
    uint32_t s2mm_status;

    int timeout;
    int i;
    int pass = 1;


    setbuf(stdout, NULL);


    printf("\n");
    printf("=====================================\n");
    printf(" KR260 DDR + AXI DMA Loopback Test\n");
    printf("=====================================\n");


    /* ========================================================
     * Get physical address of DMA buffer
     * ======================================================== */

    udmabuf_phys = read_udmabuf_phys_addr();

    tx_phys = udmabuf_phys + TX_OFFSET;
    rx_phys = udmabuf_phys + RX_OFFSET;


    printf("u-dma-buf physical base : 0x%llx\n",
           (unsigned long long)udmabuf_phys);

    printf("TX physical address     : 0x%llx\n",
           (unsigned long long)tx_phys);

    printf("RX physical address     : 0x%llx\n",
           (unsigned long long)rx_phys);


    /*
     * Current Vivado mapping:
     *
     * DMA MM2S/S2MM -> HP0_DDR_LOW
     * 0x00000000 - 0x7FFFFFFF
     *
     * Therefore buffer must be inside this range.
     */

    if ((udmabuf_phys + UDMABUF_SIZE - 1) > 0x7FFFFFFFULL) {

        printf("\nERROR:\n");
        printf("u-dma-buf is outside HP0_DDR_LOW range.\n");
        printf("Buffer end = 0x%llx\n",
               (unsigned long long)
               (udmabuf_phys + UDMABUF_SIZE - 1));

        return 1;
    }


    /* ========================================================
     * Open /dev/mem for DMA registers
     * ======================================================== */

    mem_fd = open(
        "/dev/mem",
        O_RDWR | O_SYNC
    );

    if (mem_fd < 0) {

        perror("open /dev/mem");

        return 1;
    }


    /* ========================================================
     * Map AXI DMA registers
     * ======================================================== */

    dma = mmap(
        NULL,
        DMA_MAP_SIZE,
        PROT_READ | PROT_WRITE,
        MAP_SHARED,
        mem_fd,
        DMA_BASE
    );

    if (dma == MAP_FAILED) {

        perror("mmap DMA");

        close(mem_fd);

        return 1;
    }


    /* ========================================================
     * Open u-dma-buf
     *
     * O_SYNC:
     * CPU cache disabled for this mapping.
     * Easier for DMA testing.
     * ======================================================== */

    buf_fd = open(
        UDMABUF_DEV,
        O_RDWR | O_SYNC
    );

    if (buf_fd < 0) {

        perror("open /dev/udmabuf0");

        munmap((void *)dma, DMA_MAP_SIZE);
        close(mem_fd);

        return 1;
    }


    /* ========================================================
     * mmap DMA DDR buffer for CPU (virtual address)
     * ======================================================== */

    buffer = mmap(
        NULL,
        UDMABUF_SIZE,
        PROT_READ | PROT_WRITE,
        MAP_SHARED,
        buf_fd,
        0
    );

    if (buffer == MAP_FAILED) {

        perror("mmap udmabuf0");

        close(buf_fd);

        munmap((void *)dma, DMA_MAP_SIZE);
        close(mem_fd);

        return 1;
    }


    /* ========================================================
     * TX / RX virtual pointers
     *
     * Same physical DDR block:
     *
     * buffer + 0x0000 -> TX
     * buffer + 0x1000 -> RX
     * ======================================================== */

    tx = (volatile uint32_t *)
         (buffer + TX_OFFSET);

    rx = (volatile uint32_t *)
         (buffer + RX_OFFSET);


    /* ========================================================
     * Fill TX and clear RX
     * ======================================================== */

    for (i = 0; i < NUM_WORDS; i++) {

        tx[i] = i + 1;

        rx[i] = 0;
    }


    __sync_synchronize();


    printf("\nTX data:\n");

    for (i = 0; i < NUM_WORDS; i++) {

        printf(
            "TX[%02d] = 0x%08x\n",
            i,
            tx[i]
        );
    }


    /* ========================================================
     * Reset AXI DMA
     * ======================================================== */

    printf("\nReset DMA...\n");


    dma[MM2S_DMACR / 4] = DMA_RESET;

    if (wait_reset_done(
            dma,
            MM2S_DMACR) != 0) {

        printf("MM2S reset timeout\n");

        goto cleanup;
    }


    dma[S2MM_DMACR / 4] = DMA_RESET;

    if (wait_reset_done(
            dma,
            S2MM_DMACR) != 0) {

        printf("S2MM reset timeout\n");

        goto cleanup;
    }


    printf("DMA reset done\n");


    /* ========================================================
     * Start S2MM FIRST
     *
     * AXI Stream
     *     ↓
     * S2MM
     *     ↓
     * RX DDR
     * ======================================================== */

    printf("\nStart S2MM...\n");


    /*
     * Run S2MM
     */
    dma[S2MM_DMACR / 4] = DMA_RUN;


    /*
     * Destination address LOW 32 bits
     */
    dma[S2MM_DA / 4] =
        (uint32_t)(rx_phys & 0xFFFFFFFFULL);


    /*
     * Destination address HIGH 32 bits
     */
    dma[S2MM_DA_MSB / 4] =
        (uint32_t)(rx_phys >> 32);


    /*
     * Writing LENGTH starts S2MM transfer
     */
    dma[S2MM_LENGTH / 4] = NUM_BYTES;


    /* ========================================================
     * Start MM2S
     *
     * TX DDR
     *    ↓
     * MM2S
     *    ↓
     * AXI Stream
     * ======================================================== */

    printf("Start MM2S...\n");


    dma[MM2S_DMACR / 4] = DMA_RUN;


    /*
     * Source address LOW 32 bits
     */
    dma[MM2S_SA / 4] =
        (uint32_t)(tx_phys & 0xFFFFFFFFULL);


    /*
     * Source address HIGH 32 bits
     */
    dma[MM2S_SA_MSB / 4] =
        (uint32_t)(tx_phys >> 32);


    /*
     * Writing LENGTH starts MM2S transfer
     */
    dma[MM2S_LENGTH / 4] = NUM_BYTES;


    /* ========================================================
     * Wait for DMA completion
     * ======================================================== */

    timeout = 100000;


    while (timeout > 0) {

        mm2s_status =
            dma[MM2S_DMASR / 4];

        s2mm_status =
            dma[S2MM_DMASR / 4];


        /* --------------------------------------------
         * Error check
         * -------------------------------------------- */

        if (mm2s_status & DMA_ERR_MASK) {

            printf(
                "\nMM2S ERROR: 0x%08x\n",
                mm2s_status
            );

            break;
        }


        if (s2mm_status & DMA_ERR_MASK) {

            printf(
                "\nS2MM ERROR: 0x%08x\n",
                s2mm_status
            );

            break;
        }


        /* --------------------------------------------
         * Both channels idle -> done
         * -------------------------------------------- */

        if ((mm2s_status & DMA_IDLE) &&
            (s2mm_status & DMA_IDLE)) {

            break;
        }


        timeout--;

        usleep(10);
    }


    /* ========================================================
     * Final status
     * ======================================================== */

    mm2s_status =
        dma[MM2S_DMASR / 4];

    s2mm_status =
        dma[S2MM_DMASR / 4];


    printf("\nMM2S status = 0x%08x\n",
           mm2s_status);

    printf("S2MM status = 0x%08x\n",
           s2mm_status);


    if (timeout == 0) {

        printf("DMA TIMEOUT\n");

        goto cleanup;
    }


    if ((mm2s_status & DMA_ERR_MASK) ||
        (s2mm_status & DMA_ERR_MASK)) {

        printf("DMA ERROR\n");

        goto cleanup;
    }


    __sync_synchronize();


    /* ========================================================
     * Print RX
     * ======================================================== */

    printf("\nRX data:\n");


    for (i = 0; i < NUM_WORDS; i++) {

        printf(
            "RX[%02d] = 0x%08x\n",
            i,
            rx[i]
        );
    }


    /* ========================================================
     * Compare
     * ======================================================== */

    for (i = 0; i < NUM_WORDS; i++) {

        if (rx[i] != tx[i]) {

            pass = 0;

            printf(
                "\nFAIL at word %d\n",
                i
            );

            printf(
                "Expected = 0x%08x\n",
                tx[i]
            );

            printf(
                "Received = 0x%08x\n",
                rx[i]
            );

            break;
        }
    }


    if (pass) {

        printf("\n");
        printf("====================\n");
        printf(" DMA LOOPBACK PASS\n");
        printf("====================\n");
    }


cleanup:

    munmap(
        (void *)buffer,
        UDMABUF_SIZE
    );

    close(buf_fd);


    munmap(
        (void *)dma,
        DMA_MAP_SIZE
    );

    close(mem_fd);


    return pass ? 0 : 1;
}