package com.sxt.bookstore.dao.impl;

import com.sxt.bookstore.annotation.Dao;
import com.sxt.bookstore.dao.BooksDao;
import com.sxt.bookstore.entity.Books;
import com.sxt.bookstore.entity.Page;
import org.apache.commons.dbutils.handlers.ScalarHandler;

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
                "B_AUTHOR," +
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
                "NOW()," +
                "0," +
                "?" +
                ")";

        Object[] params = {
                booksBean.getBName(),
                booksBean.getBAuthor(),
                booksBean.getBPrice(),
                booksBean.getBCount(),
                booksBean.getBTag(),
                booksBean.getBDescription(),
                booksBean.getBTId(),
                booksBean.getBImgName()
        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean upd(Books booksBean) throws SQLException {
        String sql = "UPDATE `BOOKS` SET " +
                "B_NAME = ?," +
                "B_AUTHOR = ?," +
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
                booksBean.getBAuthor(),
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
    public List<Books> getHotBooks(int typeId,int number) throws SQLException {
        String sql="SELECT * FROM `books` where b_t_id=? ORDER BY b_sales_volume LIMIT 0,?";
        Object[] params = {typeId,number};
        List<Books> list = dqlGetList(sql, params);
        return list;
    }

    @Override
    public Long getCountByKeyWords(String keyword) throws SQLException {
        String sql = "SELECT COUNT(1) FROM `BOOKS` where CONCAT(IFNULL(`b_name`,''),IFNULL(`b_tag`,''),IFNULL(`b_author`,'')) like '%' ? '%'";
        Object[] params = {keyword};
        Long count = queryRunner.query(sql,params,
                new ScalarHandler<>());
        return count;
    }

    @Override
    public List<Books> getListByKeyWords(String keyword,int page,int size) throws SQLException {
        String sql="SELECT * FROM `books` where CONCAT(IFNULL(`b_name`,''),IFNULL(`b_tag`,''),IFNULL(`b_author`,'')) like '%' ? '%' limit ?,?";
        Object[] params = {keyword,(page-1)*size,size};
        List<Books> list = dqlGetList(sql, params);
        return list;
    }

    @Override
    public List<Books> getListByTypeId(int tid,int page,int size) throws SQLException {
        String sql="SELECT * FROM `books` where b_t_id= ? limit ?,?";
        Object[] params={tid,page,size};
        List<Books> list=dqlGetList(sql,params);
        return list;
    }

    @Override
    public Long getCountByTypeId(int tid) throws SQLException {
        String sql = "SELECT COUNT(1) FROM `BOOKS`  where b_t_id= ?";
        Object[] params = {tid};
        Long count = queryRunner.query(sql,params,
                new ScalarHandler<>());
        return count;
    }
}
