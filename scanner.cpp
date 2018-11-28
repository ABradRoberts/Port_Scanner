#include <sys/socket.h>
#include <sys/time.h>
#include <sys/types.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <iostream>
#include <string>
#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <netdb.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

static bool port_open(std::string ip, int port);


int main(int argc, char *argv[]){
    
    std::string target_ip = "10.142.196.238";
    int target_port;
    bool scanned = false;

    for(int i = 1; i <= 1000; i++){
        target_port = i;
        if(port_open(target_ip, target_port)){
            scanned = true;
            std::cout << target_ip << ":" << target_port << " is open." << std::endl;
        } 
    }

    if(!scanned){
        std::cout << "Nothing scanned." << std::endl;
    }

    return 0;
}


// Found this on StackOverflow
static bool port_open(std::string ip, int port){
    short int sock = -1;
    fd_set fd;
    struct sockaddr_in address;
    struct timeval tv;

    address.sin_family = AF_INET;
    address.sin_addr.s_addr = inet_addr(ip.c_str());
    address.sin_port = htons(port);

    sock = socket(AF_INET, SOCK_STREAM, 0);
    fcntl(sock, F_SETFL, O_NONBLOCK);

    connect(sock, (struct sockaddr *)&address, sizeof(address));

    FD_ZERO(&fd);
    FD_SET(sock, &fd);
    tv.tv_sec = 0;
    tv.tv_usec = 30000; // Increased this time so it actually does something.

    if(select(sock+1, NULL, &fd, NULL, &tv) == 1){
        int error;
        socklen_t len = sizeof(int);
        getsockopt(sock, SOL_SOCKET, SO_ERROR, &error, &len);

        if(error == 0){
            close(sock);
            return true;
        } else {
            close(sock);
            return false;
        }
    }
    return false;
}
