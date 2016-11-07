<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*,java.io.*"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
<link href="../dist/css/jquery.snippet.css" rel="stylesheet" media="screen">
<script src="../dist/js/jquery.min.js"></script>
<script src="../dist/js/jquery.snippet.js"></script>
	
</head>

<body>
<pre id="demo">
$(document).ready(function(){
  $("p").click(function(){
  $(this).hide();
});

</pre>

<pre id="demo2">
$(document).ready(function(){
  $("p").click(function(){
  $(this).hide();
});

</pre>

<pre id="demo3">
$(document).ready(function(){
  $("p").click(function(){
  $(this).hide();
});

</pre>
 
<script>
	$("#demo").snippet("javascript", { style: "random", collapse: true, startCollapsed: false});
	$("#demo2").snippet("javascript", { style: "random", collapse: true, startCollapsed: false});
	$("#demo3").snippet("javascript", { style: "random", collapse: true, startCollapsed: false});
</script> 
 

</body>

</html>
