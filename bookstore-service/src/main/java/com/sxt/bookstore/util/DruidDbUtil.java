package com.sxt.bookstore.util;

import com.alibaba.druid.filter.Filter;
import com.alibaba.druid.filter.logging.Log4j2Filter;
import com.alibaba.druid.pool.DruidDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

/**
 * @author Q2665_yubiums
 */
public class DruidDbUtil {
    public static DruidDataSource dataSource;

    static {
        dataSource = new DruidDataSource();
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        dataSource.setUsername("root");
        dataSource.setPassword("root");
        dataSource.setUrl("jdbc:mysql://127.0.0.1:3306/book_store?" +
                "useSSL=false&useUnicode=true&" +
                "characterEncoding=utf8&" +
                "serverTimezone=UTC");
        dataSource.setInitialSize(5);
        dataSource.setMinIdle(1);
        dataSource.setMaxActive(10);
        // 启用监控统计功能 dataSource.setFilters("stat");启用 for mysql
        dataSource.setPoolPreparedStatements(false);
        try {
            dataSource.setFilters("stat");

            Log4j2Filter log4j2Filter = new Log4j2Filter();
            log4j2Filter.setConnectionLogEnabled(false);
            log4j2Filter.setResultSetLogEnabled(false);
            log4j2Filter.setStatementLogEnabled(true);
            log4j2Filter.setStatementExecutableSqlLogEnable(true);
            ArrayList<Filter> filters = new ArrayList<>();
            filters.add(log4j2Filter);
            dataSource.setProxyFilters(filters);


            Properties properties = new Properties();
            properties.setProperty("druid.stat.slowSqlMillis", "3000");
            dataSource.setConnectProperties(properties);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    /**
     * 获取数据源
     *
     * @return
     */
    public static DataSource getDataSource() {
        return dataSource;
    }

    /**
     * 获取连接
     *
     * @return
     */
    public static Connection getConnection() {
        try {
            return dataSource.getConnection();
        } catch (SQLException e) {
            try {
                return dataSource.getConnection();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        }
        return null;
    }
}
