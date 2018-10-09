package com.sxt.bookstore.dao;

import com.sxt.bookstore.entity.ShoppingCart;

import java.sql.SQLException;

/**
 *
 * @author Q2665_yubiums
 */
public interface ShoppingCartDao  extends BaseDao<ShoppingCart>  {
    public ShoppingCart getOneByUid(Integer uid,Integer bid)throws SQLException;
}