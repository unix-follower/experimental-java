package org.example.experiments.sbservlet.math;

import org.example.experiments.sbservlet.api.math.model.CalculateMatrixAddReq;
import org.example.experiments.sbservlet.api.model.resp.CalculatorMatrixResponse;

public sealed interface MatrixCalculator extends LinearAlgebraCalculator permits MatrixCalc {
    CalculatorMatrixResponse calculate(CalculateMatrixAddReq request);
}
