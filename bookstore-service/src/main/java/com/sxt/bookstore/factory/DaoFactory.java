package com.sxt.bookstore.factory;

import com.sxt.bookstore.dao.BaseDao;
import com.sxt.bookstore.util.Mapping;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * @author Q2665_yubiums
 */
public class DaoFactory {
    /**
     * 工厂实例
     */
    private static final DaoFactory ourInstance;
    /**
     * 读取配置文件实例
     */
    private static Properties properties;

    static {
        ourInstance = new DaoFactory();
        try {
            properties = new Properties();
            InputStream inputStream = DaoFactory.class.getClassLoader()
                    .getResourceAsStream("daoConfig.properties");
            properties.load(inputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private DaoFactory() {
    }

    /**
     * 获取工厂实例
     *
     * @return
     */
    public static DaoFactory getInstance() {
        return ourInstance;
    }

    /**
     * 获取Dao实现类
     *
     * @param beanName 对应实体类的名字
     * @return
     */
    public BaseDao getDao(String beanName) {
        BaseDao dao = null;
        try {
//            dao = Mapping.getDaoMap().get(beanName).newInstance();
            dao = (BaseDao) Class.forName(properties.getProperty(beanName)).newInstance();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return dao;
    }

}
