package com.sxt.bookstore.dao.impl;

import com.sxt.bookstore.annotation.Dao;
import com.sxt.bookstore.dao.OrderGoodsDao;
import com.sxt.bookstore.entity.OrderGoods;
import com.sxt.bookstore.entity.Page;

import java.sql.SQLException;
import java.util.List;

/**
 * 订单商品表服务模块Dao接口实现
 * @author Q2665_yubiums
 */
@Dao("OrderGoods")
public class OrderGoodsDaoImpl extends BaseDaoImpl<OrderGoods> implements OrderGoodsDao  {
    @Override
    public boolean add(OrderGoods order_goodsBean) throws SQLException {
        String sql = "INSERT INTO `ORDER_GOODS`(" +
                "OG_OR_ID," +
                "OG_NUMBER," +
                "OG_PRICE" +
                ") VALUE(" +
                "?," +
                "?," +
                "?" +
                ")";

        Object[] params = {
                order_goodsBean.getOgOrId(),
                order_goodsBean.getOgNumber(),
                order_goodsBean.getOgPrice()
        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean upd(OrderGoods order_goodsBean) throws SQLException {
        String sql = "UPDATE `ORDER_GOODS` SET " +
                "OG_OR_ID = ?," +
                "OG_NUMBER = ?," +
                "OG_PRICE = ? " +
                " WHERE OG_ID = ?";

        Object[] params = {
                order_goodsBean.getOgOrId(),
                order_goodsBean.getOgNumber(),
                order_goodsBean.getOgPrice(),
                order_goodsBean.getOgId()

        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean del(Integer ogId) throws SQLException {
        String sql = "DELETE FROM `ORDER_GOODS` WHERE OG_ID = ?";

        Object[] params = {ogId};
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public List<OrderGoods> getAll() throws SQLException {
        String sql = "SELECT * FROM `ORDER_GOODS`";

        Object[] params = {};
        List<OrderGoods> list = dqlGetList(sql, params);

        return list;
    }

    @Override
    public Page<OrderGoods> getPage(int pageIndex, int pageSize) throws SQLException {
        Page<OrderGoods> order_goodsPage = new Page<>(pageIndex, pageSize);

        String sql = "SELECT * FROM `ORDER_GOODS` LIMIT ?,?";

        Object[] params = {order_goodsPage.getStartRow(), pageSize};
        List<OrderGoods> list = dqlGetList(sql, params);
        Long count = getCount();

        order_goodsPage.setPageData(list);
        order_goodsPage.setTotalCount(count);

        return order_goodsPage;
    }

    @Override
    public OrderGoods getOneByPrimaryKey(Integer ogId) throws SQLException {
        String sql = "SELECT * FROM `ORDER_GOODS` WHERE OG_ID = ?";

        Object[] params = {ogId};
        OrderGoods order_goods = dqlGetSingle(sql, params);

        return order_goods;
    }

    @Override
    public Long getCount() throws SQLException {
        String sql = "SELECT COUNT(1) FROM `ORDER_GOODS`";

        Long count = dqlGetCount(sql);

        return count;
    }
}
