package com.sxt.bookstore.dao;

import com.sxt.bookstore.entity.OrderGoods;

import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Q2665_yubiums
 */
public interface OrderGoodsDao  extends BaseDao<OrderGoods>  {

    List<OrderGoods> getbyforeignid(Integer foreignid) throws SQLException;
}