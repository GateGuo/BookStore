$(function () {
    $.get("type?m=doShowAllTypes",{},function(data){
        var types=JSON.parse(data);
        for(t in types){
            $("#type-list").children('ul').append("<li><a href='books?m=doGetPageByTypeId&tid="+types[t].tId+"'>"+types[t].tName+"</a></li>");
        }
    });


    $.get("comments?m=doGetFive&bid="+GetQueryString("bId"),{},function (data) {
        for(c in data){
            $(".commentlists").append("<li class='sin_comment depth-1'>\n" +
                "                                            <div class='the_comment'>\n" +
                "                                                <div class='alex'>\n" +
                "                                                    <img alt='comment' src='img/blog/default.jpg'>\n" +
                "                                                </div>\n" +
                "                                                <div class='comment_box'>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<input type='hidden' value='' class='cid'><input type='hidden' value='' class='uid'>\n" +
                "                                                    <div class='comment_author meta'>\n" +
                "                                                        <p class='name'>\n" +
                "                                                            <strong>Jonathan Doe</strong>\n" +
                "                                                        </p>\n" +
                "                                                        <p class='comment_time'>\n" +
                "                                                            2015 15 July\n" +
                "                                                        </p>\n" +
                "                                                    </div>\n" +
                "                                                    <div class='comment_text'>\n" +
                "                                                        <p  class='comments'>Shabby chic selfies pickled Tumblr letterpress iPhone. Wolf vegan retro selvage literally Wes Anderson ethical four loko. Meggings blog chambray tofu pour-over. Pour-over Tumblr keffiyeh, cornhole whatever cardigan Tonx lomo.Shabby chic selfies pickled Tumblr letterpress iPhone. </p>\n" +
                "                                                        <a class='comment-reply-link hidden-xs firstCall' data-toggle='modal' data-target='#myModal' dataid='' >回复</a>\n" +
                "                                                        <a class='callback' >查看回复</a>\n" +
                "                                                    </div>\n" +
                "                                                </div>\n" +
                "                                            </div>\n" +
                "                                            <ul class='children_comment'>\n" +
                "                                            </ul>\n" +
                "                                        </li>");
            $(".commentlists").children("li").eq(c).children("div").children("div").eq(1).children("div").eq(0).children("p").eq(0).children("strong").html(data[c].cUName);
            $(".commentlists").children("li").eq(c).children("div").children("div").eq(1).children("input").eq(0).val(data[c].cId);
            $(".commentlists").children("li").eq(c).children("div").children("div").eq(1).children("input").eq(1).val(data[c].cUId);
            $(".commentlists").children("li").eq(c).children("div").children("div").eq(1).children("div").eq(0).children("p").eq(1).html(getMyDate(parseInt(data[c].cTime)));
            $(".commentlists").children("li").eq(c).children("div").children("div").eq(1).children("div").eq(1).children("p").html(data[c].cContent);
        }
    });






    $(".commentlists").on("click",'.callback',function () {
        var parent=$(this).parent().parent().parent().parent().children("ul");
        if ($(this).html() === "收起回复") {
            $(this).html('查看回复');
        } else {
            parent.html("");
            $.get("comments?m=doGetCallBack&bid="+GetQueryString("bId")+"&cid="+$(this).parent().parent().children("input").val(),{},function (data) {
                for (c in data){
                    console.log(parent.attr('class'));
                    parent.append(" <li class='comment odd depth-2'>\n" +
                        "                                                     <div class='the_comment'>\n" +
                        "                                                <div class='alex'>\n" +
                        "                                                    <img alt='comment' src='img/blog/default.jpg'>\n" +
                        "                                                </div>\n" +
                        "                                                <div class='comment_box'>\n" +
                        "\t\t\t\t\t\t\t\t\t\t\t\t\t<input type='hidden' value='' class='cid'><input type='hidden' value='' class='uid'>\n" +
                        "                                                    <div class='comment_author meta'>\n" +
                        "                                                        <p class='name'>\n" +
                        "                                                            <strong>Jonathan Doe</strong>\n" +
                        "                                                        </p>\n" +
                        "                                                        <p class='comment_time'>\n" +
                        "                                                            2015 15 July\n" +
                        "                                                        </p>\n" +
                        "                                                    </div>\n" +
                        "                                                    <div class='comment_text'>\n" +
                        "                                                        <p  class='comments'>Shabby chic selfies pickled Tumblr letterpress iPhone. Wolf vegan retro selvage literally Wes Anderson ethical four loko. Meggings blog chambray tofu pour-over. Pour-over Tumblr keffiyeh, cornhole whatever cardigan Tonx lomo.Shabby chic selfies pickled Tumblr letterpress iPhone. </p>\n" +
                        "                                                        <a class='comment-reply-link hidden-xs secondCall' data-toggle='modal' data-target='#myModal' >回复</a>\n" +
                        "                                                    </div>\n" +
                        "                                                </div>\n" +
                        "                                            </div>\n" +
                        "                                                </li>");

                    parent.children("li").eq(c).children("div").children("div").eq(1).children("div").eq(0).children("p").eq(0).children("strong").html(data[c].cUName+"&nbsp;&nbsp;"+"回复"+"&nbsp;&nbsp;"+data[c].cUTargetName);
                    parent.children("li").eq(c).children("div").children("div").eq(1).children("input").eq(0).val(data[c].cId);
                    parent.children("li").eq(c).children("div").children("div").eq(1).children("input").eq(1).val(data[c].cUId);
                    parent.children("li").eq(c).children("div").children("div").eq(1).children("div").eq(0).children("p").eq(1).html(getMyDate(parseInt(data[c].cTime)));
                    parent.children("li").eq(c).children("div").children("div").eq(1).children("div").eq(1).children("p").html(data[c].cContent);
                }

            });
            $(this).html('收起回复');
        }
        $(this).parent().parent().parent().parent().children('ul').slideToggle(1000);
    });

    $("#add").click(function () {
        if(getCookie("userId")) {
            var uid = getCookie("userId");
            var bid = GetQueryString("bId");
            $.get("shoppingCart?m=doAdd", {"bid": bid, "uid": uid}, function (data) {});
        }else {
            window.location.href='index.jsp';
        }
    });

    $("#addComment").click(function () {
        if(getCookie("userId")) {
            var uid = getCookie("userId");
            var bid = GetQueryString("bId");
            var content=$("#message").val();
            console.log(content);
            $.get("comments?m=doAddComment", {"bid": bid, "uid": uid,"content":content}, function (data) {});
        }else {
            window.location.href='index.jsp';
        }
    });


    $(".commentlists").on("click",'.firstCall',function () {
        var targetid=$(this).parent().parent().children("input").eq(1).val();
        var parentid=$(this).parent().parent().children("input").eq(0).val();
        var uid = getCookie("userId");
        var bid = GetQueryString("bId");
        $("#call").click(function () {
            var content=$("#msg").val();
            $.get("comments?m=doCallBack", {"bid": bid, "uid": uid,"targetid":targetid,"parentid":parentid,"content":content}, function (data) {});
        });
    });

    $(".commentlists").on("click",'.secondCall',function () {
        var targetid=$(this).parent().parent().children("input").eq(1).val();
        var parentid=$(this).parent().parent().parent().parent().parent().parent().children("div").children("div").eq(1).children("input").eq(0).val();
        var uid = getCookie("userId");
        var bid = GetQueryString("bId");
        $("#call").click(function () {
            var content=$("#msg").val();
            $.get("comments?m=doCallBack", {"bid": bid, "uid": uid,"targetid":targetid,"parentid":parentid,"content":content}, function (data) {});
        });
    });




});


function GetQueryString(name) {
    var reg=new RegExp("(^|&)"+name+"=([^&]*)(&|$)");
    var r=window.location.search.substr(1).match(reg);
    if(r!=null) return unescape(r[2]);
    return null;
}

//获得年月日      得到日期oTime
function getMyDate(str){
    var oDate = new Date(str),
        oYear = oDate.getFullYear(),
        oMonth = oDate.getMonth()+1,
        oDay = oDate.getDate(),
        oTime = oYear +'-'+ getzf(oMonth) +'-'+ getzf(oDay) ;//最后拼接时间
    return oTime;
};
//补0操作
function getzf(num){
    if(parseInt(num) < 10){
        num = '0'+num;
    }
    return num;
}

function getCookie(name)
{
    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
    if(arr=document.cookie.match(reg))
        return unescape(arr[2]);
    else
        return null;
}