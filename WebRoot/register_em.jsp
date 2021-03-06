<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>员工注册页面</title>
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
	<script type="text/javascript" language="javascript">
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
					<h3>员工注册</h3>
					
					<form action="Register_Employee_Servlet" id="login_em" method="post">
						<div class="input_outer">
							<span class="u_user"></span> <input name="name" class="text"
								style="color: #FFFFFF !important" type="text"
								placeholder="请输入名字">
						</div>
						<div class="input_outer">
							<span class="us_uer"></span> <input class="text" id='input_pwd'
								style="color: #FFFFFF !important; position:absolute; z-index:100;"
								value="" type="password" name="pwd" placeholder="请输入密码">
							<!--  
								<input type='hidden' name='pwd' id='sha1_pwd' value=''/>
								-->
						</div>

						<div class="input_outer">
							<input name="position" class="text"
								style="color: #FFFFFF !important" type="text" placeholder="职位">
						</div>
						<div class="input_outer">
							<input name="salary" class="text"
								style="color: #FFFFFF !important" type="text" placeholder="薪资">
						</div>
						<div class="input_outer">
							<input name="info" class="text" style="color: #FFFFFF !important"
								type="text" placeholder="备注">
						</div>
							<div>
								性别*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="radio" name="sex" value="男" checked>男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" name="sex" value="女">女
							</div>
						<!-- <input type="hidden" name="login_admin" value="value" /> -->
						<div class="mb2">
							<a class="act-but submit"
								onclick="document.getElementById('login_em').submit()"
								style="color: #FFFFFF">注册</a>
						</div>
					</form>
					<form id="return_login" action="log_in.jsp" method="post">
						<div class="mb2">
							<a class="act-but submit"
								onclick="document.getElementById('return_login').submit()"
								style="color: #FFFFFF">返回登录界面</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		/* function checkForm() {
			
		} */
	</script>
	<script src="js/TweenLite.min.js"></script>
	<script src="js/EasePack.min.js"></script>
	<script src="js/rAF.js"></script>
	<script src="js/demo-1.js"></script>
</body>
</html>



