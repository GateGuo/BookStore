package com.sxt.bookstore.service.impl;

import com.sxt.bookstore.entity.Books;
import com.sxt.bookstore.service.BooksService;

import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
public class BooksServiceImpl extends BaseServiceImpl<Books> implements BooksService {

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
}
