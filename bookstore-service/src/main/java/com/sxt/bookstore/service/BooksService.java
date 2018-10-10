package com.sxt.bookstore.service;

import com.sxt.bookstore.entity.Books;
import com.sxt.bookstore.entity.Page;
import com.sxt.bookstore.entity.PageBean;

import java.sql.SQLException;
import java.util.List;

/**
 * @author Q2665_yubiums
 */
public interface BooksService extends BaseService<Books>{
    List<Books> getHotBooks(int typeId, int number) throws SQLException;

    PageBean getListByKeyWords(String keyword, String current)throws SQLException;

    PageBean getPageByTypeId(int tid, String current)throws SQLException;
}
