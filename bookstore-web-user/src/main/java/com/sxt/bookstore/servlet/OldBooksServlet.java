package com.sxt.bookstore.servlet;


import com.alibaba.fastjson.JSON;
import com.sxt.bookstore.service.OldBooksService;
import com.sxt.bookstore.service.impl.OldBooksServiceImpl;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "OldBooksServlet", value = "/oldbooks")
public class OldBooksServlet extends BaseServlet {

    OldBooksService service=new OldBooksServiceImpl();

    private void doGetHotOldBooks(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("utf-8");
        PrintWriter out=response.getWriter();
        String typeid=request.getParameter("typeid");
        String num=request.getParameter("number");
        int typeId=Integer.parseInt(typeid);
        int number=Integer.parseInt(num);
        List list=null;
        try {
            list=service.getHotOldBooks(typeId,number);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String json=JSON.toJSONString(list);
        out.print(json);
    }
}
