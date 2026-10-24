package org.example.experimental.multithreading.ratelimiter;

public interface RateLimiter {
    void check(String serviceName, String operationName);
}
