<%--
  Created by IntelliJ IDEA.
  User: Q2665_yubiums
  Date: 2018-09-27
  Time: 14:32:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>增加图书表信息</title>
    <script type="text/javascript" src="/layui/layui.js"></script>
    <script type="text/javascript" src="/js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="/layui/css/layui.css"/>
</head>
<body>
<div class="layui-container" style="margin-top: 10px;">
    <div class="layui-row">
        <div class="layui-col-lg-offset3 layui-col-lg6">
            <form class="layui-form-pane layui-form" action="" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label">书籍id</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="bId" id="bId" value="${Bean.bId}" disabled>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">书名</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="bName" id="bName" value="${Bean.bName}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">价格</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="bPrice" id="bPrice" value="${Bean.bPrice}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">库存</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="bCount" id="bCount" value="${Bean.bCount}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">标签</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="bTag" id="bTag" value="${Bean.bTag}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">描述</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="bDescription" id="bDescription" value="${Bean.bDescription}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">分类id</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="bTId" id="bTId" value="${Bean.bTId}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">上架时间</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="bUpTime" id="bUpTime" value="${Bean.bUpTime}" >
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