package org.example.experimental.db;

import jakarta.persistence.EntityManager;
import jakarta.persistence.Persistence;
import org.example.db.stockmarket.Stock;

import java.util.HashMap;

public class StockMarketHibernateApp {
    private StockMarketHibernateApp() {
    }

    static void main() {
        final var dbUser = System.getenv("STOCK_MARKET_DB_USERNAME");
        final var dbPassword = System.getenv("STOCK_MARKET_DB_PASSWORD");

        final var properties = new HashMap<>();
        properties.put("javax.persistence.jdbc.user", dbUser);
        properties.put("javax.persistence.jdbc.password", dbPassword);

        final var emFactory = Persistence.createEntityManagerFactory("stock-market", properties);

        try (emFactory) {
            EntityManager em = emFactory.createEntityManager();
            try (em) {
                em.getTransaction().begin();

                final var sql = """
                        SELECT s FROM stock s
                        WHERE s.id.ticker = :ticker
                        ORDER BY s.id.dateAt DESC""".trim();
                final var query = em.createQuery(sql, Stock.class)
                  .setParameter("ticker", "KO")
                  .setFirstResult(0)
                  .setMaxResults(10);

                final var resultList = query.getResultList();
                resultList.forEach(System.out::println);

                em.getTransaction().commit();
                // CHECKSTYLE:OFF
            } catch (Exception e) { // NOPMD
                // CHECKSTYLE:ON
                em.getTransaction().rollback();
                e.printStackTrace();
            }
        }
    }
}
