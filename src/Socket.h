#pragma once

#include "noncopyable.h"

#include <arpa/inet.h>
#include <netinet/in.h>
#include <string>

class InetAddress;

// 封装socket fd
class Socket : noncopyable
{
public:
    explicit Socket(int sockfd)
        : sockfd_(sockfd)
    {
    }
    ~Socket();

    int fd() const { return sockfd_; }
    void bindAddress(const InetAddress &localaddr);
    void listen();
    int accept(InetAddress *peeraddr);

    static bool isSelfConnect(int sockfd);

    void shutdownWrite();

    void setTcpNoDelay(bool on);
    void setReuseAddr(bool on);
    void setReusePort(bool on);
    void setKeepAlive(bool on);
    
    static  sockaddr_in getLocalAddr(int sockfd);
    static  sockaddr_in getPeerAddr(int sockfd);
private:
    const int sockfd_;
};
