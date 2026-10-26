package org.example.experiments.sbservlet.exception;

import org.example.experiments.sbservlet.api.ErrorCode;

public class ChemistryApiException extends AppException {
    public ChemistryApiException(ErrorCode errorCode) {
        super(errorCode);
    }

    public ChemistryApiException(Throwable cause, ErrorCode errorCode) {
        super(cause, errorCode);
    }
}
