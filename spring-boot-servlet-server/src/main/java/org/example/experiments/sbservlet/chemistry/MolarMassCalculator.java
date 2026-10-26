package org.example.experiments.sbservlet.chemistry;

import org.example.experiments.sbservlet.api.model.resp.CalculatorScalarResponse;

public sealed interface MolarMassCalculator extends GeneralChemCalculator permits MolarMassCalc {
    void setStrategy(String strategy);

    void setInputType(String inputType);

    CalculatorScalarResponse calculate(String input);
}
