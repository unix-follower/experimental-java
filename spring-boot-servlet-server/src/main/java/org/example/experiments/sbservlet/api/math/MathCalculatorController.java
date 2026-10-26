package org.example.experiments.sbservlet.api.math;

import org.example.experiments.sbservlet.api.ErrorCode;
import org.example.experiments.sbservlet.api.math.model.CalculateCosineReq;
import org.example.experiments.sbservlet.api.math.model.CalculateHypotenuseReq;
import org.example.experiments.sbservlet.api.math.model.CalculateMatrixAddReq;
import org.example.experiments.sbservlet.api.math.model.CalculateRightTriangleReq;
import org.example.experiments.sbservlet.api.math.model.CalculateSineReq;
import org.example.experiments.sbservlet.api.math.model.CalculateTanReq;
import org.example.experiments.sbservlet.api.model.resp.CalculatorMatrixResponse;
import org.example.experiments.sbservlet.api.model.resp.CalculatorScalarResponse;
import org.example.experiments.sbservlet.exception.MathApiException;
import org.example.experiments.sbservlet.math.MathCalculatorApiFacade;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MathCalculatorController implements CalculatorApi {
    private final MathCalculatorApiFacade facade;

    public MathCalculatorController(MathCalculatorApiFacade facade) {
        this.facade = facade;
    }

    @Override
    public ResponseEntity<CalculatorScalarResponse> calculate(CalculateRightTriangleReq body) {
        validate(body);
        final var response = facade.calculate(body);
        return ResponseEntity.ok(response);
    }

    private static boolean areEitherSidesInvalid(CalculateRightTriangleReq body) {
        return (body.cathetusA() == null && body.hypotenuse() == null)
            || (body.cathetusB() == null && body.hypotenuse() == null);
    }

    private static void checkHypotenuse(CalculateRightTriangleReq body) {
        if (body.hypotenuse() != null) {
            if (body.cathetusA() != null && body.hypotenuse() <= body.cathetusA()) {
                throw new MathApiException(ErrorCode.INVALID_INPUT);
            }
            if (body.cathetusB() != null && body.hypotenuse() <= body.cathetusB()) {
                throw new MathApiException(ErrorCode.INVALID_INPUT);
            }
        }
    }

    private static void validate(CalculateRightTriangleReq body) {
        if (body.cathetusA() == null && body.cathetusB() == null && body.hypotenuse() == null) {
            throw new MathApiException(ErrorCode.INVALID_INPUT);
        } else {
            if (areEitherSidesInvalid(body)) {
                throw new MathApiException(ErrorCode.INVALID_INPUT);
            }
            checkHypotenuse(body);
        }
    }

    @Override
    public ResponseEntity<CalculatorScalarResponse> calculate(CalculateHypotenuseReq body) {
        final var response = facade.calculate(body);
        return ResponseEntity.ok(response);
    }

    @Override
    public ResponseEntity<CalculatorMatrixResponse> calculate(CalculateMatrixAddReq body) {
        final var response = facade.calculate(body);
        return ResponseEntity.ok(response);
    }

    @Override
    public ResponseEntity<CalculatorScalarResponse> calculate(CalculateCosineReq body) {
        final var response = facade.calculate(body);
        return ResponseEntity.ok(response);
    }

    @Override
    public ResponseEntity<CalculatorScalarResponse> calculate(CalculateSineReq body) {
        final var response = facade.calculate(body);
        return ResponseEntity.ok(response);
    }

    @Override
    public ResponseEntity<CalculatorScalarResponse> calculate(CalculateTanReq body) {
        final var response = facade.calculate(body);
        return ResponseEntity.ok(response);
    }
}
