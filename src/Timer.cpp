#include "Timer.h"


Timer::Timer(double delay, TimerCallback cb)
    : callback_(std::move(cb))
    , running_(true)
{
    timerfd_ = timerfd_create(CLOCK_MONOTONIC, TFD_NONBLOCK | TFD_CLOEXEC);
    if (timerfd_ < 0) {
        perror("timerfd_create failed");
        exit(EXIT_FAILURE);
    }
    setTimer(delay);
}

Timer::~Timer()
{
    if (timerfd_ > 0) {
        close(timerfd_);
    }
}

void Timer::start()
{
    pollfd pfd;
    pfd.fd = timerfd_;
    pfd.events = POLLIN;

    while (running_) {
        int ret = poll(&pfd, 1, -1);
        if (ret > 0 && (pfd.revents & POLLIN)) {
            uint64_t expirations;
            read(timerfd_, &expirations, sizeof(expirations));
            if (callback_) callback_();
            break;  // 只执行一次
        }
    }
}

void Timer::setTimer(double delay)
{
    itimerspec new_value;
    new_value.it_value.tv_sec = static_cast<time_t>(delay);
    new_value.it_value.tv_nsec = (delay - new_value.it_value.tv_sec) * 1e9;
    new_value.it_interval.tv_sec = 0;
    new_value.it_interval.tv_nsec = 0;

    if (timerfd_settime(timerfd_, 0, &new_value, nullptr) == -1) {
        perror("timerfd_settime failed");
        exit(EXIT_FAILURE);
    }
}


