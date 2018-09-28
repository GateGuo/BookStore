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
                    <label class="layui-form-label">用户id</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uId" id="uId" value="${Bean.UId}" disabled>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">用户名</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uUsername" id="uUsername" value="${Bean.UUsername}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">密码</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uPassword" id="uPassword" value="${Bean.UPassword}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">会员等级</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uVipLevel" id="uVipLevel" value="${Bean.UVipLevel}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">身份证</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uIdCard" id="uIdCard" value="${Bean.UIdCard}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">姓名</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uName" id="uName" value="${Bean.UName}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">省市区</label>
                    <div class="layui-input-inline">
                        <select name="quiz1">
                            <option value="">请选择省</option>
                            <option value="浙江" selected="">浙江省</option>
                            <option value="你的工号">江西省</option>
                            <option value="你最喜欢的老师">福建省</option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                        <select name="quiz2">
                            <option value="">请选择市</option>
                            <option value="杭州">杭州</option>
                            <option value="宁波" disabled="">宁波</option>
                            <option value="温州">温州</option>
                            <option value="温州">台州</option>
                            <option value="温州">绍兴</option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                        <select name="quiz3">
                            <option value="">请选择县/区</option>
                            <option value="西湖区">西湖区</option>
                            <option value="余杭区">余杭区</option>
                            <option value="拱墅区">临安市</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">地址</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uAddress" id="uAddress" value="${Bean.UAddress}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">手机号码</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uPhonenumber" id="uPhonenumber" value="${Bean.UPhonenumber}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">账户余额</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uAccountBalance" id="uAccountBalance" value="${Bean.UAccountBalance}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">销售余额</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uSalesBalance" id="uSalesBalance" value="${Bean.USalesBalance}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">总共充值金额</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uTotalRecharge" id="uTotalRecharge" value="${Bean.UTotalRecharge}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">是否卖家</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="checkbox" lay-skin="switch" name="uIsSeller" id="uIsSeller" lay-text="ON|OFF"  >
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

        let value = "${Bean.UIsSeller}";
        if (value === '1') {
            $('#uIsSeller').attr('checked','checked');
            form.render();
        }

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