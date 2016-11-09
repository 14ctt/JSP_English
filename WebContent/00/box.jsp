<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

		<meta charset="UTF-8">
		<title></title>
		<!-- <link rel="shortcut icon" href="../../assets/ico/favicon.ico"> -->

    <title>Justified Nav Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/justified-nav.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
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
          <li><a href="#">时间</a></li>
          <li><a href="#">上传</a></li>
          <li><a href="zhuche.jsp">注    册</a></li>
          <li><a href="#">登    录</a></li>
          <li><a href="#">退    出</a></li>
        </ul>
      </div>
		</div>
	<canvas id="canvasid" width="1024px" height="600px" >
		
		
	</canvas>
	
	<script>
		//1.通过id找到画布
		var mycanvas=document.getElementById("canvasid");
		//2.找画笔
		var pen=mycanvas.getContext("2d");
		//定时器，每隔多久执行一个方法
		setInterval(function() {
			//绘制矩形
			//1.获取canvas的宽高
			const WIDTH=mycanvas.width;
			const HEIGHT=mycanvas.height;
			//2.随机生成x y width height
			var x=parseInt( Math.random()*WIDTH);
			var y=parseInt( Math.random()*HEIGHT);
			
			var rectW=parseInt(Math.random()*(WIDTH-x));
			var rectH=parseInt(Math.random()*(HEIGHT-y));
			pen.strokeRect(x,y,rectW,rectH);
   
            var r=parseInt(Math.random()*255);
            var g=parseInt(Math.random()*255);
            var b=parseInt(Math.random()*255);
            pen.strokeStyle="rgb("+r+","+g+","+b+")"
		},1000);
		
		
		
		
		
	</script>
	</body>
</html>