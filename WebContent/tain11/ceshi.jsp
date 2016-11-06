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
<style type="text/css">
xmp{
text-align:left;
border:1px solid blue;
width:auto;
line-height:auto;
margin:auto;
}
</style>
</head>
<body onload="prettyPrint()">
<pre class="prettyprint">
<xmp>
	<%
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=xs";
		Connection conn = java.sql.DriverManager.getConnection(connectSQL, "sa", "");
		Statement stmt = conn.createStatement();
		ResultSet sw = stmt.executeQuery("select txt from daima where id='"+request.getParameter("id")+"'");
		String ww = null;
		while (sw.next()) {
			%>			
			<%=sw.getString("txt")%>			
			<%
			}
		sw.close();
		stmt.close();
		conn.close();
	%>

	</xmp>
	</pre>
<link href="../dist/css/prettify.css" rel="stylesheet"/>
<script src="../dist/js/prettify.js"></script>
</body>
</html>