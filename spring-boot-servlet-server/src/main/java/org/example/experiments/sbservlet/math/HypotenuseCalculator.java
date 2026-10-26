package org.example.experiments.sbservlet.math;

import org.example.experiments.sbservlet.api.math.model.CalculateHypotenuseReq;
import org.example.experiments.sbservlet.api.model.resp.CalculatorScalarResponse;

public sealed interface HypotenuseCalculator extends TriangleCalculator permits HypotenuseCalc {
    CalculatorScalarResponse calculate(CalculateHypotenuseReq request);
}
