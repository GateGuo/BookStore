package com.sxt.bookstore.servlet;

import com.sxt.bookstore.entity.Users;
import com.sxt.bookstore.service.UsersService;
import com.sxt.bookstore.service.impl.UsersServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "UserServlet",value = "/users")
public class UserServlet extends BaseServlet {
    UsersService service = new UsersServiceImpl();

    private void doReg(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phonenumber = request.getParameter("phonenumber");
        String address = request.getParameter("address");
        address = new String(address.getBytes("iso8859-1"), "UTF-8");
        String idcard = request.getParameter("idcard");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        name = new String(name.getBytes("iso8859-1"), "UTF-8");
        Users users = new Users();
        users.setUAddress(address);
        users.setuAr(address);
        users.setUIdCard(idcard);
        users.setUName(name);
        users.setUPassword(password);
        users.setUPhonenumber(phonenumber);
        users.setUUsername(username);
        boolean flag = false;
        try {
            flag = service.add(users);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (!flag) {
            response.sendRedirect("register.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }
    }

    private void doLogin(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        Users users=null;
        try {
            users=service.login(username,password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if(users!=null){
            HttpSession session=request.getSession();
            session.setAttribute("user",users);
            Cookie cookie=new Cookie("userId",""+users.getUId());
            cookie.setMaxAge(-1);
            response.addCookie(cookie);
            response.sendRedirect("books?m=doShow");
        }else {
            response.sendRedirect("login.jsp");
        }
    }
}