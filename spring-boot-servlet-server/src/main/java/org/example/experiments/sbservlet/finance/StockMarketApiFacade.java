package org.example.experiments.sbservlet.finance;

import org.example.experiments.sbservlet.api.finance.stockmarket.model.StocksResponseDto;

public sealed interface StockMarketApiFacade permits StockMarketFacade, StockMarketNoopFacade {
    /**
     * @param page 1-based page
     */
    StocksResponseDto findByTicker(String ticker, int page, int pageSize);
}
