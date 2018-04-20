$(function () {
   $("#div1_li").hover(function () {
        $("#div1_li~li").show();
   });
   $("#div1 ul").mouseleave(function () {
       $("#div1_li~li").hide();
   });

   我的个人主页上的js
    $("#h_d_ul li:nth-of-type(1)").click(function () {
    	$("#h_d_ul li:nth-of-type(1)").css({'color':'blue'});
        $("#h_d_ul li:nth-of-type(2)").css({'color':'orange'});
        $("#h_d_ul li:nth-of-type(3)").css({'color':'orange'});
        $("#h_d_ul li:nth-of-type(4)").css({'color':'orange'});
    });
    $("#h_d_ul li:nth-of-type(2)").click(function () {
    	 $("#h_d_ul li:nth-of-type(1)").css({'color':'orange'});
         $("#h_d_ul li:nth-of-type(2)").css({'color':'blue'});
         $("#h_d_ul li:nth-of-type(3)").css({'color':'orange'});
         $("#h_d_ul li:nth-of-type(4)").css({'color':'orange'});
    });
    $("#h_d_ul li:nth-of-type(3)").click(function () {
    	 $("#h_d_ul li:nth-of-type(1)").css({'color':'orange'});
         $("#h_d_ul li:nth-of-type(2)").css({'color':'orange'});
         $("#h_d_ul li:nth-of-type(3)").css({'color':'blue'});
         $("#h_d_ul li:nth-of-type(4)").css({'color':'orange'});
    });
    $("#h_d_ul li:nth-of-type(4)").click(function () {
    	 $("#h_d_ul li:nth-of-type(1)").css({'color':'orange'});
         $("#h_d_ul li:nth-of-type(2)").css({'color':'orange'});
         $("#h_d_ul li:nth-of-type(3)").css({'color':'orange'});
         $("#h_d_ul li:nth-of-type(4)").css({'color':'blue'});
    });
});

