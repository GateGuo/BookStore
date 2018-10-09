package com.sxt.bookstore.service.impl;


import com.sxt.bookstore.dao.ShoppingCartDao;
import com.sxt.bookstore.entity.ShoppingCart;
import com.sxt.bookstore.factory.DaoFactory;
import com.sxt.bookstore.service.ShoppingCartService;

import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
public class ShoppingCartServiceImpl extends BaseServiceImpl<ShoppingCart> implements ShoppingCartService {
    ShoppingCartDao dao= (ShoppingCartDao) DaoFactory.getInstance().getDao("ShoppingCart");

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

    @Override
    public ShoppingCart getOneByUId(int uid,int bid) throws SQLException {
        return dao.getOneByUid(uid,bid);
    }
}
