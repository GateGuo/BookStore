package com.sxt.bookstore.service;

import com.sxt.bookstore.entity.Page;

import java.sql.SQLException;
import java.util.List;

public interface BaseService<T> {
    /**
     * 增加数据表元素
     * @param bean bean对象
     * @return
     */
    boolean add(T bean) throws SQLException;

    /**
     * 更新数据表元素
     * @param bean bean对象
     * @return
     */
    boolean upd(T bean) throws SQLException;

    /**
     * 删除数据表元素
     * @param PrimaryKey 主键
     * @return
     */
    boolean del(Integer PrimaryKey) throws SQLException;

    /**
     * 获取单张表所有数据表元素
     * @return
     */
    List<T> getAll() throws SQLException;

    /**
     * 获取单张表部分数据表元素
     * @param pageIndex 开始序
     * @param pageSize 条数
     * @return
     */
    Page<T> getPage(int pageIndex, int pageSize) throws SQLException;

    /**
     * 通过主键获取单张表一条数据表元素
     * @param PrimaryKey 主键
     * @return
     */
    T getOneByPrimaryKey(Integer PrimaryKey) throws SQLException;

    /**
     * 获取单张数据表元素个数
     * @return
     * @throws SQLException sql
     */
    Long getCount() throws SQLException;

    /**
     * 通过书籍id获取订单信息
     * @param foreignid 书籍id
     * @return
     * @throws SQLException sql
     */
    List<T> getbyforeignid(Integer foreignid) throws SQLException;
}
