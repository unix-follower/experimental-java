package org.example.experimental.multithreading;

public interface RateLimiter {
    void check(String serviceName, String operationName);
}
