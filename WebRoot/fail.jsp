<% 
/* String username = "";
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie c : cookies) {
				if ("user".equals(c.getName())) {
					username = c.getValue();
					break;
				}
			}
		}  */   
	String msg = (String)request.getAttribute("msg");         
	if(msg != null) {
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
					<h3>失败界面</h3>
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
  
  </script>
	<script src="js/TweenLite.min.js"></script>
	<script src="js/EasePack.min.js"></script>
	<script src="js/rAF.js"></script>
	<script src="js/demo-1.js"></script>
</body>
</html>