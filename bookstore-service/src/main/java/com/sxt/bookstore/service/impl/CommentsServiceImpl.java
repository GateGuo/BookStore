package com.sxt.bookstore.service.impl;

import com.sxt.bookstore.entity.Comments;
import com.sxt.bookstore.service.CommentsService;

import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
public class CommentsServiceImpl extends BaseServiceImpl<Comments> implements CommentsService {

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
}
