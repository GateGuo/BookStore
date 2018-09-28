<%--
  Created by IntelliJ IDEA.
  User: Q2665_yubiums
  Date: 2018-09-28
  Time: 18:56:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; %>
<base href="<%=basePath%>">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>增加购物车表信息</title>
    <script type="text/javascript" src="layui/layui.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="layui/css/layui.css"/>
</head>
<body>
<div class="layui-container" style="margin-top: 10px;">
    <div class="layui-row">
        <div class="layui-col-lg-offset3 layui-col-lg6">
            <form class="layui-form-pane layui-form" action="" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label">id</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="scId" id="scId" value="${Bean.ScId}" disabled>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">用户id</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="scUId" id="scUId" value="${Bean.ScUId}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">商品id</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="scBId" id="scBId" value="${Bean.ScBId}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">商品数量</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="scNumber" id="scNumber" value="${Bean.ScNumber}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">生成日期</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="scCreateTime" id="scCreateTime" value="${Bean.ScCreateTime}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">更新日期</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="scUpdatetimeTime" id="scUpdatetimeTime" value="${Bean.ScUpdatetimeTime}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit="" lay-filter="submit">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    layui.use(['laydate', 'layer', 'form', 'jquery'], function () {
        var layer = layui.layer;
        var form = layui.form;
        var $ = layui.jquery;

        form.on('submit(*)', function (data) {
            $.get('', data.field, function (msg) {
                if (msg === 'success') {
                    layer.msg('添加成功');
                } else if (msg === 'fail') {
                    layer.msg('添加失败');
                } else {
                    layer.error('提交出错')
                }
            });
            return false;
        });
    });
</script>
</html>