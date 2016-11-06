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
<!-- <link href="dist/css/jquery.snippet.css" rel="stylesheet" media="screen"> -->
<link href="styles/shCore.css" rel="stylesheet" media="screen">
<link href="styles/shCoreDefault.css" rel="stylesheet" media="screen">
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
<pre class="brush:js">
<xmp>
	<%
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=xs";
		Connection conn = java.sql.DriverManager.getConnection(connectSQL, "sa", "");
		Statement stmt = conn.createStatement();
		ResultSet sw = stmt.executeQuery("select * from txt");
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
<!-- <link href="dist/css/prettify.css" rel="stylesheet"/> -->
<!-- <script src="dist/js/prettify.js"></script> -->

<script src="scripts/shCore.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    SyntaxHighlighter.autoloader(
            ['js','jscript','javascript','WebContent/scripts/shBrushJScript.js'],
            ['bash','shell','WebContent/scripts/shBrushBash.js'],
            ['css','WebContent/scripts/shBrushCss.js'],
            ['xml','html','WebContent/scripts/shBrushXml.js'],
            ['sql','WebContent/scripts/shBrushSql.js'],
            ['php','WebContent/scripts/shBrushPhp.js']
        ); 
    SyntaxHighlighter.all(); 
})
</script>

<script>
// 	$("#demo").snippet("javascript", { style: "random", collapse: true, startCollapsed: false});
// 	$("#demo2").snippet("javascript", { style: "random", collapse: true, startCollapsed: false});
// 	$("#demo3").snippet("javascript", { style: "random", collapse: true, startCollapsed: false});
 </script>
</body>
</html>