<%--
  Created by IntelliJ IDEA.
  User: Q2665_yubiums
  Date: 2018-09-28
  Time: 18:56:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<% String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; %>
<base href="<%=basePath%>">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>增加管理员表信息</title>
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
                    <label class="layui-form-label">管理员id</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="aId" id="aId" value="${Bean.AId}" disabled>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">用户名</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="aUsername" id="aUsername" value="${Bean.AUsername}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">密码</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="aPassword" id="aPassword" value="${Bean.APassword}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">管理员级别</label>
                    <div class="layui-input-block">
                        <!--<input class="layui-input" type="text" name="aLevel" id="aLevel" value="" >-->
                        <select name="aLevel" id="aLevel">
                            <option value="1">管理员</option>
                            <option value="2">超级管理员</option>
                        </select>
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

        let alevel = '${Bean.ALevel}';
        if (alevel === '2') {
            $('#aLevel').val('2');
            form.render('select');
        }



        form.on('submit(submit)', function (data) {
            $.get('admins?method=Edit', data.field, function (msg) {
                if (msg === 'success') {
                    layer.msg('更新成功');
                    let index = parent.layer.getFrameIndex(window.name);
                    setTimeout(function () {
                        parent.layer.close(index);
                        parent.location.reload();
                    }, 1000);
                } else if (msg === 'fail') {
                    layer.msg('更新失败');
                } else {
                    layer.error('更新出错')
                }
            });
            return false;
        });
    });
</script>
</html>