package org.example.experiments.sbservlet.api.chemistry.model.req;

public record ChemCalculateMolarMassReq(
    String strategy,
    String formula,
    String smiles
) implements ChemCalculatorFormulaInput {
}
