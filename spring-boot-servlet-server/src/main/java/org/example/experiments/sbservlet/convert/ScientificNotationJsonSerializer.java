package org.example.experiments.sbservlet.convert;

import tools.jackson.core.JsonGenerator;
import tools.jackson.databind.SerializationContext;
import tools.jackson.databind.ser.std.StdSerializer;

public class ScientificNotationJsonSerializer extends StdSerializer<Double> {
    protected ScientificNotationJsonSerializer() {
        super(Double.class);
    }

    @Override
    public void serialize(Double value, JsonGenerator gen, SerializationContext provider) {
        gen.writeString(String.format("%e", value));
    }
}
