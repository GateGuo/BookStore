package com.sxt.bookstore.service;

import com.sxt.bookstore.entity.Type;

import java.sql.SQLException;
import java.util.List;

/**
 * @author Q2665_yubiums
 */
public interface TypeService extends BaseService<Type>{
    Type getTypeByName(String name) throws SQLException;
    List getBigTypes()throws SQLException;
}
