package com.sxt.bookstore.servlet;

import com.sxt.bookstore.entity.Page;
import com.sxt.bookstore.entity.Users;
import com.sxt.bookstore.service.UsersService;
import com.sxt.bookstore.service.impl.UsersServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.SQLException;

/**
 * @author Q2665_yubiums
 */
@WebServlet(name = "UserServlet", value = "/user")
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

        String method = request.getParameter("method");

        String strategy = "do" + method;

        try {
            Method declaredMethod = this.getClass().getDeclaredMethod(strategy);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(this.getClass(), request.getClass(), response.getClass());
            declaredMethod.setAccessible(false);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
    }

    private void doShow(HttpServletRequest request, HttpServletResponse response) {
        int page = Integer.parseInt(request.getParameter("page"));
        int size = Integer.parseInt(request.getParameter("size"));

        try {
            Page<Users> usersPage = usersService.getPage(page, size);


        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
