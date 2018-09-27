<%--
  Created by IntelliJ IDEA.
  User: Q2665_yubiums
  Date: 2018/9/14 0014
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>大学信息</title>
    <script type="text/javascript" src="/layui/layui.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="/layui/css/layui.css"/>
</head>
<body>

<table id="demo" lay-filter="test"></table>

<script type="text/html" id="barDemo">
    <%--<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>--%>
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<script src="/layui/layui.js"></script>
<script>
    layui.use(['table','layer'], function(){
        var table = layui.table;
        var layer = layui.layer;

        //第一个实例
        table.render({
            elem: '#demo'
            ,height: 362
            ,url: '' //数据接口
            ,page: true //开启分页
            ,cellMinWidth: 80
            ,toolbar: 'default'
            ,size: 'sm'
            ,even: true
            ,cols: [[ //表头
                {type:'checkbox', fixed: 'left'}
                ,{field: 'orId', title: '订单id',  sort: true, fixed: 'left'}
                ,{field: 'orNumber', title: '订单编号'}
                ,{field: 'orUId', title: '用户id'}
                ,{field: 'orTotalPrice', title: '总金额'}
                ,{field: 'orPayPrice', title: '支付金额'}
                ,{field: 'orCreateTime', title: '订单生成时间'}
                ,{field: 'orFinishTime', title: '订单完成时间'}
                ,{field: 'orStatus', title: '订单状态'}
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
                        area: ['550px', '350px'],
                        content: 'AddUniversity.html' //这里content是一个普通的url,todo 根据实际填写
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
                            area: ['550px', '350px'],
                            content: '/upduniversity?universityNo='+data[0].universityNo//todo 根据实际填写
                        });
                    }
                    break;
                case 'delete':
                    if(data.length === 0){
                        layer.msg('请选择一行');
                    } else {
                        layer.msg('删除');
                    }
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
                    obj.del(); //删除对应行（tr）的DOM结构
                    layer.close(index);
                    //向服务端发送删除指令
                });
            } else if(layEvent === 'edit'){
                // layer.msg('编辑操作');
                // layer.alert('编辑 [id]：'+ data.universityNo);
                layer.open({
                    type: 2,
                    area: ['550px', '350px'],
                    content: '/upduniversity?universityNo='+data.universityNo//todo 根据实际填写
                });
            }
        });
    });
</script>
</body>

</html>
