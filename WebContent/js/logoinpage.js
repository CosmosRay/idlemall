$(function () {
   $("#div1_li").hover(function () {
        $("#div1_li~li").show();
   });
   $("#div1 ul").mouseleave(function () {
       $("#div1_li~li").hide();
   });

   /*我的个人主页上的js*/
    $("#h_d_ul li:nth-of-type(1)").click(function () {
        $("#main_iframe").attr("src","personal.html");
    });
    $("#h_d_ul li:nth-of-type(2)").click(function () {
        $("#main_iframe").attr("src","shoptrolley.html");
    });
    $("#h_d_ul li:nth-of-type(3)").click(function () {
        $("#main_iframe").attr("src","shopmine.html");
    });
    $("#h_d_ul li:nth-of-type(4)").click(function () {
        $("#main_iframe").attr("src","shoprelease.html");
    });

   /**/




});

