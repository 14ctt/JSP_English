<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Insert title here</title>

			<style>
			
			*{
				padding: 0px;
				margin: 0px;
			}
			
			
		</style>

		<meta charset="UTF-8">
		<title></title>
		<!-- <link rel="shortcut icon" href="../../assets/ico/favicon.ico"> -->

    <title>Justified Nav Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/justified-nav.css" rel="stylesheet">

   
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	</head>
	<body>
	<div class="container">
	<div class="masthead">
                <ul class="nav nav-justified">
          <li><a href="bootstrapceshi.jsp">首页</a></li>
          <li><a href="#">Projects</a></li>
          <li><a href="#">Services</a></li>
          <li><a href="注册界面.jsp">注    册</a></li>
          <li><a href="#">登    录</a></li>
          <li><a href="#">退    出</a></li>
        </ul>
      </div>
		</div>

<script>
//	创建canvas画布

var canvas = document.createElement("canvas");
//canvas插入body中
document.body.appendChild(canvas);
//canvas背景颜色
canvas.style.backgroundColor = "black";
//为cabvas设置宽高
canvas.width = window.innerWidth;
canvas.height = window.innerHeight;
var pen = canvas.getContext("2d");
//创建一个空的数组 用来保存粒子
var shuzu = [];

setInterval(function() {
	//清空画布
		pen.clearRect(0,0,canvas.width,canvas.height);
	//先创建一个对象
	var part = new Partical(canvas.width/2,canvas.height/2);
	
//	把对象装在数组里
	shuzu.push(part);
	
	part.draw();
	
	for(var i=0;i<shuzu.length;i++){
		
		shuzu[i].upData();
	}
	
},30);
//如何画一个粒子
//类-产生-对象

function Partical (xPos,yPos) {
	//粒子的位置
	this.x = xPos;
	this.y = yPos;
	this.xVal = Math.random()*4-2;
	this.yVal =-5;
	//把画圆的代码封装在一个方法里
	this.draw = function() {
		pen.beginPath();
		pen.arc(this.x,this.y,10,0,Math.PI*2,false);	
		pen.closePath();
		    var r=parseInt(Math.random()*255);
            var g=parseInt(Math.random()*255);
            var b=parseInt(Math.random()*255);
            pen.fillStyle="rgb("+r+","+g+","+b+")";
	        pen.fill();
		};
	 
	this.upData = function() {
		this.x += this.xVal;
		this.y += this.yVal;
		this.yVal +=0.1;	
		this.draw();
		
	};


}
	
	
</script>

	</body>
</html>