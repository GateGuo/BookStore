package com.sxt.bookstore.dao;

import com.sxt.bookstore.entity.Books;

import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Q2665_yubiums
 */
public interface BooksDao  extends BaseDao<Books>  {
    List<Books> getHotBooks(int typeId, int number) throws SQLException;
    Long getCountByKeyWords(String keyword)throws SQLException;
    List<Books> getListByKeyWords(String keyword,int page,int size)throws SQLException;
    List<Books> getListByTypeId(int tid,int page,int size)throws SQLException;
    Long getCountByTypeId(int tid)throws SQLException;
}