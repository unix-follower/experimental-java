package org.example.experiments.sbservlet.chemistry;

import org.example.experiments.sbservlet.api.chemistry.model.req.ChemCalculateMolarMassReq;
import org.example.experiments.sbservlet.api.chemistry.model.req.ChemCalculateMoleReq;
import org.example.experiments.sbservlet.api.model.resp.CalculatorScalarResponse;

public sealed interface ChemCalculatorApiFacade permits ChemCalculatorFacade {
    CalculatorScalarResponse calculate(ChemCalculateMolarMassReq body);

    CalculatorScalarResponse calculate(ChemCalculateMoleReq body);
}
