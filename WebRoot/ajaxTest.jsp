<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ajaxTest.jsp' starting page</title>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
		<script type="text/javascript">
		function testAjax(){
			alert(1);
			$.ajax({
				type:"post",
				url:"ajaxtestAction!ajaxTest.action",
				async:true,
				dataType:"json",
				success:function(data){
				alert(data.pList.title);
				}
			});
		}
		
			
		</script>
  </head>
  
  <body>
  <input name="haha" type="button" value="这是一个按钮" onclick="testAjax()"/>
  </body>
</html>
