package com.sxt.bookstore.service.impl;

import com.sxt.bookstore.dao.TypeDao;
import com.sxt.bookstore.entity.Type;
import com.sxt.bookstore.factory.DaoFactory;
import com.sxt.bookstore.service.TypeService;

import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
public class TypeServiceImpl extends BaseServiceImpl<Type> implements TypeService {
    TypeDao dao= (TypeDao) DaoFactory.getInstance().getDao("Type");
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

    @Override
    public Type getTypeByName(String name) throws SQLException {
        return dao.getTypeByName(name);
    }
}
