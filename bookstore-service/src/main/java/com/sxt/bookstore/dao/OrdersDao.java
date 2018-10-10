package com.sxt.bookstore.dao;

import com.sxt.bookstore.entity.Orders;

import java.sql.SQLException;

/**
 *
 * @author Q2665_yubiums
 */
public interface OrdersDao  extends BaseDao<Orders>  {
    /**
     * 发货
     * @param orId
     * @param orCourierCompany
     * @param orTrackingNumber
     * @return
     */
    boolean ship(Integer orId, String orCourierCompany, String orTrackingNumber) throws SQLException;
}