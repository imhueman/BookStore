package com.example.bookstore;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.properties.ConfigurationPropertiesScan;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;

@SpringBootApplication
//@ComponentScan(basePackages = "com.tandat.Forum,controller,model")
@ComponentScan({ "com.example.bookstore", "controller", "model", "service", "respository","SecurityConfig","handler" })
@ConfigurationPropertiesScan({"SecurityConfig"})
@EntityScan(basePackages =  "model")
@EnableJpaRepositories("respository")

public class BookStoreApplication extends SpringBootServletInitializer {
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(BookStoreApplication.class);
    }
    public static void main(String[] args) {
        SpringApplication.run(BookStoreApplication.class, args);
    }

}
