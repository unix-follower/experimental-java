package org.example.experiments.sbservlet.api.math.model;

import tools.jackson.databind.annotation.JsonDeserialize;
import org.example.experiments.sbservlet.api.model.AngleUnit;
import org.example.experiments.sbservlet.convert.AngleUnitsJsonDeserializer;

public record CalculateHypotenuseReq(
    String solveFor,
    Double cathetusA,
    Double cathetusB,
    Double angleAlpha,
    @JsonDeserialize(using = AngleUnitsJsonDeserializer.class)
    AngleUnit alphaAngleUnit,
    Double angleBeta,
    @JsonDeserialize(using = AngleUnitsJsonDeserializer.class)
    AngleUnit betaAngleUnit,
    Double area
) {
}
