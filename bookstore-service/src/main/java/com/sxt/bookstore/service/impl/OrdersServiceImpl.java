package com.sxt.bookstore.service.impl;

import com.sxt.bookstore.entity.Orders;
import com.sxt.bookstore.service.OrdersService;

import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
public class OrdersServiceImpl extends BaseServiceImpl<Orders> implements OrdersService {

    @Override
    public boolean upd(Orders ordersBean) throws SQLException {
        boolean flag = false;
        if (ordersBean != null &&
                ordersBean.getOrId() != null &&
                ordersBean.getOrId() > 0
                ) {
            flag = baseDao.upd(ordersBean);
        }
        return flag;
    }
}
