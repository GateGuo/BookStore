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
    <title>增加咨询记录表信息</title>
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
                    <label class="layui-form-label">记录id</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="rId" id="rId" value="${Bean.rId}" disabled>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">用户id</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="rUId" id="rUId" value="${Bean.rUId}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">管理员id</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="rAId" id="rAId" value="${Bean.rAId}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">消息</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="rMessage" id="rMessage" value="${Bean.rMessage}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">数据流向标记</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="rMark" id="rMark" value="${Bean.rMark}" >
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