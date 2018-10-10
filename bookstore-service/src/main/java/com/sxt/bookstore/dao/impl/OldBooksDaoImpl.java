package com.sxt.bookstore.dao.impl;

import com.sxt.bookstore.annotation.Dao;
import com.sxt.bookstore.dao.OldBooksDao;
import com.sxt.bookstore.entity.OldBooks;
import com.sxt.bookstore.entity.Page;

import java.sql.SQLException;
import java.util.List;

/**
 * 二手图书表服务模块Dao接口实现
 * @author Q2665_yubiums
 */
@Dao("OldBooks")
public class OldBooksDaoImpl extends BaseDaoImpl<OldBooks> implements OldBooksDao  {
    @Override
    public boolean add(OldBooks old_booksBean) throws SQLException {
        String sql = "INSERT INTO `OLD_BOOKS`(" +
                "OB_NAME," +
                "OB_PRICE," +
                "OB_COUNT," +
                "OB_TAG," +
                "OB_DESCRIPTION," +
                "OB_TYPE_ID," +
                "OB_SELLER_ID," +
                "OB_TIME," +
                "OB_SALES_VOLUME," +
                "OB_IMG_NAME" +
                ") VALUE(" +
                "?," +
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
                old_booksBean.getObName(),
                old_booksBean.getObPrice(),
                old_booksBean.getObCount(),
                old_booksBean.getObTag(),
                old_booksBean.getObDescription(),
                old_booksBean.getObTypeId(),
                old_booksBean.getObSellerId(),
                old_booksBean.getObTime(),
                old_booksBean.getObSalesVolume(),
                old_booksBean.getObImgName()
        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean upd(OldBooks old_booksBean) throws SQLException {
        String sql = "UPDATE `OLD_BOOKS` SET " +
                "OB_NAME = ?," +
                "OB_PRICE = ?," +
                "OB_COUNT = ?," +
                "OB_TAG = ?," +
                "OB_DESCRIPTION = ?," +
                "OB_TYPE_ID = ?," +
                "OB_SELLER_ID = ?," +
                "OB_TIME = ?," +
                "OB_SALES_VOLUME = ?," +
                "OB_IMG_NAME = ? " +
                " WHERE OB_ID = ?";

        Object[] params = {
                old_booksBean.getObName(),
                old_booksBean.getObPrice(),
                old_booksBean.getObCount(),
                old_booksBean.getObTag(),
                old_booksBean.getObDescription(),
                old_booksBean.getObTypeId(),
                old_booksBean.getObSellerId(),
                old_booksBean.getObTime(),
                old_booksBean.getObSalesVolume(),
                old_booksBean.getObImgName(),
                old_booksBean.getObId()

        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean del(Integer obId) throws SQLException {
        String sql = "DELETE FROM `OLD_BOOKS` WHERE OB_ID = ?";

        Object[] params = {obId};
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public List<OldBooks> getAll() throws SQLException {
        String sql = "SELECT * FROM `OLD_BOOKS`";

        Object[] params = {};
        List<OldBooks> list = dqlGetList(sql, params);

        return list;
    }

    @Override
    public Page<OldBooks> getPage(int pageIndex, int pageSize) throws SQLException {
        Page<OldBooks> old_booksPage = new Page<>(pageIndex, pageSize);

        String sql = "SELECT * FROM `OLD_BOOKS` LIMIT ?,?";

        Object[] params = {old_booksPage.getStartRow(), pageSize};
        List<OldBooks> list = dqlGetList(sql, params);
        Long count = getCount();

        old_booksPage.setPageData(list);
        old_booksPage.setTotalCount(count);

        return old_booksPage;
    }

    @Override
    public OldBooks getOneByPrimaryKey(Integer obId) throws SQLException {
        String sql = "SELECT * FROM `OLD_BOOKS` WHERE OB_ID = ?";

        Object[] params = {obId};
        OldBooks old_books = dqlGetSingle(sql, params);

        return old_books;
    }

    @Override
    public Long getCount() throws SQLException {
        String sql = "SELECT COUNT(1) FROM `OLD_BOOKS`";

        Long count = dqlGetCount(sql);

        return count;
    }

    @Override
    public List<OldBooks> getHotOldBooks(int typeId,int number) throws SQLException {
        String sql="SELECT * FROM `old_books` where ob_type_id=? ORDER BY ob_sales_volume LIMIT 0,?";
        Object[] params = {typeId,number};
        List<OldBooks> list = dqlGetList(sql, params);
        return list;
    }


}
