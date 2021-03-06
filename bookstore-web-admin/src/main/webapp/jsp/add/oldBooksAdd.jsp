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
    <title>增加二手图书表信息</title>
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
                    <label class="layui-form-label">二手书名</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="obName" id="obName">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">二手书价格</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="obPrice" id="obPrice">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">库存</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="obCount" id="obCount">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">标签</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="obTag" id="obTag">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">描述</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="obDescription" id="obDescription">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">分类id</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="obTypeId" id="obTypeId">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">卖家id</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="obSellerId" id="obSellerId">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">上架时间</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="obTime" id="obTime">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">销量</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="obSalesVolume" id="obSalesVolume">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">图片名</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="obImgName" id="obImgName">
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