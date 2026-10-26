package org.example.experiments.sbservlet.exception;

import org.example.experiments.sbservlet.api.ErrorCode;

public class MathApiException extends AppException {
    public MathApiException(ErrorCode errorCode) {
        super(errorCode);
    }

    public MathApiException(Throwable cause, ErrorCode errorCode) {
        super(cause, errorCode);
    }
}
