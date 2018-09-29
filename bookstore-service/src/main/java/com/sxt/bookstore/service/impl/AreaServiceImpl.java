package com.sxt.bookstore.service.impl;

import com.sxt.bookstore.dao.AreaDao;
import com.sxt.bookstore.dao.impl.AreaDaoImpl;
import com.sxt.bookstore.entity.Area;
import com.sxt.bookstore.factory.DaoFactory;
import com.sxt.bookstore.service.AreaService;

import java.sql.SQLException;
import java.util.List;

/**
 * @author Q2665_yubiums
 */
public class AreaServiceImpl extends BaseServiceImpl<Area> implements AreaService {

    AreaDao areaDao = (AreaDao) baseDao;

    @Override
    public boolean upd(Area areaBean) throws SQLException {
        boolean flag = false;
        if (areaBean != null &&
                areaBean.getArId() != null &&
                areaBean.getArId() > 0
                ) {
            flag = baseDao.upd(areaBean);
        }
        return flag;
    }

    @Override
    public List<Area> getAllProvince() throws SQLException {
        List<Area> list = areaDao.getAllProvince();
        return list;
    }

    @Override
    public List<Area> getCityByProId(int id) throws SQLException {
        return areaDao.getCityByProId(id);
    }

    @Override
    public List<Area> getCountyByCityId(int id) throws SQLException {
        return areaDao.getCountyByCityId(id);
    }

    @Override
    public Area getCityByCountyParentId(int id) throws SQLException {
        return areaDao.getCityByCountyParentId(id);
    }

    @Override
    public Area getProByCityParentId(int id) throws SQLException {
        return areaDao.getProByCityParentId(id);
    }

    @Override
    public Area getProByCountryParentId(Integer arParentId) throws SQLException {
        if (arParentId != null) {
            return areaDao.getProByCountryParentId(arParentId);
        }
        return null;
    }
}
