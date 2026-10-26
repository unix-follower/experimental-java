package org.example.experimental.math;

import org.apache.commons.math3.util.Precision;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import static org.junit.jupiter.api.Assertions.assertEquals;

class DerivativeTest {
    private static final Logger LOGGER = LoggerFactory.getLogger(DerivativeTest.class);

    @Test
    void testXSquare() {
        // f(2) = 2²
        final var result = Derivative.xSquare(2);
        LOGGER.info("{}", result);
        final var f_result = result.getLeft();
        final var f1_result = result.getRight();
        assertEquals(4, f_result);
        assertEquals(4, Precision.round(f1_result, 1));
    }

    @Test
    void testAxInPowerN() {
        // y = 5 * 2⁷
        var result = Derivative.axInPowerN(5, 7, 2);
        LOGGER.info("{}", result);
        var fResult = result.getLeft();
        var f1Result = result.getRight();
        assertEquals(640, fResult);
        assertEquals(2240, Precision.round(f1Result, 1));

        // y = 3 * 5²
        result = Derivative.axInPowerN(3, 2, 5);
        LOGGER.info("{}", result);
        fResult = result.getLeft();
        f1Result = result.getRight();
        assertEquals(75, Precision.round(fResult, 1));
        assertEquals(30, Precision.round(f1Result, 1));

        //      4
        // y = --- = 4 * 6⁻²
        //     6²
        result = Derivative.axInPowerN(4, -2, 6);
        LOGGER.info("{}", result);
        fResult = result.getLeft();
        f1Result = result.getRight();
        assertEquals(0.111, Precision.round(fResult, 3));
        assertEquals(-0.037, Precision.round(f1Result, 3));

        // y = 3√5 = 3 * 5^½ = 3 * 5^0.5
        result = Derivative.axInPowerN(3, .5, 5);
        LOGGER.info("{}", result);
        fResult = result.getLeft();
        f1Result = result.getRight();
        assertEquals(6.708, Precision.round(fResult, 3));
        assertEquals(0.671, Precision.round(f1Result, 3));
    }

    @Test
    void testSinusoid() {
        // y = sin(2)
        var result = Derivative.sinusoid(2);
        LOGGER.info("{}", result);
        var fResult = result.getLeft();
        var f1Result = result.getRight();
        assertEquals(0.909, Precision.round(fResult, 3));
        assertEquals(-0.416, Precision.round(f1Result, 3));
    }
}
