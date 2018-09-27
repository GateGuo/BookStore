package com.sxt.bookstore.service.impl;

import com.sxt.bookstore.entity.Area;
import com.sxt.bookstore.service.AreaService;

import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
public class AreaServiceImpl extends BaseServiceImpl<Area> implements AreaService {

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
}
