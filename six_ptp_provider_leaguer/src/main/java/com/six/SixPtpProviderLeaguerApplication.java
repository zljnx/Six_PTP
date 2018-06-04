package com.six;

import com.alibaba.dubbo.spring.boot.annotation.EnableDubboConfiguration;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.web.bind.annotation.CrossOrigin;

@SpringBootApplication
@ImportResource("classpath:spring-dubbo-provider.xml")
@MapperScan("com.six.dao")
@CrossOrigin//允许跨越访问
@EnableDubboConfiguration
@EnableScheduling
public class SixPtpProviderLeaguerApplication {

    public static void main(String[] args) {
        SpringApplication.run(SixPtpProviderLeaguerApplication.class, args);
    }
}
