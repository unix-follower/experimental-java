package org.example.experiments.sbservlet.chemistry;

import org.example.experiments.sbservlet.api.chemistry.model.FoodAdditiveSubstanceResponseDto;

import java.util.List;

public sealed interface PubChemFdaApiFacade permits PubChemFdaFacade, PubChemFdaNoopFacade {
    /**
     * @param page 1-based page
     */
    List<FoodAdditiveSubstanceResponseDto> getAll(int page, int pageSize);
}
