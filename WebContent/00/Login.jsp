<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="../dist/css/bootstrap.min.css" rel="stylesheet">
<link href="../dist/css/bootstrap.css" rel="stylesheet">
<link href="../dist/css/bootstrap-theme.css" rel="stylesheet">
<link href="../dist/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/justified-nav.css" rel="stylesheet">
<style type="text/css">
 .s{
 float:left; 
 width:320px; 
 margin:0px 28%; 
 line-height:20px; 
} 
input {
	width: 326px;
	height: 42px;
	line-align: 42px;
	padding: 13px 16px 13px 14px;
}

body {
	background: #8E8E8E;
}

.dv {
	width: 800px;
	height: 600px;
	text-align: center;
	padding: 0px auto; margin : 0px auto;
	background: #FFFFFF;
	margin: 0px auto;
}

.control-group {
	margin: 14px auto;
}
hr{
height:80px;
}

</style>
<%
String wos=(String)session.getAttribute("daimaw");
if(!(wos==null||wos.equals(""))){
	%>
	<script type="text/javascript">
	window.onload=function(){
	alert("<%=wos%>");
	}
	</script>
	<%	
	session.setAttribute("daimaw", "");
}
%>
<%
String check=(String)session.getAttribute("id");
if(check==null||check.equals("")){	
}else{
	%>
	<script type="text/javascript">
	window.onload=function(){
	alert("<%=check%>");
	}
	</script>
	
	<% 
	if(check.equals("用户名或密码错误！")){
	session.setAttribute("id","");
	}
}
%>
<%
		String weo = "请先退出！";
		String as = "";
		String ch = (String) session.getAttribute("id");
		if (ch == null || ch.equals("")) {
			
	
		} else {
			%>
			<script type="text/javascript">
			window.onload=function(){
			alert("<%=weo%>	");
			}
			</script>
			<%
			as = " disabled='disabled' ";

		}
	%>
</head>
<body bgcolor="#6C6C6C">
<div class="container">
<div class="masthead">
                <ul class="nav nav-justified">
          <li><a href="../00/bootstrapceshi.jsp">首页</a></li>
          <li><a href="../00/dmgl.jsp">代码查看</a></li>
          <li><a href="../tain11/ceshi2.jsp">上传</a></li>
          <li ><a href="zhuche.jsp">注    册</a></li>
         
          <li class="active"><a href="../00/Login.jsp">登  录</a></li>
          <li><a href="../00/tuichu.jsp">退    出</a></li>
        </ul>
      </div>
      </div>
	<form class="form-horizontal" action="../00/checkLogin.jsp">
		<div class="dv">
		<hr size="1"  />
			<div >
				<h1>
					<strong>请先登录</strong>
				</h1>
			</div>
			<div class="control-group">

				<div class="controls">
					<input type="text" <%=as %> name="name" id="inputEmail" placeholder="用户账号">
				</div>
			</div>
			<div class="control-group">

				<div class="controls">
					<input type="password" <%=as %> name="password" id="inputPassword" placeholder="用户密码">
				</div>
			</div>
			<button type="submit" class="btn btn-primary">登录</button>
			<a href="注册界面.jsp"><button type="button" class="btn btn-primary">注册</button></a> 
					<!--<button type="submit" class="btn btn-large btn-block btn-primary">登录</button>
					 
					<button class="btn btn-large btn-block btn-primary">注册</button>-->
				
		</div>
	</form>

</body>
</html>