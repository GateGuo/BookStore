$(function(){
    $("#humanities ul li a").click(function () {
        var title=$(this).attr('aria-controls');
        var name=$(this).html();
        $.get("books?m=doGetHotBooks",{"name":name,"number":8},function(data){
            var books=JSON.parse(data);
            for(var b in books){
                var bookInfo=$("#" + title).children().children('div').children().children().eq(b);
                bookInfo.children().children().children().children().eq(0).children('a').children('img').attr('src',books[b].bImgName);
                // bookInfo.children().children().children().children().eq(0).children('a').attr('href',""+books[b].bId);
                bookInfo.children().children().children().children().eq(1).children('div').children('span').html("￥"+books[b].bPrice);
                bookInfo.children().children().children().children().eq(2).children('h3').html(books[b].bName);
                bookInfo.children().children().children().children().eq(2).children('h4').eq(0).html(books[b].bDescription);

            }
        });
    });


    $("#literature ul li a").click(function () {
        var title=$(this).attr('aria-controls');
        var name=$(this).html();
        $.get("books?m=doGetHotBooks",{"name":name,"number":16},function(data){
            var books=JSON.parse(data);
            console.log(books);
            for(i=0,j=0;i<7&&j<books.length;i++,j=j+2){
                var bookInfo=$("#" + title).children().children('div').children().children().eq(i);
                bookInfo.children().children().eq(0).children().children().eq(0).children('a').children('img').attr('src',books[j].bImgName);
                // bookInfo.children().children().eq(0).children().children().eq(0).children('a').attr('href',""+books[j].bId);
                bookInfo.children().children().eq(0).children().children().eq(1).children('div').children('span').html("￥"+books[j].bPrice);
                bookInfo.children().children().eq(0).children().children().eq(2).children('h3').html(books[j].bName);
                bookInfo.children().children().eq(0).children().children().eq(2).children('h4').eq(0).html(books[j].bDescription);

                bookInfo.children().children().eq(1).children().children().eq(0).children('a').children('img').attr('src',books[j+1].bImgName);
                // bookInfo.children().children().eq(1).children().children().eq(0).children('a').attr('href',""+books[j+1].bId);
                bookInfo.children().children().eq(1).children().children().eq(1).children('div').children('span').html("￥"+books[j+1].bPrice);
                bookInfo.children().children().eq(1).children().children().eq(2).children('h3').html(books[j+1].bName);
                bookInfo.children().children().eq(1).children().children().eq(2).children('h4').eq(0).html(books[j+1].bDescription);

            }

        });
    });
});