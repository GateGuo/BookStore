package com.sxt.bookstore.servlet;

import com.sxt.bookstore.entity.ShoppingCart;
import com.sxt.bookstore.service.ShoppingCartService;
import com.sxt.bookstore.service.impl.ShoppingCartServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

@WebServlet(name = "ShoppingCartServlet",value = "/shoppingCart")
public class ShoppingCartServlet extends BaseServlet{
    ShoppingCartService service=new ShoppingCartServiceImpl();
    private void doAdd(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        String uid=request.getParameter("uid");
        String bid=request.getParameter("bid");
        ShoppingCart shoppingCart=null;
        try {
            shoppingCart=service.getOneByUId(Integer.parseInt(uid),Integer.parseInt(bid));
            if(shoppingCart!=null){
                shoppingCart.setScNumber(shoppingCart.getScNumber()+1);
                shoppingCart.setScUpdatetimeTime(new java.util.Date());
                service.upd(shoppingCart);
            }else {
                shoppingCart=new ShoppingCart();
                shoppingCart.setScBId(Integer.parseInt(bid));
                shoppingCart.setScUId(Integer.parseInt(uid));
                shoppingCart.setScNumber(1);
                shoppingCart.setScCreateTime(new java.util.Date());
                shoppingCart.setScUpdatetimeTime(new java.util.Date());
                service.add(shoppingCart);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
