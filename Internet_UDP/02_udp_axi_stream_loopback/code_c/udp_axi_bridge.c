#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>

#include <arpa/inet.h>
#include <sys/socket.h>
#include <sys/mman.h>


/* =========================================================
 * UDP
 * ========================================================= */

#define UDP_PORT        5005
#define BUFFER_SIZE     1024


/* =========================================================
 * AXI DMA
 * ========================================================= */

#define DMA_BASE        0xA0000000
#define DMA_MAP_SIZE    0x10000


/* MM2S registers */

#define MM2S_DMACR      0x00
#define MM2S_DMASR      0x04
#define MM2S_SA         0x18
#define MM2S_SA_MSB     0x1C
#define MM2S_LENGTH     0x28


/* S2MM registers */

#define S2MM_DMACR      0x30
#define S2MM_DMASR      0x34
#define S2MM_DA         0x48
#define S2MM_DA_MSB     0x4C
#define S2MM_LENGTH     0x58


/* DMA bits */

#define DMA_RUN         0x00000001
#define DMA_RESET       0x00000004

#define DMA_IDLE        0x00000002
#define DMA_IOC_IRQ     0x00001000

#define DMA_ERR_MASK    0x00000770


/* =========================================================
 * u-dma-buf DDR layout
 * ========================================================= */

#define UDMABUF_SIZE    8192

#define TX_OFFSET       0x0000
#define RX_OFFSET       0x1000


/* =========================================================
 * Read physical address of u-dma-buf
 * ========================================================= */

uint64_t read_phys_addr(void)
{
    FILE *fp;

    unsigned long long addr;


    fp = fopen(
        "/sys/class/u-dma-buf/udmabuf0/phys_addr",
        "r"
    );


    if (!fp) {

        perror("phys_addr");

        exit(1);
    }


    if (fscanf(fp, "%llx", &addr) != 1) {

        printf("Cannot read physical address\n");

        fclose(fp);

        exit(1);
    }


    fclose(fp);


    return (uint64_t)addr;
}


/* =========================================================
 * Reset AXI DMA
 * ========================================================= */

void dma_reset(volatile uint32_t *dma)
{
    /*
     * Reset MM2S
     */

    dma[MM2S_DMACR / 4] = DMA_RESET;

    while (
        dma[MM2S_DMACR / 4] & DMA_RESET
    );


    /*
     * Reset S2MM
     */

    dma[S2MM_DMACR / 4] = DMA_RESET;

    while (
        dma[S2MM_DMACR / 4] & DMA_RESET
    );
}


/* =========================================================
 * Wait for one DMA channel
 *
 * status_offset:
 *
 * MM2S = 0x04
 * S2MM = 0x34
 * ========================================================= */

int wait_dma(
    volatile uint32_t *dma,
    uint32_t status_offset,
    const char *name
)
{
    uint32_t status;


    /*
     * 5000 x 1 ms
     *
     * → approximately 5 second timeout
     */

    for (int i = 0; i < 5000; i++) {

        status = dma[status_offset / 4];


        /*
         * Check DMA errors
         */

        if (status & DMA_ERR_MASK) {

            printf(
                "%s DMA ERROR: 0x%08x\n",
                name,
                status
            );

            return -1;
        }


        /*
         * IOC = Interrupt On Complete
         *
         * Means transfer finished.
         */

        if (status & DMA_IOC_IRQ) {

            printf(
                "%s status = 0x%08x\n",
                name,
                status
            );

            return 0;
        }


        usleep(1000);
    }


    printf("%s DMA TIMEOUT\n", name);

    return -1;
}


/* =========================================================
 * Main
 * ========================================================= */

int main(void)
{
    /* =====================================================
     * UDP variables
     * ===================================================== */

    int sockfd;
    int recv_len;


    /*
     * UDP data is binary now.
     *
     * No '\0' is required.
     */

    uint8_t udp_buffer[BUFFER_SIZE];


    struct sockaddr_in server_addr;  // KR260
    struct sockaddr_in client_addr;  // PC

    socklen_t client_len;


    /* =====================================================
     * DMA / DDR variables
     * ===================================================== */

    int mem_fd;
    int buf_fd;


    volatile uint32_t *dma;


    uint8_t *ddr_buffer;

    uint8_t *tx_buffer;
    uint8_t *rx_buffer;


    uint64_t udmabuf_phys;

    uint64_t tx_phys;
    uint64_t rx_phys;


    /* =====================================================
     * Open /dev/mem
     *
     * Used for AXI DMA registers
     * ===================================================== */

    mem_fd = open(
        "/dev/mem",
        O_RDWR | O_SYNC
    );


    if (mem_fd < 0) {

        perror("/dev/mem");

        return 1;
    }


    /* =====================================================
     * mmap AXI DMA
     *
     * DMA base = 0xA0000000
     * ===================================================== */

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

        return 1;
    }


    /* =====================================================
     * Open u-dma-buf
     * ===================================================== */

    buf_fd = open(
        "/dev/udmabuf0",
        O_RDWR | O_SYNC
    );


    if (buf_fd < 0) {

        perror("/dev/udmabuf0");

        return 1;
    }


    /* =====================================================
     * mmap DDR buffer
     * ===================================================== */

    ddr_buffer = mmap(
        NULL,
        UDMABUF_SIZE,
        PROT_READ | PROT_WRITE,
        MAP_SHARED,
        buf_fd,
        0
    );


    if (ddr_buffer == MAP_FAILED) {

        perror("mmap udmabuf");

        return 1;
    }


    /*
     * CPU virtual addresses
     */

    tx_buffer = ddr_buffer + TX_OFFSET;

    rx_buffer = ddr_buffer + RX_OFFSET;


    /*
     * DMA physical addresses
     */

    udmabuf_phys = read_phys_addr();


    tx_phys =
        udmabuf_phys + TX_OFFSET;


    rx_phys =
        udmabuf_phys + RX_OFFSET;


    printf("\n");

    printf(
        "u-dma-buf physical base : 0x%llx\n",
        (unsigned long long)udmabuf_phys
    );


    printf(
        "TX physical address     : 0x%llx\n",
        (unsigned long long)tx_phys
    );


    printf(
        "RX physical address     : 0x%llx\n\n",
        (unsigned long long)rx_phys
    );


    /* =====================================================
     * Create UDP socket
     * ===================================================== */

    sockfd = socket(
        AF_INET,
        SOCK_DGRAM,
        0
    );


    if (sockfd < 0) {

        perror("socket");

        return 1;
    }


    /* =====================================================
     * Configure KR260 UDP address
     * ===================================================== */

    memset(
        &server_addr,
        0,
        sizeof(server_addr)
    );


    server_addr.sin_family =
        AF_INET;


    server_addr.sin_addr.s_addr =
        INADDR_ANY;


    server_addr.sin_port =
        htons(UDP_PORT);


    /* =====================================================
     * Bind UDP port
     * ===================================================== */

    if (bind(
            sockfd,
            (struct sockaddr *)&server_addr,
            sizeof(server_addr)
        ) < 0)
    {

        perror("bind");

        return 1;
    }


    printf(
        "KR260 UDP -> AXI-Stream -> UDP bridge started\n"
    );


    printf(
        "Listening on UDP port %d\n\n",
        UDP_PORT
    );


    /* =====================================================
     * Main loop
     * ===================================================== */

    while (1) {

        client_len =
            sizeof(client_addr);


        /* =================================================
         * 1. Receive UDP packet from PC
         * ================================================= */

        recv_len = recvfrom(
            sockfd,
            udp_buffer,
            BUFFER_SIZE,
            0,
            (struct sockaddr *)&client_addr,
            &client_len
        );


        if (recv_len < 0) {

            perror("recvfrom");

            continue;
        }


        printf(
            "RX UDP from %s:%d\n",
            inet_ntoa(client_addr.sin_addr),
            ntohs(client_addr.sin_port)
        );


        printf(
            "RX UDP bytes = %d\n",
            recv_len
        );


        /*
         * For this project AXI Stream width = 32 bit.
         *
         * Keep test packets as multiples of 4 bytes.
         */

        if ((recv_len % 4) != 0) {

            printf(
                "ERROR: packet size must be multiple of 4 bytes\n\n"
            );

            continue;
        }


        /* =================================================
         * 2. Copy UDP payload → TX DDR
         * ================================================= */

        memcpy(
            tx_buffer,
            udp_buffer,
            recv_len
        );


        /*
         * Clear RX DDR
         */

        memset(
            rx_buffer,
            0,
            recv_len
        );


        /*
         * Ensure CPU stores happen before DMA starts.
         */

        __sync_synchronize();


        /* =================================================
         * 3. Reset DMA
         * ================================================= */

        dma_reset(dma);


        /*
         * Clear old DMA interrupt bits
         */

        dma[MM2S_DMASR / 4] =
            0x00007000;


        dma[S2MM_DMASR / 4] =
            0x00007000;


        /* =================================================
         * 4. Start S2MM first
         *
         * AXI-Stream → DDR RX
         * ================================================= */

        dma[S2MM_DMACR / 4] =
            DMA_RUN;


        /*
         * RX physical address
         */

        dma[S2MM_DA / 4] =
            (uint32_t)(
                rx_phys &
                0xFFFFFFFFULL
            );


        dma[S2MM_DA_MSB / 4] =
            (uint32_t)(
                rx_phys >> 32
            );


        /*
         * Writing LENGTH starts S2MM
         */

        dma[S2MM_LENGTH / 4] =
            recv_len;


        /* =================================================
         * 5. Start MM2S
         *
         * DDR TX → AXI-Stream
         * ================================================= */

        dma[MM2S_DMACR / 4] =
            DMA_RUN;


        /*
         * TX physical address
         */

        dma[MM2S_SA / 4] =
            (uint32_t)(
                tx_phys &
                0xFFFFFFFFULL
            );


        dma[MM2S_SA_MSB / 4] =
            (uint32_t)(
                tx_phys >> 32
            );


        /*
         * Writing LENGTH starts MM2S
         */

        dma[MM2S_LENGTH / 4] =
            recv_len;


        /* =================================================
         * 6. Wait for DMA
         * ================================================= */

        if (
            wait_dma(
                dma,
                MM2S_DMASR,
                "MM2S"
            ) < 0
        ) {

            printf("\n");

            continue;
        }


        if (
            wait_dma(
                dma,
                S2MM_DMASR,
                "S2MM"
            ) < 0
        ) {

            printf("\n");

            continue;
        }


        /*
         * Ensure DMA writes are visible before CPU reads RX.
         */

        __sync_synchronize();


        /* =================================================
         * 7. Print received AXI data
         * ================================================= */

        printf("AXI result:\n");


        uint32_t *rx_words =
            (uint32_t *)rx_buffer;


        int word_count =
            recv_len / 4;


        for (int i = 0; i < word_count; i++) {

            printf(
                "RX[%02d] = 0x%08x\n",
                i,
                rx_words[i]
            );
        }


        /* =================================================
         * 8. Send processed DDR RX back to PC
         * ================================================= */

        int sent = sendto(
            sockfd,
            rx_buffer,
            recv_len,
            0,
            (struct sockaddr *)&client_addr,
            client_len
        );


        if (sent < 0) {

            perror("sendto");
        }

        else {

            printf(
                "TX UDP bytes = %d\n\n",
                sent
            );
        }
    }


    /* Normally never reached */

    close(sockfd);

    munmap(
        (void *)dma,
        DMA_MAP_SIZE
    );


    munmap(
        ddr_buffer,
        UDMABUF_SIZE
    );


    close(mem_fd);
    close(buf_fd);


    return 0;
}