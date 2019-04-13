<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>登录页面</title>
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="css/component.css" />
</head>
<body>
	<!-- 输出信息 -->
	<%
		String msg = (String) request.getAttribute("msg");
		if (msg != null) {
	%>
	<script type="text/javascript" >
		alert("<%=msg%>");
	</script>
	<%
		}
	%>
	<div class="container demo-1">
		<div class="content">
			<div id="large-header" class="large-header">
				<canvas id="demo-canvas"></canvas>
				<div class="logo_box">
					<h3>管理员登录</h3>
					<form action="Log_in_Servlet" id="login_admin" method="post"
						><!-- onsubmit="return checkForm()" -->
						<div class="input_outer">
							<span class="u_user"></span> <input name="name" class="text"
								style="color: #FFFFFF !important" type="text"
								placeholder="请输入账号">
						</div>
						<div class="input_outer">
							<span class="us_uer"></span> <input class="text" id='input_pwd'
								style="color: #FFFFFF !important; position:absolute; z-index:100;"
								value="" type="password" name='pwd' placeholder="请输入密码"> 
								<!--  <input type='hidden' name='pwd' id='md5_pwd'  />-->
						</div>
						<div class="input_outer">
							<input name="verifyCode" class="text"
								style="color: #FFFFFF !important" type="text" placeholder="验证码">
						</div>
						<div>
							<img alt="" onclick="test();" src="servlet/GetImgCaptcha">
						</div>
	
						<div class="mb2">
							<a class="act-but submit"
								onclick="document.getElementById('login_admin').submit()"
								style="color: #FFFFFF">登录</a>
						</div>
					</form>
					<form id="register_admin" action="register_user.jsp" method="post">
						<div class="mb2">
							<a class="act-but submit"
								onclick="document.getElementById('register_admin').submit()"
								style="color: #FFFFFF">注册</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- identifying code -->
	<script type="text/javascript">
		function test() {
			var image = document.getElementsByTagName("img")[0];
			var myDate = new Date();
			image.src = "servlet/GetImgCaptcha?time=" + myDate.getTime();
		}
	
		/* function checkForm() {
			document.getElementById("md5_pwd").value = hex_md5(""+document.getElementById("input_pwd").value); 
			// set password
			window.alert(document.getElementById("md5_pwd").value);
			return true;
		} */
	</script>
<!-- 	<script src="js/md5.js"></script> -->
	<script src="js/TweenLite.min.js"></script>
	<script src="js/EasePack.min.js"></script>
	<script src="js/rAF.js"></script>
	<script src="js/demo-1.js"></script>
</body>
</html>
