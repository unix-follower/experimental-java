package org.example.experiments.sbservlet.math;

import org.example.experiments.sbservlet.api.math.model.CalculateRightTriangleReq;
import org.example.experiments.sbservlet.api.model.resp.CalculatorScalarResponse;

public sealed interface RightTriangleCalculator extends TriangleCalculator permits RightTriangleCalc {
    CalculatorScalarResponse calculate(CalculateRightTriangleReq request);
}
