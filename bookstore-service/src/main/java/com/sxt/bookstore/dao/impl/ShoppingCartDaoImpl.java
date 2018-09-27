package com.sxt.bookstore.dao.impl;

import com.sxt.bookstore.annotation.Dao;
import com.sxt.bookstore.dao.ShoppingCartDao;
import com.sxt.bookstore.entity.ShoppingCart;
import com.sxt.bookstore.entity.Page;

import java.sql.SQLException;
import java.util.List;

/**
 * 购物车表服务模块Dao接口实现
 * @author Q2665_yubiums
 */
@Dao("ShoppingCart")
public class ShoppingCartDaoImpl extends BaseDaoImpl<ShoppingCart> implements ShoppingCartDao  {
    @Override
    public boolean add(ShoppingCart shopping_cartBean) throws SQLException {
        String sql = "INSERT INTO `SHOPPING_CART`(" +
                "SC_U_ID," +
                "SC_B_ID," +
                "SC_NUMBER," +
                "SC_CREATE_TIME," +
                "SC_UPDATETIME_TIME" +
                ") VALUE(" +
                "?," +
                "?," +
                "?," +
                "?," +
                "?" +
                ")";

        Object[] params = {
                shopping_cartBean.getScUId(),
                shopping_cartBean.getScBId(),
                shopping_cartBean.getScNumber(),
                shopping_cartBean.getScCreateTime(),
                shopping_cartBean.getScUpdatetimeTime()
        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean upd(ShoppingCart shopping_cartBean) throws SQLException {
        String sql = "UPDATE `SHOPPING_CART` SET " +
                "SC_U_ID = ?," +
                "SC_B_ID = ?," +
                "SC_NUMBER = ?," +
                "SC_CREATE_TIME = ?," +
                "SC_UPDATETIME_TIME = ? " +
                " WHERE SC_ID = ?";

        Object[] params = {
                shopping_cartBean.getScUId(),
                shopping_cartBean.getScBId(),
                shopping_cartBean.getScNumber(),
                shopping_cartBean.getScCreateTime(),
                shopping_cartBean.getScUpdatetimeTime(),
                shopping_cartBean.getScId()

        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean del(Integer scId) throws SQLException {
        String sql = "DELETE FROM `SHOPPING_CART` WHERE SC_ID = ?";

        Object[] params = {scId};
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public List<ShoppingCart> getAll() throws SQLException {
        String sql = "SELECT * FROM `SHOPPING_CART`";

        Object[] params = {};
        List<ShoppingCart> list = dqlGetList(sql, params);

        return list;
    }

    @Override
    public Page<ShoppingCart> getPage(int pageIndex, int pageSize) throws SQLException {
        Page<ShoppingCart> shopping_cartPage = new Page<>(pageIndex, pageSize);

        String sql = "SELECT * FROM `SHOPPING_CART` LIMIT ?,?";

        Object[] params = {shopping_cartPage.getStartRow(), pageSize};
        List<ShoppingCart> list = dqlGetList(sql, params);
        Long count = getCount();

        shopping_cartPage.setPageData(list);
        shopping_cartPage.setTotalCount(count);

        return shopping_cartPage;
    }

    @Override
    public ShoppingCart getOneByPrimaryKey(Integer scId) throws SQLException {
        String sql = "SELECT * FROM `SHOPPING_CART` WHERE SC_ID = ?";

        Object[] params = {scId};
        ShoppingCart shopping_cart = dqlGetSingle(sql, params);

        return shopping_cart;
    }

    @Override
    public Long getCount() throws SQLException {
        String sql = "SELECT COUNT(1) FROM `SHOPPING_CART`";

        Long count = dqlGetCount(sql);

        return count;
    }
}
