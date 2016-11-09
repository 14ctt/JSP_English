<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>代码管理</title>
<link href="../dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/justified-nav.css" rel="stylesheet">
<style type="text/css">
span{
margin-left:100px;
}
button{
margin-left:300px;
}
</style>
</head>
<body>

<div class="masthead">
				<ul class="nav nav-justified">
					<li><a href="../00/bootstrapceshi.jsp">首页</a></li>
					<li class="active"><a href="../00/dmgl.jsp">代码查看</a></li>
					<li ><a href="../tain11/ceshi2.jsp">上传</a></li>
					<li><a href="../00/zhuche.jsp">注 册</a></li>
					<%
					boolean s=true;
					String as="";
						String ww = "登    录";
						String chw = (String) session.getAttribute("id");
						if (chw == null || chw.equals("")) {
							as=" disabled='disabled' ";
							response.sendRedirect("../00/Login.jsp");
							session.setAttribute("daimaw", "登录后才可查看代码！");
							s=false;
						} else {
							ww = chw;
						}
					%>
					<li><a href="../00/Login.jsp"><%=ww%></a></li>
					<li><a href="../00/tuichu.jsp">退 出</a></li>
				</ul>
			</div>

<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");

if(s){

Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
String SQL="jdbc:sqlserver://localhost:1433;DatabaseName=xs";
Connection con=java.sql.DriverManager.getConnection(SQL,"sa","");
String sql="select * from daima where id='"+session.getAttribute("id")+"'";
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
while(rs.next()){
	out.print("<hr>");
	out.print("<span>"+ rs.getString("name") +"</span>"+"<a href='../tain11/ceshi.jsp?name="+rs.getString("name")+"'><button"+as+">查看</button></a> ");
	out.print("<hr>");
}
rs.close();
ps.close();
con.close();
}
%>
   
</body>
</html>