<%--
  Created by IntelliJ IDEA.
  User: Q2665_yubiums
  Date: 2018-09-28
  Time: 16:08:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/"; %>
<base href="<%=basePath%>">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>增加图书表信息</title>
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
                    <label class="layui-form-label">书名</label>
                    <div class="layui-input-block">
                        <input required class="layui-input" type="text" name="bName" id="bName">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">作者</label>
                    <div class="layui-input-block">
                        <input required class="layui-input" type="text" name="bAuthor" id="bAuthor">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">价格</label>
                    <div class="layui-input-block">
                        <input required class="layui-input" type="text" name="bPrice" id="bPrice">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">库存</label>
                    <div class="layui-input-block">
                        <input required class="layui-input" type="text" name="bCount" id="bCount">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">标签</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="bTag" id="bTag">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">描述</label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="text" name="bDescription" id="bDescription">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">分类id</label>
                    <!--<div class="layui-input-block">-->
                    <!--<input required class="layui-input" type="text" name="bTId" id="bTId">-->
                    <!--</div>-->
                    <div class="layui-input-inline">
                        <select lay-filter="big" name="big" id="big">
                            <option value="0">大类</option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                        <select name="bTId" id="bTId">
                            <option value="0">子类</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">图片</label>
                    <div class="layui-input-inline">
                        <input class="layui-input" disabled type="text" name="bImgName" id="bImgName">
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
<script type="text/javascript">
    layui.use(['layer', 'form', 'jquery', 'upload'], function () {
        var layer = layui.layer;
        var form = layui.form;
        var $ = layui.jquery;
        var upload = layui.upload;

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

        form.on('submit(submit)', function (data) {
            $.get('books?method=Add', data.field, function (msg) {
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

        var data;

        function setData(d) {
            data = d;
            console.log(data);
        }

        $(function () {
            $.get('books?method=GetType', '', function (msg) {
                // console.log(msg);
                setData(msg);
                $('#big').empty();
                for (let i = 0; i < msg.length; i++) {
                    if (msg[i].tLevel === 1) {
                        $('#big').append("<option value='" + msg[i].tId + "'>" + msg[i].tName + "</option>")
                    }
                }
                $('#bTId').empty();
                for (let i = 0; i < msg.length; i++) {
                    if (msg[i].tParentId === msg[0].tId) {
                        $('#bTId').append("<option value='" + msg[i].tId + "'>" + msg[i].tName + "</option>")
                    }
                }
                form.render('select');
            }, 'json');
        });

        form.on('select(big)', function (da) {
            $('#bTId').empty();
            for (let i = 0; i < data.length; i++) {
                if (data[i].tParentId.toString() === da.value) {
                    $('#bTId').append("<option value='" + data[i].tId + "'>" + data[i].tName + "</option>")
                }
            }
            form.render('select');
        });
    });
</script>
</html>