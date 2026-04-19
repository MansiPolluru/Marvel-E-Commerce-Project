package com.marvel.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
public class SecurityConfig {

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
            .csrf(csrf -> csrf.disable())
            .authorizeHttpRequests(auth -> auth
            		
            		.requestMatchers("/api/auth/**").permitAll()
            		.requestMatchers("/api/products/**").permitAll()
            		.requestMatchers("/api/cart/**").permitAll()

                .requestMatchers("/api/orders/**").permitAll()
                .requestMatchers("/api/orders/place").permitAll()

                // ADMIN
                .requestMatchers("/api/admin/**").hasRole("ADMIN")

                // USER
                .requestMatchers("/api/user/**").hasRole("USER")

                .anyRequest().authenticated()
            );

        return http.build();
    }
}