package com.sxt.bookstore.service.impl;

import com.sxt.bookstore.dao.OldBooksDao;
import com.sxt.bookstore.dao.impl.OldBooksDaoImpl;
import com.sxt.bookstore.entity.OldBooks;
import com.sxt.bookstore.factory.DaoFactory;
import com.sxt.bookstore.service.OldBooksService;

import java.sql.SQLException;
import java.util.List;

/**
 * @author Q2665_yubiums
 */
public class OldBooksServiceImpl extends BaseServiceImpl<OldBooks> implements OldBooksService {
    OldBooksDao dao = (OldBooksDao) DaoFactory.getInstance().getDao("OldBooks");
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

    @Override
    public List<OldBooks> getHotOldBooks(int typeId,int number) throws SQLException {
        return dao.getHotOldBooks(typeId,number);
    }
}
