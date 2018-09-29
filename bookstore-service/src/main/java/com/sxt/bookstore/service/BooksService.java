package com.sxt.bookstore.service;

import com.sxt.bookstore.entity.Books;

import java.sql.SQLException;
import java.util.List;

/**
 * @author Q2665_yubiums
 */
public interface BooksService extends BaseService<Books>{
    List<Books> getHotBooks(int typeId, int number) throws SQLException;
}
