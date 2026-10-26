package org.example.experiments.sbservlet.chemistry;

import org.example.experiments.sbservlet.api.ErrorCode;
import org.example.experiments.sbservlet.api.chemistry.model.req.ChemCalculateMoleReq;
import org.example.experiments.sbservlet.api.model.resp.CalculatorScalarResponse;
import org.example.experiments.sbservlet.exception.ChemistryApiException;
import org.openscience.cdk.DefaultChemObjectBuilder;
import org.openscience.cdk.exception.CDKException;
import org.openscience.cdk.interfaces.IMolecularFormula;
import org.openscience.cdk.smiles.SmilesParser;
import org.openscience.cdk.tools.manipulator.MolecularFormulaManipulator;

public final class MoleCalc implements MoleCalculator {
    private String inputType;

    @Override
    public void setInputType(String inputType) {
        this.inputType = inputType;
    }

    @Override
    public CalculatorScalarResponse calculate(ChemCalculateMoleReq request) {
        double moles;
        if (Constants.FORMULA_IN_TYPE.equals(inputType)) {
            moles = calculateFromFormula(request);
        } else if (Constants.SMILES_IN_TYPE.equals(inputType)) {
            moles = calculateFromSmiles(request);
        } else {
            moles = calculateUnknownSubstance(request.mass(), request.molecularWeight());
        }
        return new CalculatorScalarResponse(moles);
    }

    private double calculateUnknownSubstance(double massInGrams, double molecularWeight) {
        return massInGrams / molecularWeight;
    }

    private double calculate(double massInGrams, IMolecularFormula formula) {
        final double molecularWeight = MolecularFormulaManipulator.getMass(formula);
        return massInGrams / molecularWeight;
    }

    private double calculateFromFormula(ChemCalculateMoleReq request) {
        final var builder = DefaultChemObjectBuilder.getInstance();
        final var molecularFormula = MolecularFormulaManipulator.getMolecularFormula(request.formula(), builder);
        return calculate(request.mass(), molecularFormula);
    }

    private double calculateFromSmiles(ChemCalculateMoleReq request) {
        final var builder = DefaultChemObjectBuilder.getInstance();
        try {
            final var atomContainer = new SmilesParser(builder).parseSmiles(request.smiles());
            final var molecularFormula = MolecularFormulaManipulator.getMolecularFormula(atomContainer);
            return calculate(request.mass(), molecularFormula);
        } catch (CDKException e) {
            throw new ChemistryApiException(e, ErrorCode.INVALID_INPUT);
        }
    }
}
