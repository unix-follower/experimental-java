package org.example.experiments.sbservlet.chemistry;

import org.example.experiments.sbservlet.api.chemistry.model.req.ChemCalculateMoleReq;
import org.example.experiments.sbservlet.api.model.resp.CalculatorScalarResponse;

public sealed interface MoleCalculator extends StoichiometryCalculator permits MoleCalc {
    void setInputType(String inputType);

    CalculatorScalarResponse calculate(ChemCalculateMoleReq request);
}
