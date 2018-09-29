package com.sxt.bookstore.service.impl;

import com.sxt.bookstore.dao.BooksDao;
import com.sxt.bookstore.entity.Books;
import com.sxt.bookstore.factory.DaoFactory;
import com.sxt.bookstore.service.BooksService;

import java.sql.SQLException;
import java.util.List;

/**
 * @author Q2665_yubiums
 */
public class BooksServiceImpl extends BaseServiceImpl<Books> implements BooksService {
    BooksDao dao = (BooksDao) DaoFactory.getInstance().getDao("Books");

    @Override
    public boolean upd(Books booksBean) throws SQLException {
        boolean flag = false;
        if (booksBean != null &&
                booksBean.getBId() != null &&
                booksBean.getBId() > 0
                ) {
            flag = baseDao.upd(booksBean);
        }
        return flag;
    }

    @Override
    public List<Books> getHotBooks(int typeId, int number) throws SQLException {
        return dao.getHotBooks(typeId,number);
    }
}
