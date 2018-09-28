package com.sxt.bookstore.service.impl;


import com.sxt.bookstore.dao.BaseDao;
import com.sxt.bookstore.entity.Page;
import com.sxt.bookstore.factory.DaoFactory;
import com.sxt.bookstore.service.BaseService;
import com.sxt.bookstore.util.Mapping;

import java.lang.reflect.ParameterizedType;
import java.sql.SQLException;
import java.util.List;

/**
 * @author Q2665_yubiums
 */
public abstract class BaseServiceImpl<T> implements BaseService<T> {

    /**
     * 获取父类泛型超类泛型class对象
     */
    Class<T> tClass = (Class<T>) ((ParameterizedType) this.getClass().getGenericSuperclass()).getActualTypeArguments()[0];
    protected BaseDao<T> baseDao;

    {

            baseDao = DaoFactory.getInstance().getDao(tClass.getSimpleName());

    }

    @Override
    public boolean add(T bean) throws SQLException {
        boolean flag = false;
        if (bean != null) {
            flag = baseDao.add(bean);
        }
        return flag;
    }

    @Override
    public boolean del(Integer PrimaryKey) throws SQLException {
        boolean flag = false;
        if (PrimaryKey != null) {
            flag = baseDao.del(PrimaryKey);
        }
        return flag;
    }

    @Override
    public List<T> getAll() throws SQLException {
        return baseDao.getAll();
    }

    @Override
    public Page<T> getPage(int pageIndex, int pageSize) throws SQLException {
        Page<T> page = null;
        if (pageIndex > 0) {
            pageSize = pageSize > 0 ? pageSize : 10;
            page = baseDao.getPage(pageIndex, pageSize);
        }
        return page;
    }

    @Override
    public T getOneByPrimaryKey(Integer PrimaryKey) throws SQLException {
        T t = null;
        if (PrimaryKey != null) {
            t = baseDao.getOneByPrimaryKey(PrimaryKey);
        }
        return t;
    }

    @Override
    public Long getCount() throws SQLException {
        Long count = baseDao.getCount();
        return count;
    }
}
