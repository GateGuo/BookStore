package com.sxt.bookstore.servlet;

import com.alibaba.fastjson.JSON;
import com.sxt.bookstore.entity.Admins;
import com.sxt.bookstore.entity.Books;
import com.sxt.bookstore.entity.Page;
import com.sxt.bookstore.service.BooksService;
import com.sxt.bookstore.service.impl.BooksServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;

/**
 * @author Q2665_yubiums
 */
@WebServlet(name = "BookServlet", value = "/books")
public class BookServlet extends BaseServlet {

    BooksService booksService = new BooksServiceImpl();

    private void doShow(HttpServletRequest request, HttpServletResponse response) {
        try {
            PrintWriter out = response.getWriter();

            String page1 = request.getParameter("page");
            String limit = request.getParameter("limit");

            int page = Integer.parseInt(page1);
            int size = Integer.parseInt(limit);


            Page<Books> booksPage = booksService.getPage(page, size);

            HashMap<Object, Object> map = new HashMap<>(4);

            map.put("code", 200);
            map.put("msg", "success");
            map.put("count", booksPage.getTotalCount());
            map.put("data", JSON.toJSONString(booksPage.getPageData()));


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
}
