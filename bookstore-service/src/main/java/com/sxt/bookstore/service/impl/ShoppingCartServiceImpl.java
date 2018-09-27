package com.sxt.bookstore.service.impl;

import com.sxt.bookstore.entity.ShoppingCart;
import com.sxt.bookstore.service.ShoppingCartService;

import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
public class ShoppingCartServiceImpl extends BaseServiceImpl<ShoppingCart> implements ShoppingCartService {

    @Override
    public boolean upd(ShoppingCart shoppingCartBean) throws SQLException {
        boolean flag = false;
        if (shoppingCartBean != null &&
                shoppingCartBean.getScId() != null &&
                shoppingCartBean.getScId() > 0
                ) {
            flag = baseDao.upd(shoppingCartBean);
        }
        return flag;
    }
}
