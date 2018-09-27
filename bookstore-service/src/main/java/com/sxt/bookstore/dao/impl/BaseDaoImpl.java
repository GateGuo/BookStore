package com.sxt.bookstore.dao.impl;

import com.sxt.bookstore.dao.BaseDao;
import com.sxt.bookstore.util.DruidDbUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.lang.reflect.ParameterizedType;
import java.sql.SQLException;
import java.util.List;

/**
 * @author Q2665_yubiums
 */
public abstract class BaseDaoImpl<T> implements BaseDao<T> {
    /**
     * 使用Druid连接池
     */
    QueryRunner queryRunner = new QueryRunner(DruidDbUtil.getDataSource());
    /**
     * 获取父类泛型超类泛型class对象
     */
    Class<T> tClass = (Class<T>) ((ParameterizedType) this.getClass().getGenericSuperclass()).getActualTypeArguments()[0];

    /**
     * 通过查询获取一个数据元素列表
     * @param sql sql语句
     * @param params 参数
     * @return
     * @throws SQLException
     */
    protected List<T> dqlGetList(String sql, Object[] params) throws SQLException {

        List<T> list;

        if (params.length == 0) {
            list = queryRunner.query(sql,
                    new BeanListHandler<>(tClass));
        } else {
            list = queryRunner.query(sql,
                    new BeanListHandler<>(tClass),
                    params);
        }

        return list;
    }

    /**
     * 通过查询获取一个数据元素
     * @param sql sql语句
     * @param params 参数
     * @return
     * @throws SQLException
     */
    protected T dqlGetSingle(String sql, Object[] params) throws SQLException {

        T t = queryRunner.query(sql,
                new BeanHandler<>(tClass),
                params);

        return t;
    }

    /**
     * 通过查询获取数据数目(公有逻辑)
     * @param sql sql语句
     * @return
     * @throws SQLException
     */
    protected Long dqlGetCount(String sql) throws SQLException {

        Long l = queryRunner.query(sql,
                new ScalarHandler<>());

        return l;
    }

    /**
     * 更新一个数据元素
     * @param sql sql语句
     * @param params 参数
     * @return
     * @throws SQLException
     */
    protected boolean dml(String sql, Object[] params) throws SQLException {
        int n = queryRunner.update(sql, params);

        return n == 0 ? false : true;
    }
}
