package org.example.experiments.sbservlet;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.jdbc.autoconfigure.DataSourceAutoConfiguration;
import org.springframework.boot.hibernate.autoconfigure.HibernateJpaAutoConfiguration;

@SpringBootApplication(exclude = {
    HibernateJpaAutoConfiguration.class,
    DataSourceAutoConfiguration.class
})
public class AssistantOnSpringBootServletApp {
    private AssistantOnSpringBootServletApp() {
    }

    public static void main(String[] args) {
        SpringApplication.run(AssistantOnSpringBootServletApp.class, args);
    }
}
