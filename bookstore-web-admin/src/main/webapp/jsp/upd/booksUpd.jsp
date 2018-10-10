<%--
  Created by IntelliJ IDEA.
  User: Q2665_yubiums
  Date: 2018-09-28
  Time: 18:56:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<% String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/"; %>
<base href="<%=basePath%>">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>增加图书表信息</title>
    <script type="text/javascript" src="js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="layui/css/layui.css"/>
</head>
<body>
<div class="layui-container" style="margin-top: 10px;">
    <div class="layui-row">
        <div class="layui-col-lg-offset3 layui-col-lg6">
            <form class="layui-form-pane layui-form" action="" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label">书籍id</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="bId" id="bId" value="${Bean.BId}" disabled>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">书名</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="bName" id="bName" value="${Bean.BName}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">作者</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="bAuthor" id="bAuthor" value="${Bean.BAuthor}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">价格</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="bPrice" id="bPrice" value="${Bean.BPrice}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">库存</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="bCount" id="bCount" value="${Bean.BCount}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">标签</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="bTag" id="bTag" value="${Bean.BTag}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">描述</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="bDescription" id="bDescription"
                               value="${Bean.BDescription}">
                    </div>
                </div>
                <%--<div class="layui-form-item">--%>
                <%--<label class="layui-form-label">分类id</label>--%>
                <%--<div class="layui-input-block">--%>
                <%--<input class="layui-input" type="text" name="bTId" id="bTId" value="${Bean.BTId}" >--%>
                <%--</div>--%>
                <%--</div>--%>
                <div class="layui-form-item test-region1"></div>
                <div class="layui-form-item">
                    <label class="layui-form-label">上架时间</label>
                    <div class="layui-input-block">
                        <input class="layui-input" disabled type="text" name="bUpTime" id="bUpTime"
                               value="${Bean.BUpTime}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">销量</label>
                    <div class="layui-input-block">
                        <input disabled class="layui-input" type="text" name="bSalesVolume" id="bSalesVolume"
                               value="${Bean.BSalesVolume}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">图片名</label>
                    <div class="layui-input-inline">
                        <input class="layui-input" value="${Bean.BImgName}" disabled type="text" name="bImgName" id="bImgName">
                    </div>
                    <div class="layui-input-inline4">
                        <button type="button" class="layui-btn" id="up">
                            <i class="layui-icon">&#xe67c;</i>上传图片
                        </button>
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
<script type="text/javascript" src="layui/layui.js"></script>
<script type="text/javascript">
    layui.config({
        base: 'js/',
    });

    layui.use(['laydate', 'layer', 'form', 'upload', 'jquery', 'interact'], function () {
        var layer = layui.layer;
        var form = layui.form;
        var upload = layui.upload;
        var $ = layui.jquery;
        var interact = layui.interact;

        form.on('submit(submit)', function (data) {
            console.log(data.field);
            if (data.field["type[1]"].length != 0) {
                $.get('books?method=Edit', data.field, function (msg) {
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
                        layer.error('提交出错')
                    }
                });
            } else {
                layer.msg('数据应该非空,请检查');
            }
            return false;
        });

//执行实例
        var uploadInst = upload.render({
            elem: '#up' //绑定元素
            , url: 'books?method=Upload' //上传接口
            , accept: 'images'
            , acceptMime: 'image/jpg, image/jpeg, image/png'
            , exts: 'jpg|jpeg|png'
            , field: 'image'
            , size: 4096
            , choose: function (obj) {
                //将每次选择的文件追加到文件队列
                var files = obj.pushFile();

                //预读本地文件，如果是多文件，则会遍历。(不支持ie8/9)
                obj.preview(function (index, file, result) {
                    console.log(index); //得到文件索引
                })
            }
            , before: function (obj) { //obj参数包含的信息，跟 choose回调完全一致，可参见上文。
                layer.load(); //上传loading
            }
            , done: function (res) {
                console.log(res[0].fileName);
                $('#bImgName').val(res[0].fileName);
                layer.msg('已经上传');
                layer.closeAll('loading');
            }
            , error: function () {
                //请求异常回调
                layer.msg('error');
                layer.closeAll('loading');
            }
        });


        var data = '${data}';


        data = JSON.parse(data).map(function (item) {
            return {
                id: item.tId,
                pid: item.tParentId,
                title: item.tName
            }
        });


        // var data=[{"id":1,"pid":0,"title":"1-1"},{"id":2,"pid":0,"title":"1-2"},{"id":3,"pid":0,"title":"1-3"},{"id":4,"pid":1,"title":"1-1-1"},{"id":5,"pid":1,"title":"1-1-2"},{"id":6,"pid":2,"title":"1-2-1"},{"id":7,"pid":2,"title":"1-2-3"},{"id":8,"pid":3,"title":"1-3-1"},{"id":9,"pid":3,"title":"1-3-2"},{"id":10,"pid":4,"title":"1-1-1-1"},{"id":11,"pid":4,"title":"1-1-1-2"}];
        interact.render({
            elem: '.test-region1',
            title: '类别',
            data: data,
            name: 'type',
            hint: ['请选择大类', '请选择子类']
        });
        interact.on('interact(test-region1)', function (data) {
            console.dir(data);
        });
    });
</script>
</html>