<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html style="overflow: hidden;" >
	<head>
		<meta charset="UTF-8">
		<title></title>
	<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		//公共函数
		function changeSong (a) {
			window.frames["audioFrame"].testVar(a);
		}
	</script>
	</head>
		<body topmargin='0' leftmargin='0'>
		<div id="" style="border:none;">
			<iframe src="show.jsp" scrolling="auto" width="100%" height="980px" style="overflow:hidden;border: none;z-index: 5; "></iframe>
<div style="position: absolute;left: 0px;top: 420px;border: none;height: 590px;width: 280px;">
	
			<iframe id="audioFrame" name="audioFrame" src="audio.jsp" width="100%" height="100%" style="border: none;z-index: 2;"></iframe>
	
</div>
		</div>
	</body>
</html>
