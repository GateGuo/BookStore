package com.sxt.bookstore.servlet;

import com.alibaba.fastjson.JSON;
import com.mysql.cj.xdevapi.JsonArray;
import com.sxt.bookstore.entity.Area;
import com.sxt.bookstore.entity.Page;
import com.sxt.bookstore.entity.Users;
import com.sxt.bookstore.service.AreaService;
import com.sxt.bookstore.service.UsersService;
import com.sxt.bookstore.service.impl.AreaServiceImpl;
import com.sxt.bookstore.service.impl.UsersServiceImpl;
import jdk.internal.org.objectweb.asm.tree.IntInsnNode;

import javax.servlet.RequestDispatcher;
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
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Q2665_yubiums
 */
@WebServlet(name = "UserServlet", value = "/users")
public class UserServlet extends BaseServlet {

    UsersService usersService = new UsersServiceImpl();

    private void doDel(HttpServletRequest request, HttpServletResponse response) {
        Integer uId = Integer.valueOf(request.getParameter("uId"));

        try {
            PrintWriter out = response.getWriter();
            boolean flag = usersService.del(uId);


            out.print(flag == true ? "success" : "fail");
            out.flush();
            out.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void doShow(HttpServletRequest request, HttpServletResponse response) {
        try {
            PrintWriter out = response.getWriter();

            String page1 = request.getParameter("page");
            String limit = request.getParameter("limit");

            int page = Integer.parseInt(page1);
            int size = Integer.parseInt(limit);


            Page<Users> usersPage = usersService.getPage(page, size);

            HashMap<Object, Object> map = new HashMap<>(4);

            AreaService areaService = new AreaServiceImpl();

            usersPage.getPageData().forEach(bean -> {
                try {
                    Area area = areaService.getOneByPrimaryKey(bean.getUArId());
                    Area city = areaService.getCityByCountyParentId(area.getArParentId());
                    Area pro = areaService.getProByCityParentId(city.getArParentId());
                    bean.setuAr(pro.getArName() + "/"
                            + city.getArName() + "/"
                            + area.getArName()
                    );
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                System.out.println(bean);
            });



            map.put("code", 200);
            map.put("msg", "success");
            map.put("count", usersPage.getTotalCount());
            map.put("data", JSON.toJSONString(usersPage.getPageData()));



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
        String uId = request.getParameter("uId");
        try {
            Users users = usersService.getOneByPrimaryKey(Integer.valueOf(uId));

            AreaService areaService = new AreaServiceImpl();

            List<Area> all = areaService.getAll();
            String string = JSON.toJSONString(all);


            request.setAttribute("Bean", users);
            request.setAttribute("data", string);

            request.getRequestDispatcher("jsp/upd/usersUpd.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    public void doEdit(HttpServletRequest request, HttpServletResponse response) {
        try {
            PrintWriter out = response.getWriter();

            Integer uId = Integer.valueOf(request.getParameter("uId"));
            String uUsername = request.getParameter("uUsername");
            String uPassword = request.getParameter("uPassword");
            Integer uVipLevel = Integer.valueOf(request.getParameter("uVipLevel"));
            String uIdCard = request.getParameter("uIdCard");
            String uName = request.getParameter("uName");
            String area1 = request.getParameter("area[1]");
            String area2 = request.getParameter("area[2]");
            Integer uArId = Integer.valueOf(area2 == null ? area1 : area2);
            String uAddress = request.getParameter("uAddress");
            String uPhonenumber = request.getParameter("uPhonenumber");
            Double uAccountBalance = Double.valueOf(request.getParameter("uAccountBalance"));
            Double uSalesBalance = Double.valueOf(request.getParameter("uSalesBalance"));
            Double uTotalRecharge = Double.valueOf(request.getParameter("uTotalRecharge"));
            Integer uIsSeller = "on".equalsIgnoreCase(request.getParameter("uIsSeller")) ? 1 : 0;

            Users users = new Users(uId, uUsername, uPassword, uVipLevel, uIdCard,
                    uName, uArId, uAddress, uPhonenumber,
                    uAccountBalance, uSalesBalance, uTotalRecharge, uIsSeller);

            boolean flag = false;
            flag = usersService.upd(users);


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
