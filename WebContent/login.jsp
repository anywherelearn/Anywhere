<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录程序</title>
</head>
<body>
<%
	String error=request.getParameter("error");
%>
<h1><%=error==null?"":"错误的用户名和密码" %></h1>
	<form action="check.jsp" method="post">
		<table>
			<tr>
				<td>用户名称：</td>
				<td><input type="text" name="mid" id="mid"></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="password" id="password"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="登录">
					<input type="reset" value="重置">	
				</td>
			</tr>
		</table>
	</form>
</body>
</html>