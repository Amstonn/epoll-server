#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>

#include<unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>

#include <sys/epoll.h>

#define SERVER_PROT (7778)
#define EPOLL_MAX_NUM (2048)
#define BUFFER_MAX_LEN (4096)
#define SOCKET int

char buffer[BUFFER_MAX_LEN];

void str_toupper(char *str){
    for(int i=0;i<strlen(str);i++){
        str[i] = toupper(str[i]);
    }
}

int main(int argc, char **argv){
    SOCKET listen_fd = 0;
    SOCKET client_fd = 0;
    struct sockaddr_in server_addr;
    struct sockaddr_in client_addr;
    socklen_t client_len = sizeof(client_addr);
    int epfd = 0;
    struct epoll_event event, *my_events;//定义一个epoll事件和一个epoll事件数组
    listen_fd = socket(AF_INET,SOCK_STREAM,0);//创建监听套接字
    //绑定
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(SERVER_PROT);
    server_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    bind(listen_fd, (sockaddr *)&server_addr,sizeof(server_addr));
    //监听
    listen(listen_fd, 10);
    printf("server started!\n");
    //epoll
    epfd = epoll_create(EPOLL_MAX_NUM);
    if(epfd < 0){
        perror("epoll create");
        goto END;
    }
    event.events = EPOLLIN;
    event.data.fd = listen_fd;
    if(epoll_ctl(epfd,EPOLL_CTL_ADD,listen_fd,&event) < 0){
        perror("epoll ctl add listen_fd");
        goto END;
    }
    my_events = (epoll_event *)malloc(sizeof(struct epoll_event) * EPOLL_MAX_NUM);
    while(1){
        int active_fds_cnt = epoll_wait(epfd,my_events,EPOLL_MAX_NUM,-1);//阻塞等待
        for(int i=0;i<active_fds_cnt;i++){
            if(my_events[i].data.fd == listen_fd){
                client_fd = accept(listen_fd, (sockaddr *) &client_addr, &client_len);
                if(client_len < 0){
                    perror("accept");
                    continue;
                }
                char ip[20];
                printf("new connection [%s,%d]\n", inet_ntop(AF_INET, &client_addr.sin_addr, ip, sizeof(ip)), ntohs(client_addr.sin_port));
                event.events = EPOLLIN | EPOLLET;
                event.data.fd = client_fd;
                epoll_ctl(epfd, EPOLL_CTL_ADD, client_fd, &event);
            }
            else if(my_events[i].events & EPOLLIN){
                printf("EPOLLIN\n");
                client_fd = my_events[i].data.fd;
                buffer[0] = '\0';
                int n;
                while(1){
                    n = read(client_fd, buffer, 100);
                    if(n<0){
                        perror("read");
                        break;
                    }
                    else if(n == 0){
                        epoll_ctl(epfd, EPOLL_CTL_DEL, client_fd, &event);
                        close(client_fd);
                        break;
                    }
                    else{
                        printf("[read]:%s\n", buffer);
                        buffer[n] = '\0';
                        str_toupper(buffer);
                        write(client_fd, buffer, strlen(buffer));
                        printf("[write]:%s\n", buffer);
                        memset(buffer, 0, BUFFER_MAX_LEN);
                    }
                }
            }
            else if(my_events[i].events & EPOLLOUT){
                printf("EPOLLOUT\n");
            }
        }
    }
    END:
    close(epfd);//关闭epoll文件描述符
    close(listen_fd);//关闭监听套接字
    return 0;
}