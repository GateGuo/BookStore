package com.sxt.bookstore.servlet;

import com.alibaba.fastjson.JSON;
import com.sxt.bookstore.entity.Area;
import com.sxt.bookstore.entity.Page;
import com.sxt.bookstore.entity.Admins;
import com.sxt.bookstore.service.AdminsService;
import com.sxt.bookstore.service.AreaService;
import com.sxt.bookstore.service.AdminsService;
import com.sxt.bookstore.service.impl.AdminsServiceImpl;
import com.sxt.bookstore.service.impl.AreaServiceImpl;
import com.sxt.bookstore.service.impl.AdminsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

/**
 * @author Q2665_yubiums
 */
@WebServlet(name = "AdminServlet", value = "/admins")
public class AdminServlet extends BaseServlet {

    AdminsService adminsService = new AdminsServiceImpl();

    private void doDel(HttpServletRequest request, HttpServletResponse response) {
        Integer aId = Integer.valueOf(request.getParameter("aId"));

        try {
            PrintWriter out = response.getWriter();
            boolean flag = adminsService.del(aId);

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


            Page<Admins> adminsPage = adminsService.getPage(page, size);

            HashMap<Object, Object> map = new HashMap<>(4);

            map.put("code", 200);
            map.put("msg", "success");
            map.put("count", adminsPage.getTotalCount());
            map.put("data", JSON.toJSONString(adminsPage.getPageData()));



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
        String aId = request.getParameter("aId");
        try {
            Admins admins = adminsService.getOneByPrimaryKey(Integer.valueOf(aId));

            request.setAttribute("Bean", admins);

            request.getRequestDispatcher("jsp/upd/adminsUpd.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void doEdit(HttpServletRequest request, HttpServletResponse response) {
        try {
            PrintWriter out = response.getWriter();

            Integer aId = Integer.valueOf(request.getParameter("aId"));
            String aUsername = request.getParameter("aUsername");
            String aPassword = request.getParameter("aPassword");
            Integer aLevel = Integer.valueOf(request.getParameter("aLevel"));

            Admins admins = new Admins(aId,aUsername,aPassword,aLevel);

            System.out.println(admins);

            boolean flag = false;
            flag = adminsService.upd(admins);


            out.print(flag == true ? "success" : "fail");
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void doAdd(HttpServletRequest request, HttpServletResponse response) {
        try {
            PrintWriter out = response.getWriter();

            String aUsername = request.getParameter("aUsername");
            String aPassword = request.getParameter("aPassword");
            Integer aLevel = Integer.valueOf(request.getParameter("aLevel"));

            Admins admins = new Admins();
            admins.setALevel(aLevel);
            admins.setAPassword(aPassword);
            admins.setAUsername(aUsername);

            System.out.println(admins);

            boolean flag = false;
            flag = adminsService.add(admins);


            out.print(flag == true ? "success" : "fail");
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void doLogin(HttpServletRequest request, HttpServletResponse response) {
        try {
            PrintWriter out = response.getWriter();

            String aUsername = request.getParameter("username");
            String aPassword = request.getParameter("password");

            Admins admins = new Admins();
            admins.setAPassword(aPassword);
            admins.setAUsername(aUsername);

            Admins admin = adminsService.login(admins);

            if (admin != null) {
                HttpSession session = request.getSession();
                session.setAttribute("admin", admin);
            }

            out.print(admin == null ? "fail" : "success");
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void doExit(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        session.removeAttribute("admin");
        try {
            response.sendRedirect("login.html");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
