var flag = {
    "email":false,
    "username":false,
    "phonenumber":false,
    "password":false,
};

$(function(){
    // email验证
    $("#txtEmail").blur(function(){
        var email = $(this).val();

        var pattern=/\b(^['_A-Za-z0-9-]+(\.['_A-Za-z0-9-]+)*@([A-Za-z0-9-])+(\.[A-Za-z0-9-]+)*((\.[A-Za-z0-9]{2,})|(\.[A-Za-z0-9]{2,}\.[A-Za-z0-9]{2,}))$)\b/;
        if(!pattern.test(email)){
            $("#email\\.info").html("Email格式不正确");
            return;
        }else{
            $("#email\\.info").html("");
            flag.email = true;
        }

        // 邮箱重复校验
    });

    $("#txtUserName").blur(function(){
        // 用户名校验
        var username = $(this).val();

        // 校验规则，可调整
        var pattern = /\b(^['A-Za-z0-9]{4,20}$)\b/;
        if(!pattern.test(username)){
            $("#username\\.info").html("用户名不合法");
            return;
        }else{
            $("#username\\.info").html("");
            flag.username = true;
        }
    });

    $("#txtphonenumber").blur(function(){

        // 电话号码校验
        var phonenumber = $(this).val();
        // 校验规则，可调整
        var pattern = /\b(^1(3|4|5|7|8)\d{9}$)\b/;
        if(!pattern.test(phonenumber)){
            $("#phonenumbererror").html("电话号码不合法");
            return;
        }else{
            $("#phonenumbererror").html("");
            flag.phonenumber = true;
            return;
        }
    });


    $("#txtidcard").blur(function(){

        // 身份证校验
        var idcard = $(this).val();
        // 校验规则，可调整
        var pattern = /\b(^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$)|(^[1-9]\d{5}\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}$)\b/;
        if(!pattern.test(idcard)){
            $("#idcarderr").html("身份证不合法");
            return;
        }else{
            $("#idcarderr").html("");
            flag.phonenumber = true;
            return;
        }
    });

    // 密码校验
    $("#txtPassword").blur(function(){
        var password=$(this).val();

        var pattern = /\b(^['A-Za-z0-9]{6,20}$)\b/;
        if (!pattern.test(password)) {
            $("#password\\.info").html("密码格式不正确");
            return;
        }else{
            $("#password\\.info").html("");
            //flag.password=true;
            return;
        }
    });


    // 密码重复校验
    $("#txtRepeatPass").blur(function(){
        var repeatPass = $(this).val();

        var pattern = /\b(^['A-Za-z0-9]{6,20}$)\b/;
        if (repeatPass!=$("#txtPassword").val()) {
            $("#repeatPass\\.info").html("两次密码输入不一致");
            return;
        }else{
            $("#repeatPass\\.info").html("");
            flag.password = true;
            return;
        }
    });

    $("#form").submit(function(){
        var ok = flag.email&&flag.password&&flag.username&&flag.phonenumber;
        if(ok==false){
            alert("表单项正在检测或存在错误");
            history.back();
            return false;
        }
        return true;
    });

})
