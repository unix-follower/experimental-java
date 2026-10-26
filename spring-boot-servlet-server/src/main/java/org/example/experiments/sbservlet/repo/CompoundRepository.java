package org.example.experiments.sbservlet.repo;

import org.example.experiments.db.pubchem.graph.model.CompoundDataProjection;

import java.util.List;

public interface CompoundRepository {
    List<CompoundDataProjection> findAll(int offset, int limit);

    List<CompoundDataProjection> findCompoundDataByName(int offset, int limit, String compoundName);
}
