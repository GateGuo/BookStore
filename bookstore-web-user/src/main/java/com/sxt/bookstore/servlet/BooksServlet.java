package com.sxt.bookstore.servlet;


import com.alibaba.fastjson.JSON;
import com.sxt.bookstore.service.BooksService;
import com.sxt.bookstore.service.TypeService;
import com.sxt.bookstore.service.impl.BooksServiceImpl;
import com.sxt.bookstore.service.impl.TypeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "BooksServlet", value = "/books")
public class BooksServlet extends BaseServlet {
    TypeService tservice=new TypeServiceImpl();
    BooksService service=new BooksServiceImpl();
    private static final int FIRSTLISTNUMBER=8;

    private void doGetHotBooks(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        PrintWriter out=response.getWriter();
        String tname=request.getParameter("name");
        String num=request.getParameter("number");
        int number=Integer.parseInt(num);
        List list=null;
        try {
            int typeId=tservice.getTypeByName(tname).getTId();
            list=service.getHotBooks(typeId,number);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String json=JSON.toJSONString(list);
        out.print(json);
    }
    private void doShow(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        List firstList=null;
        List secondList=null;
        List thirdList=null;
        List fouthList=null;
        List fifthList=null;
        try {
            int firstType=tservice.getTypeByName("历史").getTId();
            int secondType=tservice.getTypeByName("小说").getTId();
            int thirdType=tservice.getTypeByName("计算机").getTId();
            int fouthType=tservice.getTypeByName("绘本").getTId();
            int fifthType=tservice.getTypeByName("成功").getTId();
            firstList=service.getHotBooks(firstType,FIRSTLISTNUMBER);
            secondList=service.getHotBooks(secondType,FIRSTLISTNUMBER*2);
            thirdList=service.getHotBooks(thirdType,FIRSTLISTNUMBER*2);
            fouthList=service.getHotBooks(fouthType,FIRSTLISTNUMBER*2);
            fifthList=service.getHotBooks(fifthType,FIRSTLISTNUMBER*2);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("firstList",firstList);
        request.setAttribute("secondList",secondList);
        request.setAttribute("thirdList",thirdList);
        request.setAttribute("fouthList",fouthList);
        request.setAttribute("fifthList",fifthList);
        request.getRequestDispatcher("books.jsp").forward(request,response);
    }
}
