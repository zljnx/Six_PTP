package com.six;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;
import org.springframework.data.solr.repository.config.EnableSolrRepositories;


@SpringBootApplication
@ImportResource("classpath:spring-dubbo-provider.xml")
@MapperScan("com.six.dao")
@EnableSolrRepositories(basePackages = {"com.six.service"})
public class SixPtpProviderBusinessApplication {

    public static void main(String[] args) {
        SpringApplication.run(SixPtpProviderBusinessApplication.class, args);
    }
}
