package com.example.bookstore;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.annotation.SessionScope;

import javax.servlet.http.HttpSession;

@Configuration
public class SessionConfig {
	@Bean
	@SessionScope
	public HttpSession httpSession() {
		return new CustomHttpSession();
	}
}
