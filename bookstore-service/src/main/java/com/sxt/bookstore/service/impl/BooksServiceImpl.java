package com.sxt.bookstore.service.impl;

import com.sxt.bookstore.dao.BooksDao;
import com.sxt.bookstore.entity.Books;
import com.sxt.bookstore.entity.Page;
import com.sxt.bookstore.entity.PageBean;
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

    @Override
    public PageBean getListByKeyWords(String keyword, String current) throws SQLException {
        PageBean pb=new PageBean();
        int currentPage=0;
        if(current==null){
            currentPage=1;
        }else {
            currentPage=Integer.parseInt(current);
        }
        try {
            Long count=dao.getCountByKeyWords(keyword);
            pb.setSize(20);
            pb.setTotalCount(count);
            pb.setCurrentPage(currentPage);
            pb.setData(dao.getListByKeyWords(keyword,currentPage,pb.getSize()));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pb;
    }

    @Override
    public PageBean getPageByTypeId(int tid, String current) throws SQLException {
        PageBean pb=new PageBean();
        int currentPage=0;
        if(current==null){
            currentPage=1;
        }else {
            currentPage=Integer.parseInt(current);
        }
        try {
            Long count=dao.getCountByTypeId(tid);
            pb.setSize(20);
            pb.setTotalCount(count);
            pb.setCurrentPage(currentPage);
            pb.setData(dao.getListByTypeId(tid,currentPage,pb.getSize()));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pb;
    }
}
