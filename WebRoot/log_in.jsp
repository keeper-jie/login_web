<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>登录注册页面</title>
</head>
<script type="text/javascript" src="verification.js">	
</script>
<body>
	<form action="Log_in_Servlet" method="post"
		onSubmit="return Log_in(this);" style="padding-top:-700px;">
		管理员用户名：<input type="text" name="name" value=""><br> <br>
		管理员密码：<input type="password" name="pwd" value=""><br> <br>
		<input type="submit" value="登录" name="register"><input
			type="reset" value="重置"><br>
	</form>
	<form action="register_user.jsp">
		<input type="submit" value="管理员注册">
	</form>
</body>
</html>
