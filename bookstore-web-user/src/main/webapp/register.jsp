<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>用户注册</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>

    <!-- 用于适应不同设备 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- bootstrap 样式表 -->
    <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>

    <!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <script src="js/myreg.js"></script>

</head>

<body style="padding-top:50px;">
<form class="form-horizontal" role="form" method="post" id="form" action="users">
    <input type="hidden" name="m" value="doReg">
    <div class="form-group">
        <label for="txtUserName" class="col-sm-2 control-label">用户名</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="txtUserName" name="username"
                   placeholder="请输入用户名" required>
            <span id="username.info" style="color:red"></span>
        </div>
    </div>

    <div class="form-group">
        <label for="txtEmail" class="col-sm-2 control-label">注册邮箱</label>
        <div class="col-sm-6">
            <input name="email" type="text" class="form-control" id="txtEmail"
                   placeholder="请输入注册邮箱" required>
            <span id="email.info" style="color:red"></span>
        </div>
    </div>

    <div class="form-group">
        <label for="txtphonenumber" class="col-sm-2 control-label">电话号码</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" name="phonenumber" id="txtphonenumber"
                   placeholder="请输入电话号码" required>
            <span id="phonenumbererror" style="color:red"></span>
        </div>
    </div>


    <div class="form-group">
        <label for="txtaddress" class="col-sm-2 control-label">地址</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" name="address" id="txtaddress"
                   placeholder="请输入地址" required>
            <span id="address.info" style="color:red"></span>
        </div>
    </div>

    <div class="form-group">
        <label for="txtname" class="col-sm-2 control-label">姓名</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" name="name" id="txtname"
                   placeholder="请输入姓名" required>
            <span id="name.info" style="color:red"></span>
        </div>
    </div>

    <div class="form-group">
        <label for="txtidcard" class="col-sm-2 control-label">身份证</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" name="idcard" id="txtidcard"
                   placeholder="请输入身份证" required>
            <span id="idcarderr" style="color:red"></span>
        </div>
    </div>

    <div class="form-group">
        <label for="txtPassword" class="col-sm-2 control-label">密码</label>
        <div class="col-sm-6">
            <input type="password" class="form-control" name="password" id="txtPassword"
                   placeholder="请输入密码" required>
            <span id="password.info" style="color:red"></span>
        </div>
    </div>

    <div class="form-group">
        <label for="txtRepeatPass" class="col-sm-2 control-label">重复密码</label>
        <div class="col-sm-6">
            <input type="password" class="form-control" name="repeatPass" id="txtRepeatPass"
                   placeholder="请再次输入密码" required>
            <span id="repeatPass.info" style="color:red"></span>
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-primary">注册</button>
        </div>
    </div>
</form>
</body>
</html>

