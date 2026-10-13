package chemistry;

import java.util.Objects;

public class ChemicalProps {
    private double reactivity;
    private double flammability;
    private double toxicity;
    private double chemicalStability;
    private double acidityOrAlkalinity;

    public double getReactivity() {
        return reactivity;
    }

    public void setReactivity(double reactivity) {
        this.reactivity = reactivity;
    }

    public double getFlammability() {
        return flammability;
    }

    public void setFlammability(double flammability) {
        this.flammability = flammability;
    }

    public double getToxicity() {
        return toxicity;
    }

    public void setToxicity(double toxicity) {
        this.toxicity = toxicity;
    }

    public double getChemicalStability() {
        return chemicalStability;
    }

    public void setChemicalStability(double chemicalStability) {
        this.chemicalStability = chemicalStability;
    }

    public double getAcidityOrAlkalinity() {
        return acidityOrAlkalinity;
    }

    public void setAcidityOrAlkalinity(double acidityOrAlkalinity) {
        this.acidityOrAlkalinity = acidityOrAlkalinity;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        ChemicalProps that = (ChemicalProps) o;
        return Double.compare(reactivity, that.reactivity) == 0
                && Double.compare(flammability, that.flammability) == 0
                && Double.compare(toxicity, that.toxicity) == 0
                && Double.compare(chemicalStability, that.chemicalStability) == 0
                && Double.compare(acidityOrAlkalinity, that.acidityOrAlkalinity) == 0;
    }

    @Override
    public int hashCode() {
        return Objects.hash(reactivity, flammability, toxicity, chemicalStability, acidityOrAlkalinity);
    }
}
