package org.example.experiments.sbservlet.api.chemistry;

import org.example.experiments.sbservlet.api.chemistry.model.req.ChemCalculateMolarMassReq;
import org.example.experiments.sbservlet.api.chemistry.model.req.ChemCalculateMoleReq;
import org.example.experiments.sbservlet.api.model.resp.CalculatorScalarResponse;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/api/v1/chemistry/calculator")
public interface CalculatorApi {
    @PostMapping(value = "/molar-mass")
    ResponseEntity<CalculatorScalarResponse> calculate(@RequestBody ChemCalculateMolarMassReq body);

    @PostMapping(value = "/mole")
    ResponseEntity<CalculatorScalarResponse> calculate(@RequestBody ChemCalculateMoleReq body);
}
