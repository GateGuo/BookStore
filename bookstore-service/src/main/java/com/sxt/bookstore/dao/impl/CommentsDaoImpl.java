package com.sxt.bookstore.dao.impl;

import com.sxt.bookstore.annotation.Dao;
import com.sxt.bookstore.dao.CommentsDao;
import com.sxt.bookstore.entity.Comments;
import com.sxt.bookstore.entity.Page;

import java.sql.SQLException;
import java.util.List;

/**
 * 评论表服务模块Dao接口实现
 * @author Q2665_yubiums
 */
@Dao("Comments")
public class CommentsDaoImpl extends BaseDaoImpl<Comments> implements CommentsDao  {
    @Override
    public boolean add(Comments commentsBean) throws SQLException {
        String sql = "INSERT INTO `COMMENTS`(" +
                "C_B_ID," +
                "C_U_ID," +
                "C_PARENT_ID," +
                "C_U_TARGET_ID," +
                "C_CONTENT," +
                "C_TIME" +
                ") VALUE(" +
                "?," +
                "?," +
                "?," +
                "?," +
                "?," +
                "?" +
                ")";

        Object[] params = {
                commentsBean.getCBId(),
                commentsBean.getCUId(),
                commentsBean.getCParentId(),
                commentsBean.getCUTargetId(),
                commentsBean.getCContent(),
                commentsBean.getCTime()
        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean upd(Comments commentsBean) throws SQLException {
        String sql = "UPDATE `COMMENTS` SET " +
                "C_B_ID = ?," +
                "C_U_ID = ?," +
                "C_PARENT_ID = ?," +
                "C_U_TARGET_ID = ?," +
                "C_CONTENT = ?," +
                "C_TIME = ? " +
                " WHERE C_ID = ?";

        Object[] params = {
                commentsBean.getCBId(),
                commentsBean.getCUId(),
                commentsBean.getCParentId(),
                commentsBean.getCUTargetId(),
                commentsBean.getCContent(),
                commentsBean.getCTime(),
                commentsBean.getCId()

        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean del(Integer cId) throws SQLException {
        String sql = "DELETE FROM `COMMENTS` WHERE C_ID = ?";

        Object[] params = {cId};
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public List<Comments> getAll() throws SQLException {
        String sql = "SELECT * FROM `COMMENTS`";

        Object[] params = {};
        List<Comments> list = dqlGetList(sql, params);

        return list;
    }

    @Override
    public Page<Comments> getPage(int pageIndex, int pageSize) throws SQLException {
        Page<Comments> commentsPage = new Page<>(pageIndex, pageSize);

        String sql = "SELECT * FROM `COMMENTS` LIMIT ?,?";

        Object[] params = {commentsPage.getStartRow(), pageSize};
        List<Comments> list = dqlGetList(sql, params);
        Long count = getCount();

        commentsPage.setPageData(list);
        commentsPage.setTotalCount(count);

        return commentsPage;
    }

    @Override
    public Comments getOneByPrimaryKey(Integer cId) throws SQLException {
        String sql = "SELECT * FROM `COMMENTS` WHERE C_ID = ?";

        Object[] params = {cId};
        Comments comments = dqlGetSingle(sql, params);

        return comments;
    }

    @Override
    public Long getCount() throws SQLException {
        String sql = "SELECT COUNT(1) FROM `COMMENTS`";

        Long count = dqlGetCount(sql);

        return count;
    }
}
