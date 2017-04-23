<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>注册丨Sharelink</title>
<!-- css样式 -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/IconUpload/style.css"  />
<link rel="stylesheet" href="css/sweet-alert.css"/>
<link rel="stylesheet" href="css/IconUpload/hideBody.css"/>
<!-- js -->
<script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>
<script src="js/common.js"></script>
<!--背景图片自动更换-->
<script src="js/supersized.3.2.7.min.js"></script>
<script src="js/supersized-init.js"></script>
<script src="js/pwdcheck.js"></script>
<!--表单验证-->
<script src="js/jquery.validate.min.js?var1.14.0"></script>
<!-- 上传裁剪头像部分 -->
<script type="text/javascript" src="js/cropbox.js"></script>
<script type="text/javascript" src="js/sweet-alert.js"  ></script>
<script type="text/javascript" src="js/IconUpload.js"></script>
</head>
<!-- 关于遮罩层的js -->
<script>
function shield(){
    $("#shadow").css("display","block");
    $(".container").css("display","block");
}

function cancel_shield(){
	$("#shadow").css("display","none");
    $(".container").css("display","none");
}
</script>
<style>
/* 密码 */
ul.pass_set{ clear:both; margin-top:7px; height:18px; line-height:18px; overflow:hidden; width:310px; overflow:hidden;}
ul.pass_set li{ float: left; text-align: center; width: 100px; border-right: 2px solid #fff; background: #ffd8b4; color: #fff; list-style-type: none; }
/*提示*/
dl.code_note{ clear:both; width:75%; margin:0 auto; padding:30px 0 0 0;}
dl.code_note dt{ clear:both; font-size:14px; font-weight:bold; line-height:1.7em;}
dl.code_note dt p{ clear:both; font-weight:normal; padding-top:5px;}
dl.code_note dd{ clear:both; padding-top:15px;}
</style>
<body>
<div id="shadow"></div>
<div class="register-container">
			<h1>ListenNow</h1>

			<div class="connect">
				<p>你的音乐. 现在有了新的看法.</p>
			</div>
	
	<form action="userAction!userRegister.action" method="post" id="registerForm">
				<div>
			<input type="email" name="user.userName" id="registerName" class="email" placeholder="输入邮箱账号" oncontextmenu="return false" onpaste="return false" />
		</div>
		<div>
			<input type="text" name="user.nickName" class="nickName" placeholder="您的昵称" autocomplete="off"/>
		</div>
		<div>
			<input type="password" name="user.userPassword" class="password" onkeyup="pwStrength(this.value)" placeholder="输入密码" oncontextmenu="return false" onpaste="return false" />
		<ul class="pass_set">
   		<li id="strength_L">弱</li>
    	<li id="strength_M">中</li>
    	<li id="strength_H">强</li>
		</ul>
		</div>
		<div>
			<input type="password" name="confirm_password" class="confirm_password" placeholder="再次输入密码" oncontextmenu="return false" onpaste="return false" />
		</div>
		<div>
			<button type="button" class="register-tis" onClick="shield()"><span id="IconMessage">点击这里上传头像</span></button>
		</div>
		<!-- 上传头像的div,默认隐藏 -->
		<div class="container" style="z-index: 100">

  <div class="imageBox">

    <div class="thumbBox"></div>

    <div class="spinner"  style="display: none"></div>

  </div>

  <div class="action"> 

    <div class="new-contentarea tc"> <a href="javascript:void(0)" class="upload-img">

      <label for="upload-file">请先选择图片...</label>

      </a>

      <input type="file" class="" name="upload-file" id="upload-file" />

    </div>
	
		
    <input type="button"  id="btnCrop" class="Btnsty_peyton" value="✔">

    <input type="button" id="btnZoomIn" class="Btnsty_peyton" value="+"  >

    <input type="button" id="btnZoomOut" class="Btnsty_peyton" value="-" >
    
    <input type="button"  class="Btnsty_peyton"  value="✘" onclick="cancel_shield()">
  </div>

  <div class="cropped"></div>

</div>
		<input type="text" id="hideInput" class="nickName" name="user.userIconSrc" style="display: none">
		<button id="submit" type="submit">注 册</button>
		
	</form>
	<a href="login.jsp">
		<button type="button" class="register-tis">已经有账号？</button>
	</a><br />
	<a href="forgetpwd.jsp">
				<button type="button" class="register-tis">忘记密码？</button>
			</a><br />
	<a href="index.jsp">
		<button type="button" class="register-tis">先回首页看看!</button>
	</a>

</div>

</body>

</html>
