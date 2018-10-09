package com.sxt.bookstore.servlet;

import com.alibaba.fastjson.JSON;
import com.sxt.bookstore.entity.Comments;
import com.sxt.bookstore.entity.Users;
import com.sxt.bookstore.service.CommentsService;
import com.sxt.bookstore.service.UsersService;
import com.sxt.bookstore.service.impl.CommentsServiceImpl;
import com.sxt.bookstore.service.impl.UsersServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "CommentsServlet",value = "/comments")
public class CommentsServlet extends BaseServlet {
    CommentsService service=new CommentsServiceImpl();
    UsersService uservice = new UsersServiceImpl();
    private void doGetFive(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("application/json;charset=utf-8");
        PrintWriter out=response.getWriter();
        int bid=Integer.parseInt(request.getParameter("bid"));
            List list=null;
            try {
                list=service.getFive(bid);
                for (Object obj:
                     list) {
                    Comments comments=(Comments) obj;
                    Users users=uservice.getOneByPrimaryKey(comments.getCUId());
                    comments.setcUName(users.getUName());
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            String json=JSON.toJSONString(list);
            out.print(json);
    }

    private void doGetCallBack(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("application/json;charset=utf-8");
        PrintWriter out = response.getWriter();
        int bid = Integer.parseInt(request.getParameter("bid"));
        int cid=Integer.parseInt(request.getParameter("cid"));
        List list=null;
        try {
            list=service.getCallBack(bid,cid);
            for (Object obj:
                    list) {
                Comments comments=(Comments) obj;
                Users users=uservice.getOneByPrimaryKey(comments.getCUId());
                Users users2=uservice.getOneByPrimaryKey(comments.getCUTargetId());
                comments.setcUName(users.getUName());
                comments.setcUTargetName(users2.getUName());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String json=JSON.toJSONString(list);
        out.print(json);
    }

    private void doAddComment(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        String bid=request.getParameter("bid");
        String uid=request.getParameter("uid");
        String content=request.getParameter("content");
        Comments comments=new Comments();
        comments.setCBId(Integer.parseInt(bid));
        comments.setCUId(Integer.parseInt(uid));
        comments.setCContent(content);
        comments.setCTime(new Date());
        try {
            service.add(comments);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void doCallBack(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        String bid=request.getParameter("bid");
        String uid=request.getParameter("uid");
        String content=request.getParameter("content");
        String targetid=request.getParameter("targetid");
        String parentid=request.getParameter("parentid");
        Comments comments=new Comments();
        comments.setCParentId(Integer.parseInt(parentid));
        comments.setCUTargetId(Integer.parseInt(targetid));
        comments.setCBId(Integer.parseInt(bid));
        comments.setCUId(Integer.parseInt(uid));
        comments.setCContent(content);
        comments.setCTime(new Date());
        try {
            service.add(comments);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
