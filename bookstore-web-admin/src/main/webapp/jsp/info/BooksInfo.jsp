<%--
  Created by IntelliJ IDEA.
  User: Q2665_yubiums
  Date: 2018/9/14 0014
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/"; %>
<base href="<%=basePath%>">
<html>
<head>
    <meta charset="UTF-8">
    <title>图书信息</title>
    <script type="text/javascript" src="layui/layui.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="layui/css/layui.css"/>
</head>
<body>

<div class="layui-table-tool-temp" hidden id="he-bar">
    <div class="layui-inline" lay-event="add">
        <i class="layui-icon layui-icon-add-1"></i>
    </div>
    <div class="layui-inline" lay-event="update">
        <i class="layui-icon layui-icon-edit"></i>
    </div>
    <div class="layui-inline" lay-event="refresh">
        <i class="layui-icon layui-icon-refresh"></i>
    </div>
</div>


<table id="demo" lay-filter="test"></table>

<script type="text/html" id="barDemo">
    <%--<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>--%>
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<script src="layui/layui.js"></script>
<script>
    layui.use(['table','layer','jquery'], function(){
        var table = layui.table;
        var layer = layui.layer;
        var $ = layui.jquery;

        //第一个实例
        table.render({
            elem: '#demo'
            ,height: 450
            ,url: 'books?method=Show' //数据接口
            ,page: true //开启分页
            ,cellMinWidth: 80
            ,toolbar: '#he-bar'
            ,size: 'sm'
            ,even: true
            ,cols: [[ //表头
                {type:'checkbox', fixed: 'left'}
                ,{field: 'bId', title: '书籍id',  sort: true, fixed: 'left'}
                ,{field: 'bName', title: '书名'}
                ,{field: 'bAuthor', title: '作者'}
                ,{field: 'bPrice', title: '价格'}
                ,{field: 'bCount', title: '库存'}
                ,{field: 'bTag', title: '标签'}
                ,{field: 'bDescription', title: '描述'}
                ,{field: 'bTId', title: '分类id'}
                ,{field: 'bUpTime', title: '上架时间'}
                ,{field: 'bSalesVolume', title: '销量'}
                ,{field: 'bImgName', title: '图片名'}
                ,{fixed: 'right', width: 120, align:'center', toolbar: '#barDemo'}
            ]]
            ,response: {
                statusCode: 200 //重新规定成功的状态码为 200，table 组件默认为 0
            }
            ,parseData: function(res){ //将原始数据解析成 table 组件所规定的数据, todo 根据实际填写
                return {
                    "code": res.code, //解析接口状态
                    "msg": res.msg, //解析提示文本
                    "count": res.count, //解析数据长度
                    "data": JSON.parse(res.data) //解析数据列表
                };
            }
        });
        //监听头工具栏事件
        table.on('toolbar(test)', function(obj){
            var checkStatus = table.checkStatus(obj.config.id)
                ,data = checkStatus.data; //获取选中的数据
            switch(obj.event){
                case 'add':
                    layer.open({
                        type: 2,
                        area: ['750px', '450px'],
                        content: 'jsp/add/booksAdd.jsp' //这里content是一个普通的url,todo 根据实际填写
                    });
                    break;
                case 'update':
                    if(data.length === 0){
                        layer.msg('请选择一行');
                    } else if(data.length > 1){
                        layer.msg('只能同时编辑一个');
                    } else {
                        layer.open({
                            type: 2,
                            area: ['750px', '450px'],
                            content: 'books?method=EditGet&bId='+data[0].aId//todo 根据实际填写
                        });
                    }
                    break;
                case 'refresh':
                    location.reload();
                    break;
            };
        });

        //监听行工具事件
        table.on('tool(test)', function(obj){ //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                    ,layEvent = obj.event; //获得 lay-event 对应的值
            if(layEvent === 'detail'){
                layer.msg('查看操作');
            } else if(layEvent === 'del'){
                layer.confirm('真的删除行么', function(index){
                    layer.close(index);
                    //向服务端发送删除指令
                    $.get('books?method=Del', {'bId': data.bId}, function (msg) {
                        console.log(msg);
                        if (msg === 'success') {
                            layer.msg('删除成功');
                            obj.del(); //删除对应行（tr）的DOM结构
                        } else if (msg === 'fail') {
                            layer.msg('删除失败');
                        } else {
                            layer.msg('删除出错')
                        }
                    });
                });
            } else if(layEvent === 'edit'){
                // layer.msg('编辑操作');
                // layer.alert('编辑 [id]：'+ data.universityNo);
                layer.open({
                    type: 2,
                    area: ['750px', '450px'],
                    content: 'books?method=EditGet&bId='+data.bId //todo 根据实际填写
                });
            }
        });
    });
</script>
</body>

</html>
