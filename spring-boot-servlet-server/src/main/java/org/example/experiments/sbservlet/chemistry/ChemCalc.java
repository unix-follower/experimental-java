package org.example.experiments.sbservlet.chemistry;

public final class ChemCalc {
    private ChemCalc() {
    }

    public static final class General {
        private General() {
        }

        public static int bondOrder(int bondingElectrons, int antibondingElectrons) {
            if (bondingElectrons < 0 || antibondingElectrons < 0) {
                throw new IllegalArgumentException("The input must be non-negative");
            }

            if (bondingElectrons < antibondingElectrons) {
                throw new IllegalArgumentException(
                    "There are always more bonding electrons than antibonding electrons");
            }

            return (bondingElectrons - antibondingElectrons) / 2;
        }
    }
}
