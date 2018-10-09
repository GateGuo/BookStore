package com.sxt.bookstore.service.impl;

import com.sxt.bookstore.dao.CommentsDao;
import com.sxt.bookstore.entity.Comments;
import com.sxt.bookstore.factory.DaoFactory;
import com.sxt.bookstore.service.CommentsService;

import java.sql.SQLException;
import java.util.List;

/**
 * @author Q2665_yubiums
 */
public class CommentsServiceImpl extends BaseServiceImpl<Comments> implements CommentsService {
    CommentsDao dao= (CommentsDao) DaoFactory.getInstance().getDao("Comments");
    @Override
    public boolean upd(Comments commentsBean) throws SQLException {
        boolean flag = false;
        if (commentsBean != null &&
                commentsBean.getCId() != null &&
                commentsBean.getCId() > 0
                ) {
            flag = baseDao.upd(commentsBean);
        }
        return flag;
    }

    @Override
    public List<Comments> getFive(int bid) throws SQLException {
        return dao.getFive(bid);
    }

    @Override
    public List<Comments> getCallBack(int bid, int cid) throws SQLException {
        return dao.getCallBack(bid,cid);
    }
}
