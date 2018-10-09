$(function(){
    $("#humanities ul li a").click(function () {
        var title=$(this).attr('aria-controls');
        var name=$(this).html();
        $.get("books?m=doGetHotBooks",{"name":name,"number":8},function(data){
            var books=JSON.parse(data);
            for(var b in books){
                var bookInfo=$("#" + title).children().children('div').children().children().eq(b);
                bookInfo.children().children().children().children().eq(0).children('a').children('img').attr('src',books[b].bImgName);
                bookInfo.children().children().children().children().eq(0).children('a').attr('href',"books?m=doDetails&bId="+books[b].bId);
                bookInfo.children().children().children().children().eq(2).children('h4').children('a').attr('href',"books?m=doDetails&bId="+books[b].bId);
                bookInfo.children().children().children().children().eq(1).children('div').children('span').html("￥"+books[b].bPrice);
                bookInfo.children().children().children().children().eq(2).children('h3').html(books[b].bName);
                bookInfo.children().children().children().children().eq(3).children('input').eq(0).val(books[b].bId);
                bookInfo.children().children().children().children().eq(3).children('ul').children('li').children('a').removeAttr("href");

            }
        });
    });


    $("#literature ul li a").click(function () {
        var title=$(this).attr('aria-controls');
        var name=$(this).html();
        $.get("books?m=doGetHotBooks",{"name":name,"number":16},function(data){
            var books=JSON.parse(data);
            for(i=0,j=0;i<7&&j<books.length;i++,j=j+2){
                var bookInfo=$("#" + title).children().children('div').children().children().eq(i);
                bookInfo.children().children().eq(0).children().children().eq(0).children('a').children('img').attr('src',books[j].bImgName);
                bookInfo.children().children().eq(0).children().children().eq(0).children('a').attr('href',"books?m=doDetails&bId="+books[j].bId);
                bookInfo.children().children().eq(0).children().children().eq(1).children('div').children('span').html("￥"+books[j].bPrice);
                bookInfo.children().children().eq(0).children().children().eq(2).children('h3').html(books[j].bName);
                bookInfo.children().children().eq(0).children().children().eq(3).children('input').attr('value',books[j].bId);
                bookInfo.children().children().eq(0).children().children().eq(3).children('ul').children('li').children('a').removeAttr("href");
                bookInfo.children().children().eq(0).children().children().eq(2).children('h4').children('a').attr('href',"books?m=doDetails&bId="+books[j].bId);
                bookInfo.children().children().eq(1).children().children().eq(2).children('h4').children('a').attr('href',"books?m=doDetails&bId="+books[j+1].bId);

                bookInfo.children().children().eq(1).children().children().eq(3).children('input').attr('value',books[j+1].bId);
                bookInfo.children().children().eq(1).children().children().eq(3).children('ul').children('li').children('a').removeAttr("href");
                bookInfo.children().children().eq(1).children().children().eq(0).children('a').children('img').attr('src',books[j+1].bImgName);
                bookInfo.children().children().eq(1).children().children().eq(0).children('a').attr('href',"books?m=doDetails&bId="+books[j+1].bId);
                bookInfo.children().children().eq(1).children().children().eq(1).children('div').children('span').html("￥"+books[j+1].bPrice);
                bookInfo.children().children().eq(1).children().children().eq(2).children('h3').html(books[j+1].bName);

            }

        });
    });




    $("#technology ul li a").click(function () {
        var title=$(this).attr('aria-controls');
        var name=$(this).html();
        $.get("books?m=doGetHotBooks",{"name":name,"number":16},function(data){
            var books=JSON.parse(data);
            for(i=0,j=0;i<7&&j<books.length;i++,j=j+2){
                var bookInfo=$("#" + title).children().children('div').children().children().eq(i);
                bookInfo.children().children().eq(0).children().children().eq(0).children('a').children('img').attr('src',books[j].bImgName);
                bookInfo.children().children().eq(0).children().children().eq(0).children('a').attr('href',"books?m=doDetails&bId="+books[j].bId);
                bookInfo.children().children().eq(0).children().children().eq(1).children('div').children('span').html("￥"+books[j].bPrice);
                bookInfo.children().children().eq(0).children().children().eq(2).children('h3').html(books[j].bName);
                bookInfo.children().children().eq(0).children().children().eq(3).children('input').attr('value',books[j].bId);
                bookInfo.children().children().eq(0).children().children().eq(3).children('ul').children('li').children('a').removeAttr("href");

                bookInfo.children().children().eq(0).children().children().eq(2).children('h4').children('a').attr('href',"books?m=doDetails&bId="+books[j].bId);
                bookInfo.children().children().eq(1).children().children().eq(2).children('h4').children('a').attr('href',"books?m=doDetails&bId="+books[j+1].bId);
                bookInfo.children().children().eq(1).children().children().eq(3).children('input').attr('value',books[j+1].bId);
                bookInfo.children().children().eq(1).children().children().eq(3).children('ul').children('li').children('a').removeAttr("href");
                bookInfo.children().children().eq(1).children().children().eq(0).children('a').children('img').attr('src',books[j+1].bImgName);
                bookInfo.children().children().eq(1).children().children().eq(0).children('a').attr('href',"books?m=doDetails&bId="+books[j+1].bId);
                bookInfo.children().children().eq(1).children().children().eq(1).children('div').children('span').html("￥"+books[j+1].bPrice);
                bookInfo.children().children().eq(1).children().children().eq(2).children('h3').html(books[j+1].bName);

            }

        });
    });

    $("#usborne ul li a").click(function () {
        var title=$(this).attr('aria-controls');
        var name=$(this).html();
        $.get("books?m=doGetHotBooks",{"name":name,"number":16},function(data){
            var books=JSON.parse(data);
            for(i=0,j=0;i<7&&j<books.length;i++,j=j+2){
                var bookInfo=$("#" + title).children().children('div').children().children().eq(i);
                bookInfo.children().children().eq(0).children().children().eq(0).children('a').children('img').attr('src',books[j].bImgName);
                bookInfo.children().children().eq(0).children().children().eq(0).children('a').attr('href',"books?m=doDetails&bId="+books[j].bId);
                bookInfo.children().children().eq(0).children().children().eq(1).children('div').children('span').html("￥"+books[j].bPrice);
                bookInfo.children().children().eq(0).children().children().eq(2).children('h3').html(books[j].bName);
                bookInfo.children().children().eq(0).children().children().eq(3).children('input').attr('value',books[j].bId);
                bookInfo.children().children().eq(0).children().children().eq(3).children('ul').children('li').children('a').removeAttr("href");
                bookInfo.children().children().eq(0).children().children().eq(2).children('h4').children('a').attr('href',"books?m=doDetails&bId="+books[j].bId);
                bookInfo.children().children().eq(1).children().children().eq(2).children('h4').children('a').attr('href',"books?m=doDetails&bId="+books[j+1].bId);

                bookInfo.children().children().eq(1).children().children().eq(3).children('input').attr('value',books[j+1].bId);
                bookInfo.children().children().eq(1).children().children().eq(3).children('ul').children('li').children('a').removeAttr("href");
                bookInfo.children().children().eq(1).children().children().eq(0).children('a').children('img').attr('src',books[j+1].bImgName);
                bookInfo.children().children().eq(1).children().children().eq(0).children('a').attr('href',"books?m=doDetails&bId="+books[j+1].bId);
                bookInfo.children().children().eq(1).children().children().eq(1).children('div').children('span').html("￥"+books[j+1].bPrice);
                bookInfo.children().children().eq(1).children().children().eq(2).children('h3').html(books[j+1].bName);

            }

        });
    });

    $("#motivational ul li a").click(function () {
        var title=$(this).attr('aria-controls');
        var name=$(this).html();
        $.get("books?m=doGetHotBooks",{"name":name,"number":16},function(data){
            var books=JSON.parse(data);
            for(i=0,j=0;i<7&&j<books.length;i++,j=j+2){
                var bookInfo=$("#" + title).children().children('div').children().children().eq(i);
                bookInfo.children().children().eq(0).children().children().eq(0).children('a').children('img').attr('src',books[j].bImgName);
                bookInfo.children().children().eq(0).children().children().eq(0).children('a').attr('href',"books?m=doDetails&bId="+books[j].bId);
                bookInfo.children().children().eq(0).children().children().eq(1).children('div').children('span').html("￥"+books[j].bPrice);
                bookInfo.children().children().eq(0).children().children().eq(2).children('h3').html(books[j].bName);
                bookInfo.children().children().eq(0).children().children().eq(3).children('input').attr('value',books[j].bId);
                bookInfo.children().children().eq(0).children().children().eq(3).children('ul').children('li').children('a').removeAttr("href");
                bookInfo.children().children().eq(0).children().children().eq(2).children('h4').children('a').attr('href',"books?m=doDetails&bId="+books[j].bId);
                bookInfo.children().children().eq(1).children().children().eq(2).children('h4').children('a').attr('href',"books?m=doDetails&bId="+books[j+1].bId);

                bookInfo.children().children().eq(1).children().children().eq(3).children('input').attr('value',books[j+1].bId);
                bookInfo.children().children().eq(1).children().children().eq(3).children('ul').children('li').children('a').removeAttr("href");
                bookInfo.children().children().eq(1).children().children().eq(0).children('a').children('img').attr('src',books[j+1].bImgName);
                bookInfo.children().children().eq(1).children().children().eq(0).children('a').attr('href',"books?m=doDetails&bId="+books[j+1].bId);
                bookInfo.children().children().eq(1).children().children().eq(1).children('div').children('span').html("￥"+books[j+1].bPrice);
                bookInfo.children().children().eq(1).children().children().eq(2).children('h3').html(books[j+1].bName);

            }

        });
    });


    $(".add-bag").click(function () {
        if(getCookie("userId")){
            var bid=$(this).parent().parent().children("input").val();
            var uid=getCookie("userId");
            $.get("shoppingCart?m=doAdd",{"bid":bid,"uid":uid},function (data) {});
        }else {
            window.location.href='index.jsp';
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