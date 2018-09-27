package com.sxt.bookstore.service.impl;

import com.sxt.bookstore.entity.OrderGoods;
import com.sxt.bookstore.service.OrderGoodsService;

import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
public class OrderGoodsServiceImpl extends BaseServiceImpl<OrderGoods> implements OrderGoodsService {

    @Override
    public boolean upd(OrderGoods orderGoodsBean) throws SQLException {
        boolean flag = false;
        if (orderGoodsBean != null &&
                orderGoodsBean.getOgId() != null &&
                orderGoodsBean.getOgId() > 0
                ) {
            flag = baseDao.upd(orderGoodsBean);
        }
        return flag;
    }
}
