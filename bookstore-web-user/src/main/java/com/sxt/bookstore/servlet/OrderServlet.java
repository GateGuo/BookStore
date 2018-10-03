package com.sxt.bookstore.servlet;

import com.alibaba.fastjson.JSON;
import com.mysql.cj.Session;
import com.sxt.bookstore.dao.OrderGoodsDao;
import com.sxt.bookstore.dao.OrdersDao;
import com.sxt.bookstore.factory.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@WebServlet("/orderservlet")
public class OrderServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrdersDao or = (OrdersDao) DaoFactory.getInstance().getDao("Orders");
        OrderGoodsDao og = (OrderGoodsDao) DaoFactory.getInstance().getDao("OrderGoods");

        String data = request.getParameter("data");

        data = data.replace("}\"", "}");
        data = data.replace("\"{", "{");
        data = data.replace("\\", "");
        System.out.println(data);
        List<HashMap> list = JSON.parseArray(data, HashMap.class);
        String[] id = new String[list.size()];
        for (int i = 0; i < list.size(); i++) {
            HashMap<String, String> map = list.get(i);
            map.keySet().forEach(key -> {
                System.out.println(key + " : " + map.get(key));
            });
            id[i] = map.get("bid");
        }
        List orlist  = new ArrayList();
        for (int i = 0; i < id.length; i++) {
            System.out.println(id[i]);
            Integer n = Integer.parseInt(id[i]);
            try {
                 orlist.add(og.getbyforeignid(n));

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        request.setAttribute("orlist",orlist);
        for (int i = 0; i < orlist.size(); i++) {
            System.out.println(orlist.get(i));
        }
        request.getRequestDispatcher("/user/jsp/orderpage/Tlog.jsp").forward(request,response);
    }
}
