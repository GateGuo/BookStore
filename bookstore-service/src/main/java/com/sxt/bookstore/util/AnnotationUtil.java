package com.sxt.bookstore.util;


import com.sxt.bookstore.annotation.Dao;
import com.sxt.bookstore.dao.BaseDao;
import com.sxt.bookstore.dao.impl.BaseDaoImpl;

import java.io.File;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Q2665_yubiums
 */
public class AnnotationUtil {

    public static Map<String, Class<? extends BaseDao>> initMap() {
        Map<String, Class<? extends BaseDao>> map = new HashMap<>();
        String baseDaoPath = XmlUtil.getBaseDaoPath();
        List<String> classs = getClasss(baseDaoPath);

        classs.forEach(classPath ->{
            try {
//                System.out.println(classPath);
                Class<?> aClass = Class.forName(classPath);
                if (aClass.getSuperclass().equals(BaseDaoImpl.class)) {
                    Dao dao = aClass.getAnnotation(Dao.class);
                    if (dao != null) {
                        String beanName = dao.value();
                        map.put(beanName, (Class<? extends BaseDao>) aClass);
                    }
                }
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        });

        return map;
    }

    private static List<String> getClasss(String baseDaoPath) {
        List<String> list = new ArrayList<>();

        String basePath = baseDaoPath.replace('.', '/');

        URL url = Thread.currentThread().getContextClassLoader().getResource(basePath);

        System.out.println(url.getPath());

        File file = new File(url.getPath());

        System.out.println(file.getName());

        //获取class路径
        String[] fileNameList = file.list((dir, name) -> {
            String regex = "[\\S\\s]+.class";
            return name.matches(regex);
        });
        //拼接全路径名
        for (String fileName : fileNameList) {
            String classPath = baseDaoPath.concat(".").concat(fileName.substring(0,
                    fileName.lastIndexOf(".class")));
            list.add(classPath);
        }

        return list;
    }
}
