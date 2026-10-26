package org.example.experiments.sbservlet.config;

import org.springframework.boot.jdbc.autoconfigure.DataSourceProperties;
import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "app.stock-market")
public record StockMarketProperties(
    @ConfigurationProperties
    DataSourceProperties ds,
    @ConfigurationProperties
    HikariProperties hikari
) {
}
