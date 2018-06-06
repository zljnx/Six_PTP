package com.six.config;

/**
 * @author 周录军
 * @Title: ${file_name}
 * @Package ${package_name}
 * @Description: ${todo}
 * @date 2018/6/610:06
 */

import com.alibaba.druid.pool.DruidDataSource;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.context.EnvironmentAware;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;

import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
/**
 * Druid的DataResource配置类
 * @author Raye
 * @since 2016年10月7日14:14:18
 */
@Configuration
@EnableTransactionManagement
public class DataBaseConfiguration  implements EnvironmentAware {
    @Autowired
    private Environment environment1;
    @Autowired
    private Environment environment2;

    public DataBaseConfiguration(){
        System.out.println("####################  DataBaseConfiguration");

    }
     public void setEnvironment(Environment env) {

        this.environment1.containsProperty("spring.master.");
        this.environment2.containsProperty("spring.slave.");
    }

    public DataSource master() {
        System.out.println("注入Master druid！！！");
        DruidDataSource datasource = new DruidDataSource();
        datasource.setUrl(environment1.getProperty("spring.datasource.master.url"));
        datasource.setDriverClassName(environment1.getProperty("spring.datasource.master.driverClassName"));
        datasource.setUsername(environment1.getProperty("spring.datasource.master.username"));
        datasource.setPassword(environment1.getProperty("spring.datasource.master.password"));

        try {
            datasource.setFilters("stat,wall");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return datasource;
    }

    public DataSource slave() {
        System.out.println("Slave druid！！！");
        DruidDataSource datasource = new DruidDataSource();
        datasource.setUrl(environment2.getProperty("spring.datasource.slave.url"));
        datasource.setDriverClassName(environment2.getProperty("spring.datasource.slave.driverClassName"));
        datasource.setUsername(environment2.getProperty("spring.datasource.slave.username"));
        datasource.setPassword(environment2.getProperty("spring.datasource.slave.password"));

        try {
            datasource.setFilters("stat,wall");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return datasource;
    }

    @Bean
    public DynamicDataSource dynamicDataSource() {
        DataSource master = master();
        DataSource slave = slave();
        Map<Object, Object> targetDataSources = new HashMap<Object, Object>();
        targetDataSources.put(DynamicDataSource.DatabaseType.Master, master);
        targetDataSources.put(DynamicDataSource.DatabaseType.Slave, slave);

        DynamicDataSource dataSource = new DynamicDataSource();
        dataSource.setTargetDataSources(targetDataSources);// 该方法是AbstractRoutingDataSource的方法
        dataSource.setDefaultTargetDataSource(master);
        return dataSource;
    }


}