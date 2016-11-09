<%@page import="com.sun.glass.ui.Pixels.Format"%>
<%@page import="java.util.Formatter"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*,java.io.*,java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

</head>
<body>
<%
boolean s=true;
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
String SQL = "jdbc:sqlserver://localhost:1433;DatabaseName=xs";
Connection con=java.sql.DriverManager.getConnection(SQL,"sa","");


String name=request.getParameter("name");
String password=request.getParameter("password");
String rq=request.getParameter("rq"); 
String yj=request.getParameter("yj");

String sql1 = "select * from username";
PreparedStatement ps1=con.prepareStatement(sql1);
ResultSet rs=ps1.executeQuery();
while(rs.next()){
	if(name.equals(rs.getString("name"))){
		session.setAttribute("c2", "用户名重复！");
		response.sendRedirect("zhuche.jsp");
		s=false;
	}
}
rs.close();
ps1.close();
if(s){
String sql = "insert into username values(?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);

ps.setString(1, name);
ps.setString(2, password);
ps.setString(3, rq);
ps.setString(4, yj);

int c=ps.executeUpdate();

ps.close();
con.close();

if(c!=0){
	
	session.setAttribute("c2", "注册成功！");
	response.sendRedirect("zhuche.jsp");
}else{
	
	session.setAttribute("c2", "注册失败！");
	response.sendRedirect("zhuche.jsp");
}
}
%>
</body>
</html>