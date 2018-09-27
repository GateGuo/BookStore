package com.sxt.bookstore.dao.impl;

import com.sxt.bookstore.annotation.Dao;
import com.sxt.bookstore.dao.UsersDao;
import com.sxt.bookstore.entity.Users;
import com.sxt.bookstore.entity.Page;

import java.sql.SQLException;
import java.util.List;

/**
 * 用户表服务模块Dao接口实现
 * @author Q2665_yubiums
 */
@Dao("Users")
public class UsersDaoImpl extends BaseDaoImpl<Users> implements UsersDao  {
    @Override
    public boolean add(Users usersBean) throws SQLException {
        String sql = "INSERT INTO `USERS`(" +
                "U_USERNAME," +
                "U_PASSWORD," +
                "U_VIP_LEVEL," +
                "U_ID_CARD," +
                "U_NAME," +
                "U_ADDRESS," +
                "U_PHONENUMBER" +
                ") VALUE(" +
                "?," +
                "?," +
                "?," +
                "?," +
                "?," +
                "?," +
                "?" +
                ")";

        Object[] params = {
                usersBean.getUUsername(),
                usersBean.getUPassword(),
                usersBean.getUVipLevel(),
                usersBean.getUIdCard(),
                usersBean.getUName(),
                usersBean.getUAddress(),
                usersBean.getUPhonenumber()
        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean upd(Users usersBean) throws SQLException {
        String sql = "UPDATE `USERS` SET " +
                "U_USERNAME = ?," +
                "U_PASSWORD = ?," +
                "U_VIP_LEVEL = ?," +
                "U_ID_CARD = ?," +
                "U_NAME = ?," +
                "U_ADDRESS = ?," +
                "U_PHONENUMBER = ? " +
                " WHERE U_ID = ?";

        Object[] params = {
                usersBean.getUUsername(),
                usersBean.getUPassword(),
                usersBean.getUVipLevel(),
                usersBean.getUIdCard(),
                usersBean.getUName(),
                usersBean.getUAddress(),
                usersBean.getUPhonenumber(),
                usersBean.getUId()

        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean del(Integer uId) throws SQLException {
        String sql = "DELETE FROM `USERS` WHERE U_ID = ?";

        Object[] params = {uId};
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public List<Users> getAll() throws SQLException {
        String sql = "SELECT * FROM `USERS`";

        Object[] params = {};
        List<Users> list = dqlGetList(sql, params);

        return list;
    }

    @Override
    public Page<Users> getPage(int pageIndex, int pageSize) throws SQLException {
        Page<Users> usersPage = new Page<>(pageIndex, pageSize);

        String sql = "SELECT * FROM `USERS` LIMIT ?,?";

        Object[] params = {usersPage.getStartRow(), pageSize};
        List<Users> list = dqlGetList(sql, params);
        Long count = getCount();

        usersPage.setPageData(list);
        usersPage.setTotalCount(count);

        return usersPage;
    }

    @Override
    public Users getOneByPrimaryKey(Integer uId) throws SQLException {
        String sql = "SELECT * FROM `USERS` WHERE U_ID = ?";

        Object[] params = {uId};
        Users users = dqlGetSingle(sql, params);

        return users;
    }

    @Override
    public Long getCount() throws SQLException {
        String sql = "SELECT COUNT(1) FROM `USERS`";

        Long count = dqlGetCount(sql);

        return count;
    }
}
