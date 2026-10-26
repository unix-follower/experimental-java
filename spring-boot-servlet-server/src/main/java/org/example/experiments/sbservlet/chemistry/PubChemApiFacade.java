package org.example.experiments.sbservlet.chemistry;

import org.example.experiments.sbservlet.api.ChemistryGraphResponse;
import org.example.experiments.sbservlet.api.chemistry.model.CompoundSDFDataResponse;

public sealed interface PubChemApiFacade permits PubChemFacade {
    ChemistryGraphResponse getAllGraphs(int page, int pageSize);

    ChemistryGraphResponse getCompoundDataByName(String compoundName, int page, int pageSize);

    CompoundSDFDataResponse getCompoundSDFDataByCid(long cid);
}
