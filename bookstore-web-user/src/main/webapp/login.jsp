<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>登录</title>
    <link rel="stylesheet" href="css/login.css" />
    <link rel="shortcut icon" href="img/2.ico" />
</head>
<body>
<div id="logo">

</div>
<div class="q_login">
    <div class="q_login_title">
        账号密码登录
    </div>
    <div class="q_login_entry">
        推荐使用
        <a href="#" style="color: #3481cf;">快速安全登录</a>
        ,防止盗号。
    </div>
    <div class="q_login_span">

					<span>
						<img src="img/!.bmp" class="q_login_span_imge" />你还没有输入账号
					</span>
    </div>
    <div class="q_login_form">
        <form action="users" method="post" id="loginform">
            <input type="hidden" name="m" value="doLogin">
        <div class="q_login_inputOuter">
            <input   placeholder="用户名" class="input" name="username" type="text" />
            <input  placeholder="密码" class="input" name="password" type="password" />
        </div>
        <div class="q_login_submit">
            <button class="btn" id="login">登&nbsp;录</button>
        </div>
        </form>
    </div>
    <div class="q_login_a">
        <a href="#" >忘了密码？&nbsp;&nbsp;|&nbsp;</a>
        <a href="register.jsp" >注册新账号&nbsp;&nbsp;|&nbsp;</a>
        <a href="#" >意见反馈</a>
    </div>

</div>
<script src="js/vendor/jquery-1.12.3.min.js"></script>
<script>
$(function () {
    $("#login").click(function () {
        $("#loginform").submit();
    });
});
</script>
</body>
</html>
