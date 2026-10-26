package org.example.experiments.sbservlet.chemistry;

import org.example.experiments.sbservlet.api.ChemistryGraphResponse;

public sealed interface PubChemGraphService permits PubChemGraphServiceImpl, PubChemGraphNoopService {
    ChemistryGraphResponse getAllGraphs(int page, int pageSize);

    ChemistryGraphResponse getCompoundDataByName(String compoundName, int page, int pageSize);
}
