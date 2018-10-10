package com.sxt.bookstore.dao;

import com.sxt.bookstore.entity.Admins;

import java.sql.SQLException;

/**
 *
 * @author Q2665_yubiums
 */
public interface AdminsDao  extends BaseDao<Admins>  {
    /**
     * 登录
     * @param admins
     * @return
     */
    Admins login(Admins admins) throws SQLException;
}