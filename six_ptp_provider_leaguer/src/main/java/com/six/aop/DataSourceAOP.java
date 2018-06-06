package com.six.aop;


import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;
import com.six.config.DynamicDataSource;

/**
 * 数据源的切入面
 *
 */
@Aspect
@Component

public class DataSourceAOP {

    @Before("(@annotation(com.six.annotation.Master) || execution(* com.six.service..*.insert*(..)) || " +
            "execution(* com.six.service..*.update*(..)) || execution(* com.six.service..*.delete*(..)) || " +
            "execution(* com.six.service..*.add*(..))) && !@annotation(com.six.annotation.Slave) -")
    public void setWriteDataSourceType() {
        DynamicDataSource.master();
        System.out.println("dataSource切换到：master");
       // log.info("dataSource切换到：master");
    }

    @Before("(@annotation(com.six.annotation.Slave) || execution(* com.six.service..*.query*(..)) || execution(* com.six.service..*.select*(..)) || execution(* com.six.service..*.get*(..))) && !@annotation(com.six.annotation.Master)")
    public void setReadDataSourceType() {
        DynamicDataSource.slave();
        System.out.println("dataSource切换到：slave");
        //log.info("dataSource切换到：slave");
    }


}
