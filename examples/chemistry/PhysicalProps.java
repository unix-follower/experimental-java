package chemistry;

public record PhysicalProps(
        double meltingTemperature,
        double boilingTemperature,
        StateOfMatter stateOfMatter,
        double density,
        double solubility,
        double conductivity
) {
}
