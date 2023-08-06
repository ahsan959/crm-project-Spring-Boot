package com.example.crmproject;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;

@SpringBootApplication
public class CrmProjectApplication {

    public static void main(String[] args) {
        SpringApplication.run(CrmProjectApplication.class, args);
        System.out.println("Server Started...");
    }


}








