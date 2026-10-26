package org.example.experiments.sbservlet.api.math.model;

import org.example.experiments.sbservlet.api.model.AngleUnit;

public record CalculateTanReq(
    String solveFor,
    AngleUnit resultUnit,
    Double angleAlpha,
    AngleUnit alphaAngleUnit,
    Double tan,
    Double opposite,
    Double adjacent
) {
}
