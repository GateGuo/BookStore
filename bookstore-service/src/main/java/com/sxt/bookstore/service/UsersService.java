package com.sxt.bookstore.service;

import com.sxt.bookstore.entity.Users;

import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
public interface UsersService extends BaseService<Users>{
    Users login(String username,String password)throws SQLException;
}
