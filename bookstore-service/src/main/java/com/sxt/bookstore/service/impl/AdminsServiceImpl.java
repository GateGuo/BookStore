package com.sxt.bookstore.service.impl;

import com.sxt.bookstore.entity.Admins;
import com.sxt.bookstore.service.AdminsService;

import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
public class AdminsServiceImpl extends BaseServiceImpl<Admins> implements AdminsService {

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
}
