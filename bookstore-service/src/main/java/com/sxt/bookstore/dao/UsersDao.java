package com.sxt.bookstore.dao;

import com.sxt.bookstore.entity.Users;

import java.sql.SQLException;

/**
 *
 * @author Q2665_yubiums
 */
public interface UsersDao  extends BaseDao<Users>  {
    Users login(String username,String password)throws SQLException;
}