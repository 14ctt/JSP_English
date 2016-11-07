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
<title>Insert title here</title>
<%
String check=(String)session.getAttribute("check");
if(check==null||check.equals("")){	
}else{
	%>
	<script type="text/javascript">
	alert("<%=check%>");

	</script>
	
	<% 
	session.setAttribute("check","");
}
%>
<style type="text/css">
.si{
background: #8E8E8E;
}
.div1{
margin:0px 20%;
}
div{
width:auto;
}
</style>
 <link href="../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/justified-nav.css" rel="stylesheet">

</head>
<body>
<div class="si">
<div class="container">
<div class="masthead">
          <ul class="nav nav-justified">
          <li><a href="../00/bootstrapceshi.jsp">首页</a></li>
          <li><a href="#">时间</a></li>
          <li class="active"><a href="../tain11/ceshi2.jsp">上传</a></li>
          <li ><a href="../00/注册界面.jsp">注    册</a></li>
          <li><a href="../00/Login.jsp">登    录</a></li>
          <li><a href="../00/Login.jsp">退    出</a></li>
        </ul>
      </div>
      </div>
<form action="../tain11/ceshi3.jsp">
<div class="div1">
<div><button type="submit" >上传</button></div>
<textarea rows="100" cols="100" name="txt" ></textarea>
</div>
</form>
</div>
</body>
</html>