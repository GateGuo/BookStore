package com.sxt.bookstore.service;

import com.sxt.bookstore.entity.Area;

import java.sql.SQLException;
import java.util.List;

/**
 * @author Q2665_yubiums
 */
public interface AreaService extends BaseService<Area>{
    /**
     * 获取所有的省份列表
     * @return
     */
    List<Area> getAllProvince() throws SQLException;

    /**
     * 通过省id获取城市列表信息
     * @param id
     * @return
     */
    List<Area> getCityByProId(int id) throws SQLException;

    /**
     * 通过城市id获取区县列表信息
     * @param id
     * @return
     */
    List<Area> getCountyByCityId(int id) throws SQLException;

    /**
     * 通过区县id获得城市
     * @param id
     * @return
     * @throws SQLException
     */
    Area getCityByCountyParentId(int id) throws SQLException;

    /**
     * 通过市id获得省
     * @param id
     * @return
     * @throws SQLException
     */
    Area getProByCityParentId(int id) throws SQLException;
}
