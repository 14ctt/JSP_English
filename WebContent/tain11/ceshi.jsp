<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="../dist/css/bootstrap.min.css" rel="stylesheet">
<link href="../dist/css/bootstrap.css" rel="stylesheet">
<link href="../dist/css/bootstrap-theme.css" rel="stylesheet">
<link href="../dist/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="../dist/css/bootstrap.min.css" rel="stylesheet">
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
a{
 text-decoration:none;
}
.div3{
text-align:center;
position:fixed;
top:60%;
right:3%;
z-index:10;
}
.d{
top:3%;
right:3%;
}
</style>
</head>
<body onload="prettyPrint()">
<div class="div3 d"><a href="../00/bootstrapceshi.jsp">
  <span class="glyphicon glyphicon-share-alt"> 返回主页</span>
</a></div>
<div class="div3"><a href="#">
  <span class="glyphicon glyphicon-chevron-up"> <br>TOP</span>
</a></div>
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