package com.sxt.bookstore.dao.impl;

import com.sxt.bookstore.annotation.Dao;
import com.sxt.bookstore.dao.RecordsDao;
import com.sxt.bookstore.entity.Records;
import com.sxt.bookstore.entity.Page;

import java.sql.SQLException;
import java.util.List;

/**
 * 咨询记录表服务模块Dao接口实现
 * @author Q2665_yubiums
 */
@Dao("Records")
public class RecordsDaoImpl extends BaseDaoImpl<Records> implements RecordsDao  {
    @Override
    public boolean add(Records recordsBean) throws SQLException {
        String sql = "INSERT INTO `RECORDS`(" +
                "R_U_ID," +
                "R_A_ID," +
                "R_MESSAGE," +
                "R_MARK" +
                ") VALUE(" +
                "?," +
                "?," +
                "?," +
                "?" +
                ")";

        Object[] params = {
                recordsBean.getRUId(),
                recordsBean.getRAId(),
                recordsBean.getRMessage(),
                recordsBean.getRMark()
        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean upd(Records recordsBean) throws SQLException {
        String sql = "UPDATE `RECORDS` SET " +
                "R_U_ID = ?," +
                "R_A_ID = ?," +
                "R_MESSAGE = ?," +
                "R_MARK = ? " +
                " WHERE R_ID = ?";

        Object[] params = {
                recordsBean.getRUId(),
                recordsBean.getRAId(),
                recordsBean.getRMessage(),
                recordsBean.getRMark(),
                recordsBean.getRId()

        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean del(Integer rId) throws SQLException {
        String sql = "DELETE FROM `RECORDS` WHERE R_ID = ?";

        Object[] params = {rId};
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public List<Records> getAll() throws SQLException {
        String sql = "SELECT * FROM `RECORDS`";

        Object[] params = {};
        List<Records> list = dqlGetList(sql, params);

        return list;
    }

    @Override
    public Page<Records> getPage(int pageIndex, int pageSize) throws SQLException {
        Page<Records> recordsPage = new Page<>(pageIndex, pageSize);

        String sql = "SELECT * FROM `RECORDS` LIMIT ?,?";

        Object[] params = {recordsPage.getStartRow(), pageSize};
        List<Records> list = dqlGetList(sql, params);
        Long count = getCount();

        recordsPage.setPageData(list);
        recordsPage.setTotalCount(count);

        return recordsPage;
    }

    @Override
    public Records getOneByPrimaryKey(Integer rId) throws SQLException {
        String sql = "SELECT * FROM `RECORDS` WHERE R_ID = ?";

        Object[] params = {rId};
        Records records = dqlGetSingle(sql, params);

        return records;
    }

    @Override
    public Long getCount() throws SQLException {
        String sql = "SELECT COUNT(1) FROM `RECORDS`";

        Long count = dqlGetCount(sql);

        return count;
    }
}
