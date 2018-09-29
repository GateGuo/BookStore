<%@ page import="jdk.nashorn.internal.ir.RuntimeNode" %><%--
  Created by IntelliJ IDEA.
  User: Q2665_yubiums
  Date: 2018/9/14 0014
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; %>
<base href="<%=basePath%>">
<html>
<head>
    <meta charset="UTF-8">
    <title>用户信息</title>
    <link rel="stylesheet" type="text/css" media="screen" href="layui/css/layui.css"/>
</head>
<body>
<table id="demo" lay-filter="test"></table>

<script type="text/html" id="barDemo">
    <%--<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>--%>
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<script type="text/javascript" src="layui/layui.js"></script>
<script>
    layui.use(['table','layer','jquery'], function(){
        var table = layui.table;
        var layer = layui.layer;
        var $ = layui.jquery;

        //第一个实例
        table.render({
            elem: '#demo'
            ,height: 450
            ,url: 'users?method=Show' //数据接口
            ,page: true //开启分页
            ,cellMinWidth: 80
            ,toolbar: true
            ,size: 'sm'
            ,even: true
            ,cols: [[ //表头
                // { type:'checkbox', fixed: 'left'}
                {field: 'uId', title: '用户id',  sort: true, fixed: 'left'}
                ,{field: 'uUsername', title: '用户名'}
                ,{field: 'uPassword', title: '密码'}
                ,{field: 'uVipLevel', title: '会员等级'}
                ,{field: 'uIdCard', title: '身份证'}
                ,{field: 'uName', title: '姓名'}
                ,{field: 'uAr', title: '省市区'}
                ,{field: 'uAddress', title: '地址'}
                ,{field: 'uPhonenumber', title: '手机号码'}
                ,{field: 'uAccountBalance', title: '账户余额'}
                ,{field: 'uSalesBalance', title: '销售余额'}
                ,{field: 'uTotalRecharge', title: '总共充值金额'}
                ,{field: 'uIsSeller', title: '是否卖家'}
                ,{fixed: 'right',title: '操作', width: 120, align:'center', toolbar: '#barDemo'}
            ]]
            ,response: {
                statusCode: 200 //重新规定成功的状态码为 200，table 组件默认为 0
            }
            ,parseData: function(res){ //将原始数据解析成 table 组件所规定的数据, todo 根据实际填写
                console.log(res.data);
                return {
                    "code": res.code, //解析接口状态
                    "msg": res.msg, //解析提示文本
                    "count": res.count, //解析数据长度
                    "data": JSON.parse(res.data) //解析数据列表
                };
            }
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
                    $.get('users?method=Del', {'uId': data.uId}, function (msg) {
                        console.log(msg);
                        if (msg === 'success') {
                            layer.msg('删除成功');
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
                    content: 'users?method=EditGet&uId='+data.uId//todo 根据实际填写
                });
            }
        });
    });
</script>
</body>

</html>
