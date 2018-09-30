package com.sxt.bookstore.service;

import com.sxt.bookstore.entity.Admins;

import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
public interface AdminsService extends BaseService<Admins>{
    /**
     * Login
     * @param admins
     * @return
     */
    Admins login(Admins admins) throws SQLException;
}
