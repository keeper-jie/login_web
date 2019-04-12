<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>成功界面</title>
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="css/component.css" />
</head>
<body>
<!-- 输出信息 -->
<%     
	String msg = (String)request.getAttribute("msg");         
	if(msg != null) {
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
				<div class="logo_box">
					<h3>欢迎</h3>
					<form action="SearchAll" id="login_admin" method="post" >	
						<input type="hidden" name="login_admin" value="value" />
						<div class="mb2">
							<a class="act-but submit"
								onclick="document.getElementById('login_admin').submit()"
								style="color: #FFFFFF">查看公司人员名单</a>
						</div>
					</form>
					<form id="register_admin" action="log_in.jsp" method="post">
						<input type="hidden" name="register_admin" value="value" />
						<div class="mb2">
							<a class="act-but submit"
								onclick="document.getElementById('register_admin').submit()"
								style="color: #FFFFFF">返回主界面</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
 
  </script>
	<script src="js/TweenLite.min.js"></script>
	<script src="js/EasePack.min.js"></script>
	<script src="js/rAF.js"></script>
	<script src="js/demo-1.js"></script>
</body>
</html>
