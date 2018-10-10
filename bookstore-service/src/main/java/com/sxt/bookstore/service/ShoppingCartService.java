package com.sxt.bookstore.service;

import com.sxt.bookstore.entity.ShoppingCart;

import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
public interface ShoppingCartService extends BaseService<ShoppingCart>{
    public ShoppingCart getOneByUId(int uid,int bid)throws SQLException;
}
