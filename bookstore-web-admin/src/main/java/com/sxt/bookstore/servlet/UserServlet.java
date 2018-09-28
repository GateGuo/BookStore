package com.sxt.bookstore.servlet;

import com.alibaba.fastjson.JSON;
import com.mysql.cj.xdevapi.JsonArray;
import com.sxt.bookstore.entity.Area;
import com.sxt.bookstore.entity.Page;
import com.sxt.bookstore.entity.Users;
import com.sxt.bookstore.service.UsersService;
import com.sxt.bookstore.service.impl.AreaServiceImpl;
import com.sxt.bookstore.service.impl.UsersServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

/**
 * @author Q2665_yubiums
 */
@WebServlet(name = "UserServlet", value = "/users")
public class UserServlet extends HttpServlet {

    UsersService usersService = new UsersServiceImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        System.out.println("test");

        String method = request.getParameter("method");

        String strategy = "do" + method;

        switch (strategy){
            case "doShow":
                doShow(request, response);
                break;
            case "doEditGet":
                try {
                    doEditGet(request, response);
                } catch (SQLException e) {
                    try {
                        doEditGet(request, response);
                    } catch (SQLException e1) {
                        e1.printStackTrace();
                    }
                }
                break;
            default:
                doShow(request, response);
        }
    }

    private void doShow(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();

        String page1 = request.getParameter("page");
        String limit = request.getParameter("limit");

        int page = Integer.parseInt(page1);
        int size = Integer.parseInt(limit);

        try {
            System.out.println(page);
            System.out.println(size);

            Page<Users> usersPage = usersService.getPage(page, size);
            System.out.println(usersPage.getPageData());
            HashMap<Object, Object> map = new HashMap<>(4);


            map.put("code", 200);
            map.put("msg", "success");
            map.put("count", usersPage.getTotalCount());
            map.put("data", JSON.toJSONString(usersPage.getPageData()));

            Object mapString = JSON.toJSON(map);
            out.print(mapString);
            out.flush();
            out.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void doEditGet(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        String uId = request.getParameter("uId");
        Users users = usersService.getOneByPrimaryKey(Integer.valueOf(uId));
//        System.out.println(users);

        Integer uArId = users.getUArId();
        AreaServiceImpl areaService = new AreaServiceImpl();
        List<Area> allProvince = areaService.getAllProvince();
//        areaService.get

        request.setAttribute("Bean", users);
        request.getRequestDispatcher("jsp/upd/usersUpd.jsp").forward(request, response);
//        response.sendRedirect("jsp/upd/usersUpd.jsp");
    }
}
