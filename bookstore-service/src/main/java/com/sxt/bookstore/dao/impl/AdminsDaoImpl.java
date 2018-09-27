package com.sxt.bookstore.dao.impl;

import com.sxt.bookstore.dao.AdminsDao;
import com.sxt.bookstore.entity.Admins;
import com.sxt.bookstore.entity.Page;

import java.sql.SQLException;
import java.util.List;

/**
 * 管理员表服务模块Dao接口实现
 * @author Q2665_yubiums
 */
public class AdminsDaoImpl extends BaseDaoImpl<Admins> implements AdminsDao  {
    @Override
    public boolean add(Admins adminsBean) throws SQLException {
        String sql = "INSERT INTO `ADMINS`(" +
                "A_USERNAME," +
                "A_PASSWORD," +
                "A_LEVEL" +
                ") VALUE(" +
                "?," +
                "?," +
                "?" +
                ")";

        Object[] params = {
                adminsBean.getAUsername(),
                adminsBean.getAPassword(),
                adminsBean.getALevel()
        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean upd(Admins adminsBean) throws SQLException {
        String sql = "UPDATE `ADMINS` SET " +
                "A_USERNAME = ?," +
                "A_PASSWORD = ?," +
                "A_LEVEL = ? " +
                " WHERE A_ID = ?";

        Object[] params = {
                adminsBean.getAUsername(),
                adminsBean.getAPassword(),
                adminsBean.getALevel(),
                adminsBean.getAId()

        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean del(Integer aId) throws SQLException {
        String sql = "DELETE FROM `ADMINS` WHERE A_ID = ?";

        Object[] params = {aId};
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public List<Admins> getAll() throws SQLException {
        String sql = "SELECT * FROM `ADMINS`";

        Object[] params = {};
        List<Admins> list = dqlGetList(sql, params);

        return list;
    }

    @Override
    public Page<Admins> getPage(int pageIndex, int pageSize) throws SQLException {
        Page<Admins> adminsPage = new Page<>(pageIndex, pageSize);

        String sql = "SELECT * FROM `ADMINS` LIMIT ?,?";

        Object[] params = {adminsPage.getStartRow(), pageSize};
        List<Admins> list = dqlGetList(sql, params);
        Long count = getCount();

        adminsPage.setPageData(list);
        adminsPage.setTotalCount(count);

        return adminsPage;
    }

    @Override
    public Admins getOneByPrimaryKey(Integer aId) throws SQLException {
        String sql = "SELECT * FROM `ADMINS` WHERE A_ID = ?";

        Object[] params = {aId};
        Admins admins = dqlGetSingle(sql, params);

        return admins;
    }

    @Override
    public Long getCount() throws SQLException {
        String sql = "SELECT COUNT(1) FROM `ADMINS`";

        Long count = dqlGetCount(sql);

        return count;
    }
}
