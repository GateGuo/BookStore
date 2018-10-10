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
    <title>增加订单表信息</title>
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
                    <label class="layui-form-label">订单id</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="orId" id="orId" value="${Bean.orId}" disabled>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">订单编号</label>
                    <div class="layui-input-block">
                        <input class="layui-input" disabled type="text" name="orNumber" id="orNumber" value="${Bean.orNumber}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">用户id</label>
                    <div class="layui-input-block">
                        <input disabled class="layui-input" type="text" name="orUId" id="orUId" value="${Bean.orUId}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">总金额</label>
                    <div class="layui-input-block">
                        <input disabled class="layui-input" type="text" name="orTotalPrice" id="orTotalPrice" value="${Bean.orTotalPrice}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">支付金额</label>
                    <div class="layui-input-block">
                        <input disabled class="layui-input" type="text" name="orPayPrice" id="orPayPrice" value="${Bean.orPayPrice}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">订单生成时间</label>
                    <div class="layui-input-block">
                        <input disabled class="layui-input" type="text" name="orCreateTime" id="orCreateTime" value="${Bean.orCreateTime}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">订单完成时间</label>
                    <div class="layui-input-block">
                        <input disabled class="layui-input" type="text" name="orFinishTime" id="orFinishTime" value="${Bean.orFinishTime}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">订单状态</label>
                    <div class="layui-input-block">
                        <!--<input class="layui-input" type="text" name="orStatus" id="orStatus" value="${Bean.orStatus}" >-->
                        <select disabled lay-filter="big" name="orStatus" id="orStatus">
                            <option value="0">已提交</option>
                            <option value="1">待付款</option>
                            <option value="2">待收货</option>
                            <option value="3">已完成</option>
                            <option value="4">已取消</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">快递</label>
                    <div class="layui-input-inline">
                        <!--<input class="layui-input" type="text" name="orStatus" id="orStatus" value="${Bean.orCourierCompany}" >-->
                        <select required lay-filter="orCourierCompany" name="orCourierCompany" id="orCourierCompany">
                            <option value="中通">中通</option>
                            <option value="圆通">圆通</option>
                            <option value="申通">申通</option>
                            <option value="韵达">韵达</option>
                            <option value="惠通">惠通</option>
                            <option value="顺丰">顺丰</option>
                            <option value="EMS">EMS</option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                        <input required class="layui-input" type="text" name="orTrackingNumber" id="orTrackingNumber" value="${Bean.orTrackingNumber}" >
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

        $(function () {
            var status = '${Bean.orStatus}';
            var cop = '${Bean.orCourierCompany}';
            if (status != '') {
                $('#orStatus').val(status);
            }
            if (cop != '') {
                $('#orCourierCompany').val(cop);
            }
            form.render('select');
        });

        form.on('submit(submit)', function (data) {
            $.get('orders?method=Ship', data.field, function (msg) {
                if (msg === 'success') {
                    layer.msg('添加成功');
                    let index = parent.layer.getFrameIndex(window.name);
                    setTimeout(function () {
                        parent.layer.close(index);
                        parent.location.reload();
                    }, 1000);
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