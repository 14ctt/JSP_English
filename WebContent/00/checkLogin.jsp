<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>插入页面PreparedStatement</title>

</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
	%>
	<table>
		<%
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
			String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=xs";
			Connection conn = java.sql.DriverManager.getConnection(connectSQL, "sa", "");
			String sql = "select name from username where name=? and password=?";
			PreparedStatement st = conn.prepareStatement(sql);
			String name = request.getParameter("name");
			String password = request.getParameter("password");

			st.setString(1, name);
			st.setString(2, password);

			ResultSet rs = st.executeQuery();
			if(rs.next()){
				response.sendRedirect("../00/bootstrapceshi.jsp");
				session.setAttribute("id", rs.getString("name"));
			}else{
				response.sendRedirect("../00/Login.jsp");
				session.setAttribute("id", "用户名或密码错误！");			
			}
			
			rs.close();
			st.close();			
			conn.close();
		%>

	</table>
</body>
</html>