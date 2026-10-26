package org.example.experiments.sbservlet.convert;

import org.example.experiments.sbservlet.api.model.AngleUnit;
import tools.jackson.core.JsonParser;
import tools.jackson.databind.DeserializationContext;
import tools.jackson.databind.deser.std.StdDeserializer;

public class AngleUnitsJsonDeserializer extends StdDeserializer<AngleUnit> {
    protected AngleUnitsJsonDeserializer() {
        super(AngleUnit.class);
    }

    @Override
    public AngleUnit deserialize(JsonParser p, DeserializationContext ctxt) {
        return AngleUnit.valueOf(p.getString().toUpperCase());
    }
}
