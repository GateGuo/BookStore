package com.sxt.bookstore.service;

import com.sxt.bookstore.entity.Orders;
import com.sxt.bookstore.entity.Page;

import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
public interface OrdersService extends BaseService<Orders>{
    /**
     * 发货
     * @param orId
     * @param orCourierCompany
     * @param orTrackingNumber
     * @return
     */
    boolean ship(Integer orId, String orCourierCompany, String orTrackingNumber) throws SQLException;
}
