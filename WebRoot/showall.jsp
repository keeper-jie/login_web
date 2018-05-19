<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>员工管理页面</title>
</head>

<body>
<form action="SearchServlet" method="post">
<input type="text"  name="name">
		<input type="submit" value="查找">
	</form>
	<h1>${msg}</h1>
	<table width="600" border="1" cellpadding="0">
		<tr>
			<th>ID</th>
			<th>姓名</th>
			<th>密码</th>
			<th>性别</th>			
			<th>职位</th>
			<th>薪资</th>
			<th>家乡</th>
			<th>备注</th>
			<th>操作</th>
		</tr>
		<c:forEach var="U" items="${userAll}">
			<form action="UpdateServlet" method="post">
				<tr>
					<td><input type="text" value="${U.id}" name="id"></td>
					<td><input type="text" value="${U.name}" name="name"></td>
					<td><input type="text" value="${U.pwd}" name="pwd"></td>
					<td><input type="text" value="${U.sex}" name="sex"></td>
					<td><input type="text" value="${U.position}" name="position"></td>
					<td><input type="text" value="${U.salary}" name="salary"></td>
					<td><input type="text" value="${U.home}" name="home"></td>
					<td><input type="text" value="${U.info}" name="info"></td>
					<td><a href="DeleteServlet?id=${U.id}">删除</a> <input
						type="submit" value="修改" /></td>
				</tr>
			</form>
		</c:forEach>
	</table>
	<form action="register_em.jsp">
		<input type="submit" value="添加员工">
	</form>
	<a href="log_in.jsp">返回登录界面</a>
</body>
</html>
