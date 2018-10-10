package com.sxt.bookstore.dao;

import com.sxt.bookstore.entity.OldBooks;

import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Q2665_yubiums
 */
public interface OldBooksDao  extends BaseDao<OldBooks>  {

    List<OldBooks> getHotOldBooks(int typeId,int number) throws SQLException;
}