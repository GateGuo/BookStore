package com.sxt.bookstore.service.impl;

import com.sxt.bookstore.entity.OldBooks;
import com.sxt.bookstore.service.OldBooksService;

import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
public class OldBooksServiceImpl extends BaseServiceImpl<OldBooks> implements OldBooksService {

    @Override
    public boolean upd(OldBooks oldBooksBean) throws SQLException {
        boolean flag = false;
        if (oldBooksBean != null &&
                oldBooksBean.getObId() != null &&
                oldBooksBean.getObId() > 0
                ) {
            flag = baseDao.upd(oldBooksBean);
        }
        return flag;
    }
}
