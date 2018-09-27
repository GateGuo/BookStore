package com.sxt.bookstore.service.impl;

import com.sxt.bookstore.entity.Type;
import com.sxt.bookstore.service.TypeService;

import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
public class TypeServiceImpl extends BaseServiceImpl<Type> implements TypeService {

    @Override
    public boolean upd(Type typeBean) throws SQLException {
        boolean flag = false;
        if (typeBean != null &&
                typeBean.getTId() != null &&
                typeBean.getTId() > 0
                ) {
            flag = baseDao.upd(typeBean);
        }
        return flag;
    }
}
