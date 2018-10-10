package com.sxt.bookstore.dao;

import com.sxt.bookstore.entity.Type;

import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Q2665_yubiums
 */
public interface TypeDao  extends BaseDao<Type>  {
    Type getTypeByName(String name)throws SQLException;
    List getBigTypes() throws SQLException;
}