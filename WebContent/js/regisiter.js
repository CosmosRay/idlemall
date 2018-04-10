
    function backimg() {
        $("#re_div1").addClass("re_div1");
    }

$(function () {
//注册界面背景动画效果
    backimg();
//form表单的向左移动效果设置
    //-------------------页面加载完清空input内的值----------------
    $(".re_put").val("");

    var div;
    $(".rein").click(function () {
        $(".show_div").hide("slow");
        div=$(this).index();
        $(".show2_div:eq("+(div-1)+")").hide("slow");
        $(".rein:eq("+(div-1)+") span:first-child").addClass("re_in");
        $(".show_div:eq("+(div-1)+")").show("slow");
    });
//============注册表单的规则设置=============

//---------------------------姓名规则设置--------------------
    $("#re_in1 input").blur(function () {
        $(".show_div:eq("+(div-1)+")").hide("slow");
        var reg=/^([\u4E00-\u9FA5]|\w){4,20}$/;//正则表达式验证姓名
        var uname=$(this).val();
        if(!reg.test(uname)){
            $("#show2_d1").show("slow");
        }else{
            $("#show2_d1").hide("slow");
        }
    });
//--------------------------手机号规则设置--------------------------
    var regph=/^([1]([3]|[5]|[7]|[8]))\d{9}$/;//正则表达式验证姓名
    var phone="";
    $("#re_in2 input").blur(function () {
        $(".show_div:eq("+(div-1)+")").hide("slow");
        phone=$(this).val();
        if(!regph.test(phone)){
            $("#show2_d2").show("slow");
            $("#re_ptx").attr("disabled","disabled");
        }else{
            $("#show2_d2").hide("slow");
            $("#re_ptx").removeAttr("disabled");
        }
    });

//--------------------------短信验证码规则设置--------------------------
    var regcode="";
    var redvale="";
    $("#re_ptx").click(function () {
        for(i=0;i<4;i++){
           regcode+=parseInt(Math.random()*10)+"";
        }
           alert("您的验证码是:"+regcode);
    });

    $("#re_in3 input:nth-of-type(1)").blur(function () {
        redvale=$("#re_in3 input:nth-of-type(1)").val();
        alert(regcode);
        alert(redvale);
        alert(regcode==redvale);
        if(redvale==regcode){
        }else{
            
        }

    });




//--------------------------密码规则设置--------------------------
    var pass;
    $("#re_in4 input").blur(function () {
        $(".show_div:eq("+(div-1)+")").hide("slow");
        var reg=/^\w{6,20}$/;//正则表达式验证姓名
        pass=$(this).val();
        if(!reg.test(pass)){
            $("#show2_d4").show("slow");
        }else{
            $("#show2_d4").hide("slow");
        }
    });
        //--------------------------确认密码规则--------------------------
    $("#re_in5 input").blur(function () {
        $(".show_div:eq("+(div-1)+")").hide("slow");
        var repass=$(this).val();
            if(!(repass==pass)){
                $("#show2_d5").show("slow");
            }else{
                $("#show2_d5").hide("slow");
            }
        // var repass=$("#re_in5 input").val();
    });




});
