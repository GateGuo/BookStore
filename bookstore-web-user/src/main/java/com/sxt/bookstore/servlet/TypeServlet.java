package com.sxt.bookstore.servlet;

import com.alibaba.fastjson.JSON;
import com.sxt.bookstore.service.TypeService;
import com.sxt.bookstore.service.impl.TypeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "TypeServlet",value = "/type")
public class TypeServlet extends BaseServlet {
    TypeService tservice = new TypeServiceImpl();

    private void doShowAllTypes(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        PrintWriter out=response.getWriter();
        List list=null;
        try {
            list=tservice.getBigTypes();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String json=JSON.toJSONString(list);
        out.print(json);
    }
}
