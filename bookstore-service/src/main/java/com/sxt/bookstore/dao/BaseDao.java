package com.sxt.bookstore.dao;



import com.sxt.bookstore.entity.Page;

import java.sql.SQLException;
import java.util.List;

/**
 * @author Q2665_yubiums
 */
public interface BaseDao<T> {
    /**
     * 增加数据表元素
     * @param bean
     * @return
     * @exception SQLException
     */
    boolean add(T bean) throws SQLException;

    /**
     * 更新数据表元素
     * @param bean
     * @return
     * @exception SQLException
     */
    boolean upd(T bean) throws SQLException;

    /**
     * 删除数据表元素
     * @param PrimaryKey
     * @return
     * @exception SQLException
     */
    boolean del(Integer PrimaryKey) throws SQLException;

    /**
     * 获取单张表所有数据表元素
     * @return
     * @exception SQLException
     */
    List<T> getAll() throws SQLException;

    /**
     * 获取单张表部分数据表元素
     * @param pageIndex 开始序
     * @param pageSize 条数
     * @return
     * @exception SQLException
     */
    Page<T> getPage(int pageIndex, int pageSize) throws SQLException;

    /**
     * 通过主键获取单张表一条数据表元素
     * @param PrimaryKey
     * @return
     * @exception SQLException
     */
    T getOneByPrimaryKey(Integer PrimaryKey) throws SQLException;

    /**
     * 获取单张数据表元素个数
     * @return
     * @exception SQLException
     */
    Long getCount() throws SQLException;

}
