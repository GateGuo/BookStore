package com.sxt.bookstore.servlet;

import com.sxt.bookstore.dao.BooksDao;
import com.sxt.bookstore.dao.OrderGoodsDao;
import com.sxt.bookstore.dao.OrdersDao;
import com.sxt.bookstore.dao.impl.OrderGoodsDaoImpl;
import com.sxt.bookstore.entity.Books;
import com.sxt.bookstore.entity.OrderGoods;
import com.sxt.bookstore.entity.Orders;
import com.sxt.bookstore.factory.DaoFactory;
import com.sxt.bookstore.service.OrderGoodsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet( "/show")
public class ShowServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrdersDao or = (OrdersDao) DaoFactory.getInstance().getDao("Orders");
        OrderGoodsDao og = (OrderGoodsDao) DaoFactory.getInstance().getDao("OrderGoods");
        BooksDao book = (BooksDao) DaoFactory.getInstance().getDao("Books");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        int n = 1;
        Orders obj = new Orders() ;
        try {
            obj = or.getOneByPrimaryKey(n);
            request.setAttribute("obj",obj);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(obj);
        int s = obj.getOrId();
        List list = new ArrayList();
        try {
            list = og.getbyforeignid(s);
            System.out.println(list);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("orlist",list);
        OrderGoods[] org = new OrderGoods[11];
        Books bk = new Books();
        String[] str = new String[11];
        for (int i=0;i<list.size();i++){
            org[i] = (OrderGoods) list.get(i);
            System.out.println(list.get(i)+"..........");
            try {
               bk = book.getOneByPrimaryKey(org[i].getOgId());
               System.out.println(bk.getBName()+"----------");
               str[i] = bk.getBName();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        request.setAttribute("bookname",str);
        request.getRequestDispatcher("/jsp/orderpage/Tlog.jsp").forward(request,response);
    }
}
