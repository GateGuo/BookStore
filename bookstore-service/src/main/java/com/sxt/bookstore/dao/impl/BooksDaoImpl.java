package com.sxt.bookstore.dao.impl;

import com.sxt.bookstore.annotation.Dao;
import com.sxt.bookstore.dao.BooksDao;
import com.sxt.bookstore.entity.Books;
import com.sxt.bookstore.entity.Page;

import java.sql.SQLException;
import java.util.List;

/**
 * 图书表服务模块Dao接口实现
 * @author Q2665_yubiums
 */
@Dao("Books")
public class BooksDaoImpl extends BaseDaoImpl<Books> implements BooksDao  {
    @Override
    public boolean add(Books booksBean) throws SQLException {
        String sql = "INSERT INTO `BOOKS`(" +
                "B_NAME," +
                "B_PRICE," +
                "B_COUNT," +
                "B_TAG," +
                "B_DESCRIPTION," +
                "B_T_ID," +
                "B_UP_TIME," +
                "B_SALES_VOLUME," +
                "B_IMG_NAME" +
                ") VALUE(" +
                "?," +
                "?," +
                "?," +
                "?," +
                "?," +
                "?," +
                "?," +
                "?," +
                "?" +
                ")";

        Object[] params = {
                booksBean.getBName(),
                booksBean.getBPrice(),
                booksBean.getBCount(),
                booksBean.getBTag(),
                booksBean.getBDescription(),
                booksBean.getBTId(),
                booksBean.getBUpTime(),
                booksBean.getBSalesVolume(),
                booksBean.getBImgName()
        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean upd(Books booksBean) throws SQLException {
        String sql = "UPDATE `BOOKS` SET " +
                "B_NAME = ?," +
                "B_PRICE = ?," +
                "B_COUNT = ?," +
                "B_TAG = ?," +
                "B_DESCRIPTION = ?," +
                "B_T_ID = ?," +
                "B_UP_TIME = ?," +
                "B_SALES_VOLUME = ?," +
                "B_IMG_NAME = ? " +
                " WHERE B_ID = ?";

        Object[] params = {
                booksBean.getBName(),
                booksBean.getBPrice(),
                booksBean.getBCount(),
                booksBean.getBTag(),
                booksBean.getBDescription(),
                booksBean.getBTId(),
                booksBean.getBUpTime(),
                booksBean.getBSalesVolume(),
                booksBean.getBImgName(),
                booksBean.getBId()

        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean del(Integer bId) throws SQLException {
        String sql = "DELETE FROM `BOOKS` WHERE B_ID = ?";

        Object[] params = {bId};
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public List<Books> getAll() throws SQLException {
        String sql = "SELECT * FROM `BOOKS`";

        Object[] params = {};
        List<Books> list = dqlGetList(sql, params);

        return list;
    }

    @Override
    public Page<Books> getPage(int pageIndex, int pageSize) throws SQLException {
        Page<Books> booksPage = new Page<>(pageIndex, pageSize);

        String sql = "SELECT * FROM `BOOKS` LIMIT ?,?";

        Object[] params = {booksPage.getStartRow(), pageSize};
        List<Books> list = dqlGetList(sql, params);
        Long count = getCount();

        booksPage.setPageData(list);
        booksPage.setTotalCount(count);

        return booksPage;
    }

    @Override
    public Books getOneByPrimaryKey(Integer bId) throws SQLException {
        String sql = "SELECT * FROM `BOOKS` WHERE B_ID = ?";

        Object[] params = {bId};
        Books books = dqlGetSingle(sql, params);

        return books;
    }

    @Override
    public Long getCount() throws SQLException {
        String sql = "SELECT COUNT(1) FROM `BOOKS`";

        Long count = dqlGetCount(sql);

        return count;
    }

    @Override
    public List<Books> getHotBooks(int typeId, int number) throws SQLException {
        return null;
    }

    @Override
    public Long getCountByKeyWords(String keyword) throws SQLException {
        return null;
    }

    @Override
    public List<Books> getListByKeyWords(String keyword, int page, int size) throws SQLException {
        return null;
    }

    @Override
    public List<Books> getListByTypeId(int tid, int page, int size) throws SQLException {
        return null;
    }

    @Override
    public Long getCountByTypeId(int tid) throws SQLException {
        return null;
    }
}
