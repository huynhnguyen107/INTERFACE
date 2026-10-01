#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include <arpa/inet.h>
#include <sys/socket.h>

#define UDP_PORT    5005
#define BUFFER_SIZE 1024

int main(void)
{
    int sockfd;
    int recv_len;

    char buffer[BUFFER_SIZE];

    struct sockaddr_in server_addr;//KR260
    struct sockaddr_in client_addr;//PC

    socklen_t client_len;


    /* =========================================
     * Create UDP socket
     * ========================================= */

    sockfd = socket(AF_INET, SOCK_DGRAM, 0);

    if (sockfd < 0) {
        perror("socket");
        return 1;
    }


    /* =========================================
     * Configure KR260 UDP address
     * ========================================= */

    memset(&server_addr, 0, sizeof(server_addr));

    server_addr.sin_family = AF_INET;

    /*
     * Listen on all local network interfaces
     */
    server_addr.sin_addr.s_addr = INADDR_ANY;

    /*
     * UDP port = 5005
     */
    server_addr.sin_port = htons(UDP_PORT);


    /* =========================================
     * Bind socket to UDP port
     * ========================================= */

    if (bind(
            sockfd,
            (struct sockaddr *)&server_addr,
            sizeof(server_addr)) < 0)
    {
        perror("bind");

        close(sockfd);

        return 1;
    }


    printf("KR260 UDP server started\n");
    printf("Listening on UDP port %d\n\n", UDP_PORT);


    /* =========================================
     * Receive UDP packets forever
     * ========================================= */

    while (1) {

        client_len = sizeof(client_addr);

        recv_len = recvfrom(
            sockfd,
            buffer,
            BUFFER_SIZE - 1,
            0,
            (struct sockaddr *)&client_addr,
            &client_len
        );


        if (recv_len < 0) {

            perror("recvfrom");

            continue;
        }


        /*
         * Add '\0' so we can print as string
         */
        buffer[recv_len] = '\0';


        printf(
            "RX from %s:%d\n",
            inet_ntoa(client_addr.sin_addr),
            ntohs(client_addr.sin_port)
        );


        printf(
            "Data: %s\n",
            buffer
        );


        /*
         * Echo packet back to sender
         */
        if (sendto(
                sockfd,
                buffer,
                recv_len,
                0,
                (struct sockaddr *)&client_addr,
                client_len) < 0)
        {
            perror("sendto");
        }

        else {

            printf(
                "Echoed %d bytes\n\n",
                recv_len
            );
        }

    }


    close(sockfd);

    return 0;
}