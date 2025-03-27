#include "mymuduo/HttpServer.h"
#include "mymuduo/HttpRequest.h"
#include "mymuduo/HttpResponse.h"
#include "mymuduo/HttpContext.h"
#include "mymuduo/Timestamp.h"

void onRequest(const HttpRequest& req, HttpResponse* resp)
{
    std::cout << "Headers " << req.methodString() << " " << req.path() << std::endl;


    if (req.path() == "/")
    {
        resp->setStatusCode(HttpResponse::k200Ok);
        resp->setStatusMessage("OK");
        resp->setContentType("text/html");
        resp->addHeader("Server", "Muduo");
        // std::string now = Timestamp::now().toFormattedString();
        resp->setBody("<html><head><title>This is title</title></head>"
            "<body><h1>Hello</h1>Now is "
            "</body></html>");
    }
    else if (req.path() == "/hello")
    {
        resp->setStatusCode(HttpResponse::k200Ok);
        resp->setStatusMessage("OK");
        resp->setContentType("text/plain");
        resp->addHeader("Server", "Muduo");
        resp->setBody("hello, world!\n");
    }
    else
    {
        resp->setStatusCode(HttpResponse::k404NotFound);
        resp->setStatusMessage("Not Found");
        resp->setCloseConnection(true);
    }

}

int main(int argc, char* argv[])
{
    EventLoop loop;
    HttpServer server(&loop, InetAddress(8080), "http-server");
    server.setHttpCallback(onRequest);
    server.setThreadNum(1);
    server.start();
    loop.loop();
}

