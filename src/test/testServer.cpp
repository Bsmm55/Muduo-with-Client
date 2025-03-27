#include "mymuduo/HttpServer.h"
#include "mymuduo/HttpRouter.h"
#include "mymuduo/Logger.h"

void handleHello(const HttpRequest& req, HttpResponse& res) {
    res.setBody("Hello, World!");
}

void handlePostData(const HttpRequest& req, HttpResponse& res) {
    res.setBody("Received: " + req.getBody());
}

int main() {
    EventLoop loop;
    InetAddress listenAddr(8080);
    HttpServer server(&loop, listenAddr);

    // 配置路由
    HttpRouter router;
    router.addRoute("GET", "/hello", handleHello);
    router.addRoute("POST", "/data", handlePostData);

    server.setRouter(&router); // 绑定 Router
    server.start();
    loop.loop();
    return 0;
}
















































// #include <mymuduo/TcpServer.h>
// #include <mymuduo/InetAddress.h>
// #include <mymuduo/Logger.h>
// #include <mymuduo/TcpConnection.h>
// #include <mymuduo/Buffer.h>
// #include <string>
// #include <sstream>

// class HttpServer {
// public:
//     HttpServer(EventLoop* loop, const InetAddress& listenAddr)
//         : server_(loop, listenAddr, "HttpServer") {
//         server_.setConnectionCallback(std::bind(&HttpServer::onConnection, this, std::placeholders::_1));
//         server_.setMessageCallback(std::bind(&HttpServer::onMessage, this, std::placeholders::_1, std::placeholders::_2, std::placeholders::_3));
//     }

//     void start() {
//         server_.start();
//     }

// private:
//     void onConnection(const TcpConnectionPtr& conn) {
//         if (conn->connected()) {
//             LOG_INFO("New connection");
//         } else {
//             LOG_INFO("Connection closed");
//         }
//     }

//     void onMessage(const TcpConnectionPtr& conn, Buffer* buf, Timestamp time) {
//         std::string request = buf->retriveAllString();
//         std::string path = parseRequestPath(request);

//         if (request.substr(0, 3) == "GET") {
//             handleGetRequest(conn, path);
//         } else if (request.substr(0, 4) == "POST") {
//             std::string body = parseRequestBody(request);
//             handlePostRequest(conn, path, body);
//         } else {
//             sendHttpResponse(conn, "405 Method Not Allowed", "Method Not Allowed");
//         }
//     }

//     void handleGetRequest(const TcpConnectionPtr& conn, const std::string& path) {
//         if (path == "/hello") {
//             sendHttpResponse(conn, "200 OK", "Hello, World!");
//         } else {
//             sendHttpResponse(conn, "404 Not Found", "Not Found");
//         }
//     }

//     void handlePostRequest(const TcpConnectionPtr& conn, const std::string& path, const std::string& body) {
//         if (path == "/data") {
//             sendHttpResponse(conn, "200 OK", "Received: " + body);
//         } else {
//             sendHttpResponse(conn, "404 Not Found", "Not Found");
//         }
//     }

//     void sendHttpResponse(const TcpConnectionPtr& conn, const std::string& status, const std::string& body) {
//         std::ostringstream response;
//         response << "HTTP/1.1 " << status << "\r\n"
//                  << "Content-Type: text/plain\r\n"
//                  << "Content-Length: " << body.size() << "\r\n"
//                  << "Connection: close\r\n"
//                  << "\r\n"
//                  << body;

//         conn->send(response.str());
//         conn->shutdown();
//     }

//      std::string parseRequestPath(const std::string& request) {
//         size_t start = request.find(" ");
//         if (start == std::string::npos) return "/";
//         start++;
//         size_t end = request.find(" ", start);
//         if (end == std::string::npos) return "/";
//         return request.substr(start, end - start);
//     }

//     std::string parseRequestBody(const std::string& request) {
//         size_t bodyStart = request.find("\r\n\r\n");
//         return (bodyStart == std::string::npos) ? "" : request.substr(bodyStart + 4);
//     }

//     TcpServer server_;
// };

// int main() {
//     EventLoop loop;
//     InetAddress listenAddr(8080);
//     HttpServer server(&loop, listenAddr);
//     server.start();
//     loop.loop();
//     return 0;
// }

