package com.sxt.bookstore.util;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;

import java.io.IOException;
import java.io.InputStream;

/**
 * @author Q2665_yubiums
 */
public class XmlUtil {

    /**
     * 通过配置文件路径获取baseDao全路径名
     * @return baseDao全路径名
     * @throws IOException
     */
    public static String  getBaseDaoPath() {
        String baseDaoPath = null;
        try {
            SAXReader saxReader = new SAXReader();
            InputStream inputStream = XmlUtil.class.getClassLoader().getResourceAsStream("diyConfig.xml");
            Document document = saxReader.read(inputStream);
            Node node = document.selectSingleNode("/configuration/base");
            baseDaoPath = node.valueOf("@basedao");
        } catch (DocumentException e) {
            e.printStackTrace();
        }
        return baseDaoPath;
    }

}
