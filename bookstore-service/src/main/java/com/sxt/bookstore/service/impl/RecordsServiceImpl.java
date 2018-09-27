package com.sxt.bookstore.service.impl;

import com.sxt.bookstore.entity.Records;
import com.sxt.bookstore.service.RecordsService;

import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
public class RecordsServiceImpl extends BaseServiceImpl<Records> implements RecordsService {

    @Override
    public boolean upd(Records recordsBean) throws SQLException {
        boolean flag = false;
        if (recordsBean != null &&
                recordsBean.getRId() != null &&
                recordsBean.getRId() > 0
                ) {
            flag = baseDao.upd(recordsBean);
        }
        return flag;
    }
}
