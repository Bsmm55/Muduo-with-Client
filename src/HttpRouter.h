#pragma once

#include <functional>
#include <unordered_map>
#include <string>
#include "HttpRequest.h"
#include "HttpResponse.h"

class Router {
public:
    using Handler = std::function<void(const HttpRequest&, HttpResponse*)>;

    void addRoute(HttpRequest::Method method, const std::string& path, Handler handler) {
        routes_[method][path] = handler;
    }

    bool route(const HttpRequest& request, HttpResponse* response) const {
        auto methodIt = routes_.find(request.method());
        if (methodIt != routes_.end()) {
            auto pathIt = methodIt->second.find(request.path());
            if (pathIt != methodIt->second.end()) {
                pathIt->second(request, response);  // 调用处理函数
                return true;
            }
        }
        return false;
    }

private:
    std::unordered_map<HttpRequest::Method, std::unordered_map<std::string, Handler>> routes_;
};
