package org.example.experiments.sbservlet.chemistry;

import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.openscience.cdk.DefaultChemObjectBuilder;
import org.openscience.cdk.exception.InvalidSmilesException;
import org.openscience.cdk.smiles.SmilesParser;

import static org.junit.jupiter.api.Assertions.assertEquals;

class ChemCalcTest {
    @Nested
    class General {
        @Test
        void calculateBondOrderH2() throws InvalidSmilesException {
            // given
            final int bondingElectrons = 2;
            final int antibondingElectrons = 0;
            // when
            final int bondOrder = ChemCalc.General.bondOrder(bondingElectrons, antibondingElectrons);
            // then
            final var smilesParser = new SmilesParser(DefaultChemObjectBuilder.getInstance());
            final var molecule = smilesParser.parseSmiles("[H][H]");
            final var expectedBondOrder = molecule.bonds().iterator().next().getOrder().numeric();
            assertEquals(expectedBondOrder, bondOrder);
        }

        @Test
        void calculateBondOrderCO() throws InvalidSmilesException {
            // given
            final int bondingElectrons = 8;
            final int antibondingElectrons = 2;
            // when
            final int bondOrder = ChemCalc.General.bondOrder(bondingElectrons, antibondingElectrons);
            // then
            final var smilesParser = new SmilesParser(DefaultChemObjectBuilder.getInstance());
            final var molecule = smilesParser.parseSmiles("[C-]#[O+]");
            final var expectedBondOrder = molecule.bonds().iterator().next().getOrder().numeric();
            assertEquals(expectedBondOrder, bondOrder);
        }
    }
}
