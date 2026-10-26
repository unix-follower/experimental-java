package org.example.experiments.sbservlet.repo;

import org.example.experiments.db.pubchem.fda.model.FoodAdditiveSubstance;

import java.util.List;

public interface FoodAdditiveSubstanceRepository {
    List<FoodAdditiveSubstance> findAll(int offset, int limit);
}
