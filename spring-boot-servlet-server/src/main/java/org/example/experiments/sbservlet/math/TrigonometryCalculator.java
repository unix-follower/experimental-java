package org.example.experiments.sbservlet.math;

import org.example.experiments.sbservlet.api.math.model.CalculateCosineReq;
import org.example.experiments.sbservlet.api.math.model.CalculateSineReq;
import org.example.experiments.sbservlet.api.math.model.CalculateTanReq;
import org.example.experiments.sbservlet.api.model.resp.CalculatorScalarResponse;

public sealed interface TrigonometryCalculator permits TrigCalc {
    CalculatorScalarResponse calculate(CalculateCosineReq request);

    CalculatorScalarResponse calculate(CalculateSineReq request);

    CalculatorScalarResponse calculate(CalculateTanReq request);
}
