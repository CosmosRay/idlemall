

$(function () {

    /*========自动变换轮播效果图========*/

    /*========单击变换轮播效果图========*/

    var li=0;      //设置图片下标
    var total=9;  //图片总数量
    var timer;
    $(".sec1_div1_li").click(function () {
        clearInterval(timer);
        li=$(this).index();
        $(".sec1_div1_li div").removeClass("change").addClass("change2");//追加和清除样式
        $(".sec1_div1_li:eq("+li+") div").removeClass("change2").addClass("change");//清除和追加样式
        timer=setInterval(autochange,4000);
    });

    //自动轮播图变换函数
    function autochange() {
        if(li<total){
            $(".sec1_div1_li div").removeClass("change").addClass("change2");
            $(".sec1_div1_li:eq("+li+") div").removeClass("change2").addClass("change");
            li++;
        }else{
            li=0;
            setTimeout(autochange,10);
        }
    }
    timer=setInterval(autochange,4000);

    /*-----------------左--侧效果详情图--------------*/
    $(".nav2_li").hover(function () {
        var li=$(this).index();
        $(".nav2_li:eq("+li+")").addClass("li");
        $(".nav2_li:eq("+li+") a").css("color","#666");
        $(".nav2_li:eq("+li+") .nav2_div").show();
    },function () {
        var li=$(this).index();
        $(".nav2_li:eq("+li+")").removeClass("li");
        $(".nav2_li:eq("+li+") a").css("color","white");
        $(".nav2_li:eq("+li+") .nav2_div").hide();
    });

});

