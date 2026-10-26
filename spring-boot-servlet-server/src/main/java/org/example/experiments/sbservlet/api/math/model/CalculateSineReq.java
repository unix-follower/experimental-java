package org.example.experiments.sbservlet.api.math.model;

import org.example.experiments.sbservlet.api.model.AngleUnit;

public record CalculateSineReq(
    String solveFor,
    AngleUnit resultUnit,
    Double angleAlpha,
    AngleUnit alphaAngleUnit,
    Double sine,
    Double opposite,
    Double hypotenuse
) {
}
