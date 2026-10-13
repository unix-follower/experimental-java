package chemistry;

import java.util.Objects;

public class ChemicalCompound {
    private String formula;
    private ChemicalProps chemicalProps;
    private PhysicalProps physicalProps;

    public ChemicalCompound(String formula, ChemicalProps chemicalProps, PhysicalProps physicalProps) {
        this.formula = formula;
        this.chemicalProps = chemicalProps;
        this.physicalProps = physicalProps;
    }

    public String getFormula() {
        return formula;
    }

    public void setFormula(String formula) {
        this.formula = formula;
    }

    public ChemicalProps getChemicalProps() {
        return chemicalProps;
    }

    public void setChemicalProps(ChemicalProps chemicalProps) {
        this.chemicalProps = chemicalProps;
    }

    public PhysicalProps getPhysicalProps() {
        return physicalProps;
    }

    public void setPhysicalProps(PhysicalProps physicalProps) {
        this.physicalProps = physicalProps;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        ChemicalCompound that = (ChemicalCompound) o;
        return Objects.equals(formula, that.formula) && Objects.equals(chemicalProps, that.chemicalProps)
                && Objects.equals(physicalProps, that.physicalProps);
    }

    @Override
    public int hashCode() {
        return Objects.hash(formula, chemicalProps, physicalProps);
    }
}
