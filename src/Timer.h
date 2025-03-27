#pragma once

#include "Callbacks.h"
#include <functional>
#include <sys/timerfd.h>
#include <unistd.h>
#include <poll.h>
#include <iostream>

class Timer {
public:
    explicit Timer(double delay, TimerCallback cb);

    ~Timer();

    void start();

    void stop() {
        running_ = false;
    }

private:
    void setTimer(double delay);
    int timerfd_;
    TimerCallback callback_;
    bool running_;
};

