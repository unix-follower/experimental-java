package org.example.experiments.sbservlet.api.finance.stockmarket;

import org.example.experiments.sbservlet.api.finance.stockmarket.model.StocksResponseDto;
import org.example.experiments.sbservlet.finance.StockMarketApiFacade;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FinanceStockMarketApiController implements FinanceStockMarketApi {
    private final StockMarketApiFacade facade;

    public FinanceStockMarketApiController(StockMarketApiFacade facade) {
        this.facade = facade;
    }

    @Override
    public ResponseEntity<StocksResponseDto> getByTicker(String ticker, int page, int pageSize) {
        final var stocksResponse = facade.findByTicker(ticker, page, pageSize);
        return ResponseEntity.ok(stocksResponse);
    }
}
