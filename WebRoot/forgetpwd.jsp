<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<title>忘记密码页面</title>
	<link rel="stylesheet" href="css/style.css">

	<body>

		<div class="login-container">
			<h1>ListenNow</h1>

			<div class="connect">
				<p>你的音乐. 现在有了新的看法.</p>
			</div>

			<form action="userAction!userPwdBack.action" method="post" id="forgetForm">
				<div>
					<input type="text" name="user.userName" class="username" id="forgetPwd" placeholder="登录邮箱账号" autocomplete="off" />
				</div>

				<button id="submit" type="submit">找回密码</button>
			</form>
		<br />
		<a href="login.jsp">
		<button type="button" class="register-tis">想重新登录?</button>
		</a><br />
			<a href="index.html">
				<button type="button" class="register-tis">先回首页看看!</button>
			</a>

		</div>

	</body>
	<script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>
	<script src="js/common.js"></script>
	<!--背景图片自动更换-->
	<script src="js/supersized.3.2.7.min.js"></script>
	<script src="js/supersized-init.js"></script>
	<!--表单验证-->
	<script src="js/jquery.validate.min.js?var1.14.0"></script>

</html>
