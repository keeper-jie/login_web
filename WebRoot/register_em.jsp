<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<title>员工注册界面</title>
</head>
<script type="text/javascript">
	
</script>
<body>
	<h2>员工注册(带*号为必填项)</h2>
	<form action="Register_Employee_Servlet" method="post"
		onSubmit="return Registered_em(this);" style="padding-top:-700px;">
		用户名*：<input type="text" name="name" value=""><br> 密 码*：<input
			type="password" name="pwd" value=""><br> 重复密码*：<input
			type="password" name="pwd2" value=""><br> 性别*:<input
			type="radio" name="sex" value="男" checked>男 <input
			type="radio" name="sex" value="女">女 <br> 职位*：<br>
		<textarea name="position" row="1" cols="10"></textarea>
		<br> 薪资*：<br>
		<!-- 薪资只能输入数字 -->
		<input name="salary" onkeyup="if(isNaN(value))execCommand('undo')"
			onafterpaste="if(isNaN(value))execCommand('undo')"> <br>
		地址*:<br>
		<textarea name="home" row="1" cols="30"></textarea>
		<br> 备注:<br>
		<textarea name="info" row="5" cols="30"></textarea>
		<br> <input type="reset" value="重置"><input type="submit"
			value="注册">
	</form>
	<a href="log_in.jsp">返回登录界面</a>
</body>
</html>
