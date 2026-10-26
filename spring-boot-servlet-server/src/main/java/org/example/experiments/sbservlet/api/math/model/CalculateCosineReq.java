package org.example.experiments.sbservlet.api.math.model;

import org.example.experiments.sbservlet.api.model.AngleUnit;

public record CalculateCosineReq(
    String solveFor,
    AngleUnit resultUnit,
    Double angleAlpha,
    AngleUnit alphaAngleUnit,
    Double cosine,
    Double adjacent,
    Double hypotenuse
) {
}
