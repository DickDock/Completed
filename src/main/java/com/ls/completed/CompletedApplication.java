package com.ls.completed;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.ls.completed.mapper")
public class CompletedApplication {

    public static void main(String[] args) {
        SpringApplication.run(CompletedApplication.class, args);
    }

}
