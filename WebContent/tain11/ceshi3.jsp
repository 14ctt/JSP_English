<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加数据</title>
</head>
<body>
	<%
	String ww=request.getParameter("txt");
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=xs";
		Connection conn = java.sql.DriverManager.getConnection(connectSQL, "sa", "");
		Statement stmt = conn.createStatement();
		stmt.executeUpdate("insert into txt values('"+ww+"')");
		stmt.close();
		conn.close();
	%>
</body>
</html>