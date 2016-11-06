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
<script type="text/javascript">
<%=request.getParameter("txt")%>
</script>
</head>
<body>
	<%
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=xs";
		Connection conn = java.sql.DriverManager.getConnection(connectSQL, "sa", "");
// 		Statement stmt = conn.createStatement();
// 		stmt.executeUpdate("insert into txt values('','')");
		String sql="insert into daima values(?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		String id=request.getParameter("id");
		String txt=request.getParameter("txt");
		ps.setString(1, "1");
		ps.setString(2, txt);
		int c = ps.executeUpdate();
		if(c!=0){
			session.setAttribute("check", "上传成功！");
		}else{
			session.setAttribute("check", "上传失败！");
		}
		ps.close();
		conn.close();
		response.sendRedirect("tain11/ceshi2.jsp");
	%>
</body>
</html>