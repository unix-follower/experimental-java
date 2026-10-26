package org.example.experiments.sbservlet.api.chemistry.model.req;

public sealed interface ChemCalculatorFormulaInput permits ChemCalculateMolarMassReq, ChemCalculateMoleReq {
    String formula();

    String smiles();
}
