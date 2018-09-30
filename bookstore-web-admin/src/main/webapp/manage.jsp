<%--
  Created by IntelliJ IDEA.
  User: Q2665_yubiums
  Date: 2018/9/29 0029
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/"; %>
<base href="<%=basePath%>">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>管理</title>
    <link rel="stylesheet" type="text/css" media="screen" href="./layui/css/layui.css"/>
    <script src="./layui/layui.js"></script>
    <script src="js/jquery.js"></script>
    <link rel="stylesheet" href="css/diy.css">
    <%
        if (session.getAttribute("admin") == null) {
//            request.getRequestDispatcher("login.html");
            response.sendRedirect("login.html");
        }
    %>
</head>
<body style="overflow-x:hidden;background-color: #2E2D3C;">
<div class="layui-header" style="background-color: #2f4056;">
    <a href="#" class="layui-logo layui-col-md4" style="line-height: 60px;">
        <img src="img/logo-light.png" width="64" alt="logo">
    </a>
    <div class="layui-col-md4" style="text-align: center;font-size: 20px;color: aliceblue;line-height: 60px;">数据管理</div>
    <ul class="layui-nav layui-bg-cyan" style="position: absolute;right: 0px;">
        <li class="layui-nav-item">
            <a href="">${admin.AUsername}</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
                <dd><a href="admins?method=Exit">退出</a></dd>
            </dl>
        </li>
    </ul>
</div>
<div style="margin-top: 20px;">
    <div class="layui-row layui-col-space10">
        <div style="height: 450px;min-height: 450px;" class="layui-col-md2 layui-col-md-offset1">
            <div style="height: 100%;" class="layui-card">
                <div style="height: 100%;padding: 0;background-color: #2f4056;" overflow class="layui-card-body">
                    <ul style="width: 100%;" class="layui-nav-tree layui-bg-cyan layui-nav layui-inline">
                        <li class="layui-nav-item layui-nav-itemed">
                            <a onclick="return false;">管理</a>
                            <dl class="layui-nav-child">
                                <dd><a href="jsp/info/UsersInfo.jsp" onclick="return false;">用户</a></dd>
                                <c:if test="${admin.ALevel>=2}">
                                    <dd><a href="jsp/info/AdminsInfo.jsp" onclick="return false;">管理员</a></dd>
                                </c:if>
                                <dd><a href="jsp/info/BooksInfo.jsp" onclick="return false;">图书</a></dd>
                                <dd><a href="jsp/info/OrdersInfo.jsp" onclick="return false;">订单</a></dd>
                            </dl>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div style="height: 450px;min-height: 450px;" class="layui-col-md8">
            <div id="lc" style="height: 100%;" class="layui-card">
                <div class="layui-card-header">
                    <span class="layui-breadcrumb">
                        <a href="">管理</a>
                        <a href=""><cite>用户</cite></a>
                    </span>
                </div>
                <div style="height: 100%;overflow: hidden;padding: 0 5px;" class="layui-card-body">
                    <div id="msglist" style="overflow: hidden;height: 85%;">
                        <iframe id="iframe" src="./jsp/info/UsersInfo.jsp" style="width: 100%;height: 100%;"
                                frameborder="0"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    layui.use('layer', function () {
        var layer = layui.layer;

        $(function () {
            $('#login').click(function () {
                layer.open({
                    type: 2,
                    area: ['500px', '400px'],
                    closeBtn: 2,
                    title: false,
                    content: 'login.html'
                });
            });
        });

        $(function () {
            $('li dl dd > a,li > a').click(function () {
                var attr = $(this).attr('href');
                $(this).parent()
                $('#iframe').attr('src', attr);

                var closest = $(this).parents('.layui-nav-item').first();
                var $lc = $('#lc div > span');
                let first = $lc.children('a').first().text();
                let textPre = closest.children('a').first().text();
                let text = $(this).text();


                $lc.children('a').remove();
                $lc.children('span').remove();


                $lc.append('<a>' + first + '</a>');
                $lc.append('<span lay-separator="">/</span>');
                $lc.append('<a>' + textPre + '</a>');
                if (!(textPre === text)) {
                    $lc.append('<span lay-separator="">/</span>');
                    $lc.append('<a><cite>' + text + '</cite></a>');
                } else {
                    $lc.children('a').last().html('<cite>' + textPre + '</cite>');
                }
                $lc.children('a').first().remove();
                $lc.children('span').first().remove();
            });
        });
        $(function () {
            function updHeight() {
                var height = $(window).height();
                $('.layui-row > div').css('height', (height * 0.85) + 'px');
                var lcHei = $('#lc').height();
                var heHei = $('#lc .layui-card-header').height();
                var number = lcHei - heHei;
                $('#lc div div').css('height', (number - 15) + 'px');
            }
            updHeight();

            $(window).resize(function () {
                updHeight();
            });
        });
    });
    layui.use('element', function () {
        var element = layui.element;
    });
</script>
</body>
</html>