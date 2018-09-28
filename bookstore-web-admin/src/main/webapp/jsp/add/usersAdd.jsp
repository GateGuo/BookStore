<%--
  Created by IntelliJ IDEA.
  User: Q2665_yubiums
  Date: 2018-09-28
  Time: 16:08:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; %>
<base href="<%=basePath%>">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>增加用户表信息</title>
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
                    <label class="layui-form-label">用户名</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uUsername" id="uUsername">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">密码</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uPassword" id="uPassword">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">会员等级</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uVipLevel" id="uVipLevel">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">身份证</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uIdCard" id="uIdCard">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">姓名</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uName" id="uName">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">地址</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uAddress" id="uAddress">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">手机号码</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uPhonenumber" id="uPhonenumber">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">账户余额</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uAccountBalance" id="uAccountBalance">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">销售余额</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uSalesBalance" id="uSalesBalance">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">总共充值金额</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uTotalRecharge" id="uTotalRecharge">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">是否卖家</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uIsSeller" id="uIsSeller">
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