package com.sxt.bookstore.service.impl;

import com.sxt.bookstore.entity.Users;
import com.sxt.bookstore.service.UsersService;

import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
public class UsersServiceImpl extends BaseServiceImpl<Users> implements UsersService {

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
}
