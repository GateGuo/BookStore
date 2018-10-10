$(function () {
    $(".add-bag").click(function () {
        if(getCookie("userId")){
            var bid=$(this).parent().parent().children("input").val();
            var uid=getCookie("userId");
            $.get("shoppingCart?m=doAdd",{"bid":bid,"uid":uid},function (data) {});
        }else {
            window.location.href='index.jsp';
        }
    });

    $.get("type?m=doShowAllTypes",{},function(data){
        var types=JSON.parse(data);
        for(t in types){
            $(".breadcrumb").append("<li><span> - </span><a href='books?m=doGetPageByTypeId&tid="+types[t].tId+"'>"+types[t].tName+"</a></li>");
        }
    });


});



function getCookie(name)
{
    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
    if(arr=document.cookie.match(reg))
        return unescape(arr[2]);
    else
        return null;
}