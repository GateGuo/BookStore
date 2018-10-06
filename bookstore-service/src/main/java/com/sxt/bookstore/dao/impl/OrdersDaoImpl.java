package com.sxt.bookstore.dao.impl;

import com.sxt.bookstore.annotation.Dao;
import com.sxt.bookstore.dao.OrdersDao;
import com.sxt.bookstore.entity.Orders;
import com.sxt.bookstore.entity.Page;

import java.sql.SQLException;
import java.util.List;

/**
 * 订单表服务模块Dao接口实现
 * @author Q2665_yubiums
 */
@Dao("Orders")
public class OrdersDaoImpl extends BaseDaoImpl<Orders> implements OrdersDao  {
    @Override
    public boolean add(Orders ordersBean) throws SQLException {
        String sql = "INSERT INTO `ORDERS`(" +
                "OR_NUMBER," +
                "OR_U_ID," +
                "OR_TOTAL_PRICE," +
                "OR_PAY_PRICE," +
                "OR_CREATE_TIME," +
                "OR_FINISH_TIME," +
                "OR_STATUS" +
                ") VALUE(" +
                "?," +
                "?," +
                "?," +
                "?," +
                "?," +
                "?," +
                "?" +
                ")";

        Object[] params = {
                ordersBean.getOrNumber(),
                ordersBean.getOrUId(),
                ordersBean.getOrTotalPrice(),
                ordersBean.getOrPayPrice(),
                ordersBean.getOrCreateTime(),
                ordersBean.getOrFinishTime(),
                ordersBean.getOrStatus()
        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean upd(Orders ordersBean) throws SQLException {
        String sql = "UPDATE `ORDERS` SET " +
                "OR_NUMBER = ?," +
                "OR_U_ID = ?," +
                "OR_TOTAL_PRICE = ?," +
                "OR_PAY_PRICE = ?," +
                "OR_CREATE_TIME = ?," +
                "OR_FINISH_TIME = ?," +
                "OR_STATUS = ? " +
                " WHERE OR_ID = ?";

        Object[] params = {
                ordersBean.getOrNumber(),
                ordersBean.getOrUId(),
                ordersBean.getOrTotalPrice(),
                ordersBean.getOrPayPrice(),
                ordersBean.getOrCreateTime(),
                ordersBean.getOrFinishTime(),
                ordersBean.getOrStatus(),
                ordersBean.getOrId()

        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean del(Integer orId) throws SQLException {
        String sql = "DELETE FROM `ORDERS` WHERE OR_ID = ?";

        Object[] params = {orId};
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public List<Orders> getAll() throws SQLException {
        String sql = "SELECT * FROM `ORDERS`";

        Object[] params = {};
        List<Orders> list = dqlGetList(sql, params);

        return list;
    }

    @Override
    public Page<Orders> getPage(int pageIndex, int pageSize) throws SQLException {
        Page<Orders> ordersPage = new Page<>(pageIndex, pageSize);

        String sql = "SELECT * FROM `ORDERS` LIMIT ?,?";

        Object[] params = {ordersPage.getStartRow(), pageSize};
        List<Orders> list = dqlGetList(sql, params);
        Long count = getCount();

        ordersPage.setPageData(list);
        ordersPage.setTotalCount(count);

        return ordersPage;
    }

    @Override
    public Orders getOneByPrimaryKey(Integer orId) throws SQLException {
        String sql = "SELECT * FROM `ORDERS` WHERE OR_ID = ?";

        Object[] params = {orId};
        Orders orders = dqlGetSingle(sql, params);

        return orders;
    }

    @Override
    public Long getCount() throws SQLException {
        String sql = "SELECT COUNT(1) FROM `ORDERS`";

        Long count = dqlGetCount(sql);

        return count;
    }

    @Override
    public boolean ship(Integer orId, String orCourierCompany, String orTrackingNumber) throws SQLException {
        String sql = "UPDATE `ORDERS` SET " +
                "OR_COURIER_COMPANY= ?," +
                "OR_STATUS= '2'," +
                "OR_TRACKING_NUMBER= ?" +
                " WHERE OR_ID = ?";

        Object[] params = {
                orCourierCompany,orTrackingNumber,orId
        };
        boolean flag = dml(sql, params);

        return flag;
    }
}
