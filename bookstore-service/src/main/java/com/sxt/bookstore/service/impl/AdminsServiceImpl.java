package com.sxt.bookstore.service.impl;

import com.sxt.bookstore.dao.AdminsDao;
import com.sxt.bookstore.entity.Admins;
import com.sxt.bookstore.factory.DaoFactory;
import com.sxt.bookstore.service.AdminsService;

import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
public class AdminsServiceImpl extends BaseServiceImpl<Admins> implements AdminsService {

    AdminsDao adminsDao = (AdminsDao) DaoFactory.getInstance().getDao(Admins.class.getSimpleName());

    @Override
    public boolean upd(Admins adminsBean) throws SQLException {
        boolean flag = false;
        if (adminsBean != null &&
                adminsBean.getAId() != null &&
                adminsBean.getAId() >= 0
                ) {
            flag = baseDao.upd(adminsBean);
        }
        return flag;
    }

    @Override
    public Admins login(Admins admins) throws SQLException {
        Admins admins1 = null;
        if (admins.getAUsername() != null && admins.getAPassword() != null) {
            admins1 = adminsDao.login(admins);
        }
        return admins1;
    }
}
