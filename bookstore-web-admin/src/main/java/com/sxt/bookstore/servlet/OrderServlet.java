package com.sxt.bookstore.servlet;

import com.alibaba.fastjson.JSON;
import com.sxt.bookstore.entity.Books;
import com.sxt.bookstore.entity.Orders;
import com.sxt.bookstore.entity.Page;
import com.sxt.bookstore.entity.Type;
import com.sxt.bookstore.service.OrdersService;
import com.sxt.bookstore.service.TypeService;
import com.sxt.bookstore.service.impl.OrdersServiceImpl;
import com.sxt.bookstore.service.impl.TypeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

/**
 * @author Q2665_yubiums
 */
@WebServlet(name = "OrderServlet", value = "/orders")
public class OrderServlet extends BaseServlet {
    OrdersService ordersService = new OrdersServiceImpl();

    private void doShow(HttpServletRequest request, HttpServletResponse response) {
        try {
            PrintWriter out = response.getWriter();

            String page1 = request.getParameter("page");
            String limit = request.getParameter("limit");

            int page = Integer.parseInt(page1);
            int size = Integer.parseInt(limit);


            Page<Orders> ordersPage = ordersService.getPage(page, size);
            System.out.println(ordersPage.getPageData().get(0));

            HashMap<Object, Object> map = new HashMap<>(4);

            map.put("code", 200);
            map.put("msg", "success");
            map.put("count", ordersPage.getTotalCount());
            map.put("data", JSON.toJSONString(ordersPage.getPageData()));


            Object mapString = JSON.toJSON(map);
            out.print(mapString);
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    //todo 补充完此方法
    private void doGetGoods(HttpServletRequest request, HttpServletResponse response) {
        try {
            PrintWriter out = response.getWriter();

            String page1 = request.getParameter("page");
            String limit = request.getParameter("limit");
            String orId = request.getParameter("orId");

            int page = Integer.parseInt(page1);
            int size = Integer.parseInt(limit);

            //todo 获取订单商品详情
            Page<Orders> ordersPage = ordersService.getPage(page, size);
            System.out.println(ordersPage.getPageData().get(0));

            HashMap<Object, Object> map = new HashMap<>(4);

            map.put("code", 200);
            map.put("msg", "success");
            map.put("count", ordersPage.getTotalCount());
            map.put("data", JSON.toJSONString(ordersPage.getPageData()));


            Object mapString = JSON.toJSON(map);
            out.print(mapString);
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void doEditGet(HttpServletRequest request, HttpServletResponse response) {
        String orId = request.getParameter("orId");
        try {
            Orders orders = ordersService.getOneByPrimaryKey(Integer.valueOf(orId));


            request.setAttribute("Bean", orders);

            request.getRequestDispatcher("jsp/upd/ordersUpd.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void doDel(HttpServletRequest request, HttpServletResponse response) {
        Integer orId = Integer.valueOf(request.getParameter("orId"));

        try {
            PrintWriter out = response.getWriter();
            boolean flag = ordersService.del(orId);


            out.print(flag == true ? "success" : "fail");
            out.flush();
            out.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void doShip(HttpServletRequest request, HttpServletResponse response) {
        try {
            PrintWriter out = response.getWriter();

            Integer orId = Integer.valueOf(request.getParameter("orId"));
            String orCourierCompany = request.getParameter("orCourierCompany");
            String orTrackingNumber = request.getParameter("orTrackingNumber");

            boolean flag = ordersService.ship(orId, orCourierCompany, orTrackingNumber);

            out.print(flag == true ? "success" : "fail");
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
