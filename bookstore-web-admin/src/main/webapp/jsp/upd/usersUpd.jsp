<%--
  Created by IntelliJ IDEA.
  User: Q2665_yubiums
  Date: 2018-09-28
  Time: 18:56:42
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
    <title>增加用户表信息</title>
    <script type="text/javascript" src="js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="layui/css/layui.css"/>
</head>
<body>
<div class="layui-container" style="margin-top: 10px;">
    <div class="layui-row">
        <div class="layui-col-lg-offset2 layui-col-lg8">
            <form class="layui-form-pane layui-form" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label">用户id</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uId" id="uId" value="${Bean.UId}" disabled>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">用户名</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uUsername" id="uUsername"
                               value="${Bean.UUsername}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">密码</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uPassword" id="uPassword"
                               value="${Bean.UPassword}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">会员等级</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uVipLevel" id="uVipLevel"
                               value="${Bean.UVipLevel}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">身份证</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" disabled name="uIdCard" id="uIdCard" value="${Bean.UIdCard}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">姓名</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" disabled name="uName" id="uName" value="${Bean.UName}">
                    </div>
                </div>
                <div class="layui-form-item test-region1"></div>
                <div class="layui-form-item">
                    <label class="layui-form-label">地址</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uAddress" id="uAddress" value="${Bean.UAddress}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">手机号码</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uPhonenumber" id="uPhonenumber"
                               value="${Bean.UPhonenumber}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">账户余额</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uAccountBalance" id="uAccountBalance"
                               value="${Bean.UAccountBalance}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">销售余额</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uSalesBalance" id="uSalesBalance"
                               value="${Bean.USalesBalance}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">总共充值金额</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="uTotalRecharge" id="uTotalRecharge"
                               value="${Bean.UTotalRecharge}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">是否卖家</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="checkbox" lay-skin="switch" name="uIsSeller" id="uIsSeller"
                               lay-text="ON|OFF">
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

<script type="text/javascript" src="layui/layui.js"></script>
<script type="text/javascript">
    layui.config({
        base: 'js/',
    });

    layui.use(['laydate', 'layer', 'form', 'jquery', 'interact'], function () {
        var layer = layui.layer;
        var form = layui.form;
        var $ = layui.jquery;
        var interact = layui.interact;


        let value = "${Bean.UIsSeller}";
        if (value === '1') {
            $('#uIsSeller').attr('checked', 'checked');
            form.render();
        }

        form.on('submit(submit)', function (data) {
            console.log(data.field["area[2]"].length);
            if (data.field["area[2]"].length != 0 || data.field["area[1]"].length != 0) {
                console.log("1");
                $.get('users?method=Edit', data.field, function (msg) {
                    if (msg === 'success') {
                        layer.msg('更新成功');
                        let index = parent.layer.getFrameIndex(window.name);
                        setTimeout(function () {
                            parent.layer.close(index);
                        }, 1000);
                    } else if (msg === 'fail') {
                        layer.msg('更新失败');
                    } else {
                        layer.error('更新出错')
                    }
                });
                return false;
            } else {
                layer.msg('数据应该非空,请检查');
            }
            return false;
        });


        var data = '${data}';


        data = JSON.parse(data).map(function (item) {
            return{
                id:item.arId,
                pid:item.arParentId,
                title:item.arName
            }
        });


        // var data=[{"id":1,"pid":0,"title":"1-1"},{"id":2,"pid":0,"title":"1-2"},{"id":3,"pid":0,"title":"1-3"},{"id":4,"pid":1,"title":"1-1-1"},{"id":5,"pid":1,"title":"1-1-2"},{"id":6,"pid":2,"title":"1-2-1"},{"id":7,"pid":2,"title":"1-2-3"},{"id":8,"pid":3,"title":"1-3-1"},{"id":9,"pid":3,"title":"1-3-2"},{"id":10,"pid":4,"title":"1-1-1-1"},{"id":11,"pid":4,"title":"1-1-1-2"}];
        interact.render({
            elem : '.test-region1',
            title : '选择省市区',
            data : data,
            name : 'area',
            hint : ['请选择省份','请选择城市','请选择县/区']
        });
        interact.on('interact(test-region1)',function(data){
            console.dir(data);
        });
    });
</script>
</body>
</html>