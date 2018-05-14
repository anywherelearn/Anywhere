<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录程序</title>
</head>
<body>
<%!
		public static final String DRIVER="oracle.jdbc.driver.OracleDriver";
		public static final String URL="jdbc:oracle:thin:@localhost:1521:ORCL";
		public static final String USER="scott";
		public static final String PASSWORD="tiger";

%>
<%
		String sql="SELECT mid FROM member WHERE mid=? AND password=?";
		Class.forName(DRIVER);
		Connection con=DriverManager.getConnection(URL,USER,PASSWORD);
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setString(1, request.getParameter("mid"));
		pre.setString(2,request.getParameter("password"));
		ResultSet re=pre.executeQuery();
		
		
		Class.forName(DRIVER) ;
		Connection conn = DriverManager.getConnection(URL,USER,PASSWORD) ;
		PreparedStatement pstmt = conn.prepareStatement(sql) ;
		pstmt.setString(1,request.getParameter("mid")) ;
		pstmt.setString(2,request.getParameter("password")) ;
		ResultSet rs = pstmt.executeQuery() ;
		
		boolean flag=false;
		if(re.next()){
			flag=true;
		}
		con.close();
		if(flag){
%>
			<jsp:forward page="welcome.jsp"/>
<%
		}else{
%>
			<jsp:forward page="login.jsp">
				<jsp:param value="loginError" name="error"/>
			</jsp:forward>
<%
		}
		
%>
</body>
</html>




