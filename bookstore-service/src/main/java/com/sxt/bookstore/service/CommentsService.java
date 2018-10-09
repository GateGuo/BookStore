package com.sxt.bookstore.service;

import com.sxt.bookstore.entity.Comments;

import java.sql.SQLException;
import java.util.List;

/**
 * @author Q2665_yubiums
 */
public interface CommentsService extends BaseService<Comments>{
    List<Comments> getFive(int bid)throws SQLException;

    List<Comments> getCallBack(int bid,int cid)throws SQLException;
}
