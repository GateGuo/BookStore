package com.sxt.bookstore.dao.impl;

import com.sxt.bookstore.annotation.Dao;
import com.sxt.bookstore.dao.TypeDao;
import com.sxt.bookstore.entity.Type;
import com.sxt.bookstore.entity.Page;

import java.sql.SQLException;
import java.util.List;

/**
 * 图书类别表服务模块Dao接口实现
 * @author Q2665_yubiums
 */
@Dao("Type")
public class TypeDaoImpl extends BaseDaoImpl<Type> implements TypeDao  {
    @Override
    public boolean add(Type typeBean) throws SQLException {
        String sql = "INSERT INTO `TYPE`(" +
                "T_NAME," +
                "T_PARENT_ID," +
                "T_LEVEL" +
                ") VALUE(" +
                "?," +
                "?," +
                "?" +
                ")";

        Object[] params = {
                typeBean.getTName(),
                typeBean.getTParentId(),
                typeBean.getTLevel()
        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean upd(Type typeBean) throws SQLException {
        String sql = "UPDATE `TYPE` SET " +
                "T_NAME = ?," +
                "T_PARENT_ID = ?," +
                "T_LEVEL = ? " +
                " WHERE T_ID = ?";

        Object[] params = {
                typeBean.getTName(),
                typeBean.getTParentId(),
                typeBean.getTLevel(),
                typeBean.getTId()

        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean del(Integer tId) throws SQLException {
        String sql = "DELETE FROM `TYPE` WHERE T_ID = ?";

        Object[] params = {tId};
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public List<Type> getAll() throws SQLException {
        String sql = "SELECT * FROM `TYPE`";

        Object[] params = {};
        List<Type> list = dqlGetList(sql, params);

        return list;
    }

    @Override
    public Page<Type> getPage(int pageIndex, int pageSize) throws SQLException {
        Page<Type> typePage = new Page<>(pageIndex, pageSize);

        String sql = "SELECT * FROM `TYPE` LIMIT ?,?";

        Object[] params = {typePage.getStartRow(), pageSize};
        List<Type> list = dqlGetList(sql, params);
        Long count = getCount();

        typePage.setPageData(list);
        typePage.setTotalCount(count);

        return typePage;
    }

    @Override
    public Type getOneByPrimaryKey(Integer tId) throws SQLException {
        String sql = "SELECT * FROM `TYPE` WHERE T_ID = ?";

        Object[] params = {tId};
        Type type = dqlGetSingle(sql, params);

        return type;
    }

    @Override
    public Long getCount() throws SQLException {
        String sql = "SELECT COUNT(1) FROM `TYPE`";

        Long count = dqlGetCount(sql);

        return count;
    }

    @Override
    public Type getTypeByName(String name) throws SQLException {
        String sql="SELECT * FROM `TYPE` WHERE T_NAME = ?";
        Object[] params={name};
        Type type=dqlGetSingle(sql,params);
        return type;
    }
}
