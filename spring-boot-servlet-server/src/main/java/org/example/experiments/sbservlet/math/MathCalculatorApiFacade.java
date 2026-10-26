package org.example.experiments.sbservlet.math;

import org.example.experiments.sbservlet.api.math.model.CalculateCosineReq;
import org.example.experiments.sbservlet.api.math.model.CalculateHypotenuseReq;
import org.example.experiments.sbservlet.api.math.model.CalculateMatrixAddReq;
import org.example.experiments.sbservlet.api.math.model.CalculateRightTriangleReq;
import org.example.experiments.sbservlet.api.math.model.CalculateSineReq;
import org.example.experiments.sbservlet.api.math.model.CalculateTanReq;
import org.example.experiments.sbservlet.api.model.resp.CalculatorMatrixResponse;
import org.example.experiments.sbservlet.api.model.resp.CalculatorScalarResponse;

public sealed interface MathCalculatorApiFacade permits MathCalculatorFacade {
    CalculatorScalarResponse calculate(CalculateRightTriangleReq body);

    CalculatorScalarResponse calculate(CalculateHypotenuseReq body);

    CalculatorMatrixResponse calculate(CalculateMatrixAddReq body);

    CalculatorScalarResponse calculate(CalculateCosineReq body);

    CalculatorScalarResponse calculate(CalculateSineReq body);

    CalculatorScalarResponse calculate(CalculateTanReq body);
}
