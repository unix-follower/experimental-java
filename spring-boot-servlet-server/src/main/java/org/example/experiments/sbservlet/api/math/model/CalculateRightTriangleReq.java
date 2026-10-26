package org.example.experiments.sbservlet.api.math.model;

public record CalculateRightTriangleReq(
    Double cathetusA,
    Double cathetusB,
    Double hypotenuse
) {
}
