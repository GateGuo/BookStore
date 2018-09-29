package com.sxt.bookstore.dao;

import com.sxt.bookstore.entity.Type;

import java.sql.SQLException;

/**
 *
 * @author Q2665_yubiums
 */
public interface TypeDao  extends BaseDao<Type>  {
    Type getTypeByName(String name)throws SQLException;
}