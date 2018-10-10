package com.sxt.bookstore.service.impl;

import com.sxt.bookstore.dao.UsersDao;
import com.sxt.bookstore.entity.Users;
import com.sxt.bookstore.factory.DaoFactory;
import com.sxt.bookstore.service.UsersService;

import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
public class UsersServiceImpl extends BaseServiceImpl<Users> implements UsersService {
    UsersDao dao=(UsersDao)DaoFactory.getInstance().getDao("Users");
    @Override
    public boolean upd(Users usersBean) throws SQLException {
        boolean flag = false;
        if (usersBean != null &&
                usersBean.getUId() != null &&
                usersBean.getUId() > 0
                ) {
            flag = baseDao.upd(usersBean);
        }
        return flag;
    }

    @Override
    public Users login(String username, String password) throws SQLException {
        return dao.login(username,password);
    }
}
