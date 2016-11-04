<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="statics/css/style.css">
	<!-- <link rel="stylesheet/less" type="text/css" href="css/style.less" /> -->
	<script type="text/javascript" src="statics/js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="statics/js/all.js"></script>
	<script type="text/javascript" >
		$(function(){
			
		})
		function back(){
			alert(1);
		}
		function sendEmail(){
		var email = $("#email").val();
		//alert(email);
		if(email == ""){
			alert("邮箱不能为空")
		}else{
			$.ajax({
				type : "post",
				url : "<%=path%>/user/sendEmail",
				data : {
					"email" : email
				},
				dataType : "json",
				success : function(json) {
					//alert(json.cardMoney);
					alert(json.msg)
				},
				error : function() {
					alert("ajax错误");
				}
			});
		}
				
			}
	</SCRIPT>
  </head>
  
  <body>
<!-- header start -->
<div class="zxcf_top_wper">
	<div class="zxcf_top px1000 clearfix">
		 <div class="zxcf_top_l fl">
		    <img src="statics/images/zxcf_phone.png" alt="">
		    400-027-0101(工作时间9:00-17:30)
		    <a href=""><img src="statics/images/zxcf_weixin.png" alt=""></a>
		    <a href=""><img src="statics/images/zxcf_sina.png" alt=""></a>
		    <a href=""><img src="statics/images/zxcf_qq.png" alt=""></a>
		 </div>
		 <div class="zxcf_top_r fr">
		 	<a href="" class="curspan">立即登录</a>
		 	<span>|</span>
		 	<a href="">免费注册</a>
		 	<span>|</span>
		 	<a href="">常见问题</a>
		 </div>
	</div>
</div>
<!-- end top -->
<div class="zxcf_nav_wper">
	<div class="zxcf_nav clearfix px1000">
		 <div class="zxcf_nav_l fl"><img src="statics/images/zxcf_logo.png" alt=""></div>
		 <div style="margin-top: 20px" class="fr">
		 		<img src="statics/images/lg_pic01.png" alt=""> 
		 	<span>
		   		<a style="color: green;" href="user/index">返回首页</a>
		    </span>
		 </div>
	</div>
</div>
<!-- end  -->
<div class="reg_con_wper">
	<div class="reg_con px1000">
		   <div class="reg_box clearfix">
		   	   <div class="reg_box_l fl">
		   	   	  <img src="
		   	   	  statics/images/reg_pic01.png" alt="">
		   	   </div>
		   	   <div class="reg_box_r fl">
		   	   	    <h2 class="lg_sec_tit clearfix">
	  	   	     	      <span class="fl">注册</span>
	  	   	     	      <!-- <em class="fr">没有帐号，<a href="user/register">立即登录</a></em> -->
	  	   	     	</h2>
	  	   	     	<form>
	  	   	     	   	    <fieldset>
	  	   	     	   	    	  <p class="mt20">
	  	   	     	   	    	  	 <input type="text" name="userName" placeholder="用户名/手机" class="lg_input01 lg_input">
	  	   	     	   	    	  </p>
                                  <p class="mt20">
	  	   	     	   	    	  	 <input type="password" name="passWord" placeholder="密码" class="lg_input02 lg_input">
	  	   	     	   	    	  </p>
                                  <p class="mt20">
	  	   	     	   	    	  	 <input type="password" placeholder="密码确认" class="lg_input02 lg_input">
	  	   	     	   	    	  </p>
                                  <p class="mt20">
	  	   	     	   	    	  	 <input type="text" name="email" id="email" placeholder="邮箱号" class="lg_input03 lg_input">
	  	   	     	   	    	  </p>
                                  <p class="mt20 yanzheng">
	  	   	     	   	    	  	 <input type="text" name="checkCode" placeholder="验证码" class="lg_input04 lg_input">
	  	   	     	   	    	  	 <span><a style="color: white;" href="javascript:sendEmail();">发送验证码</a></span> 	   	    
	  	   	     	   	    	  </p>
                                   <p class="mt20">
	  	   	     	   	    	  	 <input type="text" placeholder="手机号" class="lg_input03 lg_input">
	  	   	     	   	    	  </p>
                                  <p class="pt10"><a href="">使用条款</a>&nbsp;&nbsp;<a href="">隐私条款</a></p>
                                 <p class="mt20"><a href="" class="lg_btn">注册</a></p>
	  	   	     	   	    </fieldset>
	  	   	     	   </form>
		   	   </div>
		   </div>
	</div>
</div>
<!-- footer start -->
<div class="zscf_aboutus_wper">
	  <div class="zscf_aboutus px1000 clearfix">
	  	    <div class="zscf_aboutus_l fl">
	  	    	   <ul class="zscf_aboutus_lul clearfix">
	  	    	   	  <li class="pt10"><a href=""><img src="statics/images/app.png" alt=""></a>
	  	    	   	  </li>
	  	    	   	  <li>
	  	    	   	  <p class="pb20">服务热线</p>
	  	    	   	  <strong>400-027-0101</strong>
	  	    	   	  </li>
	  	    	   	  <li>
	  	    	   	  	  <p class="pb10 linkpic">
	  	    	   	  	     <a href=""><img src="statics/images/ft_sina.png" alt=""></a>
	  	    	   	  	     <a href=""><img src="statics/images/ft_weixin.png" alt=""></a>
	  	    	   	  	     <a href=""><img src="statics/images/ft_erji.png" alt=""></a>
	  	    	   	  	  </p>
	  	    	   	  	  <p><a href="">kefu@zhongxincaifu.com</a></p>
	  	    	   	  </li>
	  	    	   </ul>
	  	    </div>
	  	    <!-- end left -->
	  	    <div class="zscf_aboutus_r fl clearfix">
	  	    	 <a href="#" class="fl ft_ewm"><img src="statics/images/ft_erweima.png" alt=""></a>
	  	    	 <ul class="fl clearfix">
	  	    	 	<li><a href="">联系我们</a></li>
	  	    	 	<li><a href="">我要融资</a></li>
	  	    	 	<li><a href="">帮助中心</a></li>
	  	    	 	<li><a href="">友情链接</a></li>
	  	    	 	<li><a href="">招贤纳士</a></li>
	  	    	 	<li><a href="">收益计算器</a></li>
	  	    	 </ul>
	  	    </div>
	  	    <!-- end right -->

	  </div>
</div>

<div class="zscf_bottom_wper">
	<div class="zscf_bottom px1000 clearfix">
		  <p class="fl">© 2014 zhongxincaifu &nbsp;  &nbsp;&nbsp;   中兴财富金融信息服务股份有限公司 &nbsp;&nbsp;&nbsp;    鄂ICP备14017254号-1</p>
		  <p class="fr">
		    <a href=""><img src="statics/images/360.png" alt=""></a>
		    <a href=""><img src="statics/images/kexin.png" alt=""></a>
		    <a href=""><img src="statics/images/norton.png" alt=""></a>
		  </p>
	</div>
</div>
<!-- footer end -->
</body>
</html>