package org.example.experiments.sbservlet.config;

import com.fasterxml.jackson.annotation.JsonInclude;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.convert.ConversionService;
import org.springframework.core.convert.converter.Converter;
import org.springframework.core.convert.support.DefaultConversionService;
import org.zalando.logbook.Logbook;
import org.zalando.logbook.autoconfigure.LogbookProperties;
import org.zalando.logbook.core.Conditions;
import org.zalando.logbook.core.DefaultHttpLogFormatter;
import org.zalando.logbook.core.DefaultHttpLogWriter;
import org.zalando.logbook.core.DefaultSink;
import tools.jackson.core.StreamWriteFeature;
import tools.jackson.databind.DeserializationFeature;
import tools.jackson.databind.ObjectMapper;
import tools.jackson.databind.cfg.DateTimeFeature;
import tools.jackson.databind.cfg.JsonNodeFeature;
import tools.jackson.databind.json.JsonMapper;

import java.util.List;

@Configuration
@ComponentScan(basePackages = {
    "org.example.experiments.sbservlet",
    "org.example.experiments.db",
})
@EnableConfigurationProperties({AppProperties.class})
class ApplicationConfig {
    @Bean
    ObjectMapper objectMapper() {
        return JsonMapper.builder()
            .changeDefaultPropertyInclusion(incl -> incl.withValueInclusion(JsonInclude.Include.NON_NULL))
            .configure(DateTimeFeature.WRITE_DATES_AS_TIMESTAMPS, false)
            .configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false)
            .configure(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS, true)
            .configure(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY, true)
            .configure(StreamWriteFeature.WRITE_BIGDECIMAL_AS_PLAIN, true)
            .configure(JsonNodeFeature.STRIP_TRAILING_BIGDECIMAL_ZEROES, true)
            .build();
    }

    @Bean
    ConversionService appConversionService(List<Converter<?, ?>> converters) {
        final var service = new DefaultConversionService();
        converters.forEach(service::addConverter);
        return service;
    }

    @Bean
    Logbook logbook(LogbookProperties logbookProperties) {
        final var excludePredicates = logbookProperties.getExclude().stream()
            .map(Conditions::requestTo)
            .toList();

        return Logbook.builder()
            .condition(
                Conditions.exclude(excludePredicates)
            )
            .sink(
                new DefaultSink(
                    new DefaultHttpLogFormatter(),
                    new DefaultHttpLogWriter()
                )
            )
            .build();
    }
}
