package com.sxt.bookstore.dao.impl;

import com.sxt.bookstore.annotation.Dao;
import com.sxt.bookstore.dao.AreaDao;
import com.sxt.bookstore.entity.Area;
import com.sxt.bookstore.entity.Page;

import java.sql.SQLException;
import java.util.List;

/**
 * 区县行政编码字典表服务模块Dao接口实现
 * @author Q2665_yubiums
 */
@Dao("Area")
public class AreaDaoImpl extends BaseDaoImpl<Area> implements AreaDao  {
    @Override
    public boolean add(Area areaBean) throws SQLException {
        String sql = "INSERT INTO `AREA`(" +
                "AR_NAME," +
                "AR_LEVEL," +
                "AR_PARENT_ID" +
                ") VALUE(" +
                "?," +
                "?," +
                "?" +
                ")";

        Object[] params = {
                areaBean.getArName(),
                areaBean.getArLevel(),
                areaBean.getArParentId()
        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean upd(Area areaBean) throws SQLException {
        String sql = "UPDATE `AREA` SET " +
                "AR_NAME = ?," +
                "AR_LEVEL = ?," +
                "AR_PARENT_ID = ? " +
                " WHERE AR_ID = ?";

        Object[] params = {
                areaBean.getArName(),
                areaBean.getArLevel(),
                areaBean.getArParentId(),
                areaBean.getArId()

        };
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public boolean del(Integer arId) throws SQLException {
        String sql = "DELETE FROM `AREA` WHERE AR_ID = ?";

        Object[] params = {arId};
        boolean flag = dml(sql, params);

        return flag;
    }

    @Override
    public List<Area> getAll() throws SQLException {
        String sql = "SELECT * FROM `AREA`";

        Object[] params = {};
        List<Area> list = dqlGetList(sql, params);

        return list;
    }

    @Override
    public Page<Area> getPage(int pageIndex, int pageSize) throws SQLException {
        Page<Area> areaPage = new Page<>(pageIndex, pageSize);

        String sql = "SELECT * FROM `AREA` LIMIT ?,?";

        Object[] params = {areaPage.getStartRow(), pageSize};
        List<Area> list = dqlGetList(sql, params);
        Long count = getCount();

        areaPage.setPageData(list);
        areaPage.setTotalCount(count);

        return areaPage;
    }

    @Override
    public Area getOneByPrimaryKey(Integer arId) throws SQLException {
        String sql = "SELECT * FROM `AREA` WHERE AR_ID = ?";

        Object[] params = {arId};
        Area area = dqlGetSingle(sql, params);

        return area;
    }

    @Override
    public Long getCount() throws SQLException {
        String sql = "SELECT COUNT(1) FROM `AREA`";

        Long count = dqlGetCount(sql);

        return count;
    }



    @Override
    public List<Area> getAllProvince() throws SQLException {
        String sql = "SELECT * FROM AREA WHERE AR_LEVEL = 1";

        Object[] params = {};
        List<Area> areas = dqlGetList(sql, params);

        return areas;
    }

    @Override
    public List<Area> getCityByProId(int id) throws SQLException {
        String sql = "SELECT * FROM AREA WHERE AR_LEVEL = 2 AND AR_PARENT_ID = ?";

        Object[] params = {id};
        List<Area> areas = dqlGetList(sql, params);

        return areas;
    }

    @Override
    public List<Area> getCountyByCityId(int id) throws SQLException {
        String sql = "SELECT * FROM AREA WHERE AR_LEVEL = 3 AND AR_PARENT_ID = ?";

        Object[] params = {id};
        List<Area> areas = dqlGetList(sql, params);

        return areas;
    }
}
