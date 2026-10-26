package org.example.experiments.sbservlet.api.model.resp;

import tools.jackson.databind.annotation.JsonSerialize;
import org.example.experiments.sbservlet.convert.ScientificNotationJsonSerializer;

public record CalculatorScalarResponse(
    double result,
    Enum<?> unit,
    @JsonSerialize(using = ScientificNotationJsonSerializer.class)
    double resultScientificNotation
) {
    public CalculatorScalarResponse(double result) {
        this(result, null, result);
    }

    public CalculatorScalarResponse(double result, Enum<?> unit) {
        this(result, unit, result);
    }
}
