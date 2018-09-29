package com.sxt.bookstore.service;

import com.sxt.bookstore.dao.OldBooksDao;
import com.sxt.bookstore.dao.impl.OldBooksDaoImpl;
import com.sxt.bookstore.entity.OldBooks;

import java.sql.SQLException;
import java.util.List;

/**
 * @author Q2665_yubiums
 */
public interface OldBooksService extends BaseService<OldBooks>{
    List<OldBooks> getHotOldBooks(int typeId,int number) throws SQLException;
}
