package com.sxt.bookstore.service.impl;

import com.sxt.bookstore.dao.OrdersDao;
import com.sxt.bookstore.entity.Orders;
import com.sxt.bookstore.factory.DaoFactory;
import com.sxt.bookstore.service.OrdersService;

import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
public class OrdersServiceImpl extends BaseServiceImpl<Orders> implements OrdersService {

    OrdersDao ordersDao = (OrdersDao) DaoFactory.getInstance().getDao(Orders.class.getSimpleName());

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

    @Override
    public boolean ship(Integer orId, String orCourierCompany, String orTrackingNumber) throws SQLException {
        boolean flag = false;
        if (orId != null && orId > 0) {
            if (orCourierCompany != null && !"".equals(orCourierCompany)) {
                if (orTrackingNumber != null && !"".equals(orTrackingNumber)) {
                    flag = ordersDao.ship(orId, orCourierCompany, orTrackingNumber);
                }
            }
        }
        return flag;
    }
}
