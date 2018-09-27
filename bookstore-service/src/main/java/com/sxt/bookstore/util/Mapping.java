package com.sxt.bookstore.util;



import com.sxt.bookstore.dao.BaseDao;

import java.util.Map;

/**
 * @author Q2665_yubiums
 */
public class Mapping {
    private static Map<String, Class<? extends BaseDao>> daoMap;

    public static Map<String, Class<? extends BaseDao>> getDaoMap() {
        if (daoMap == null) {
            daoMap = AnnotationUtil.initMap();
        }
        return daoMap;
    }
}
