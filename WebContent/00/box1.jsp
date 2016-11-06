<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
*{
	padding: 0;
	margin: 0;
}
figure{
	width: 33.3%;
	height: 350px;
	float:left;
	/*显示多出的部分隐藏掉*/
	overflow: hidden;
	/*未来让文字根据它设置位置*/
	position: relative;
	
	
}
figure img{
	transition: all 0.5s;
	
}
figure:hover img{
	
	opacity:0.5;
}
/*7*/
.view7 img{
	transition: all 1s;
}
.view7:hover img{
	transform: scale(0.9);
}
.view9 img{
	transition: all 2s;
	
}
.view9:hover img{
	transform: rotate(10deg) scale(1.2);
}
/*1*/
.view1:hover img{
	transform: translateX(50px);
	
}
.view1 h2{
	position: absolute;
	left: 50px;
	top: 60px;
	color: white;
	transition: all 0.3s;
}
.view1:hover h2{
	transform: translateX(80px);
	}
/*1*/
.pp{
	position: absolute;
	left: 100px;
	width: 100px;
	background-color: dodgerblue;
	transition: all 0.5s;
}
.view1 .p1{
	bottom: 0;
	transform: translateY(50px);
}
.view1:hover .p1{
	transform: translateY(-200px);
}
.view1 .p2{
	top: 200px;
	transform: translateX(-200px);
}
.view1:hover .p2{
	transform: translateX(0px);
}

.view1 .p3{
	top: 275px;
	transform: translateX(500px);
}
.view1:hover .p3{
	transform: translateX(0px);
}
          /*2*/
         
         
 .view2:hover img{
 	transform: translateX(-20px);
 }        
.view2 h2{
	position: absolute;
	left: 50px;
	top: 60px;
	color: white;
	transition: all 0.3s;
}
.view2:hover h2{
	transform: translateX(80px);
	}
.info{
	position: absolute;
	left: 80px;
	width: 120px;
	background:white;
	
}
.view2 .info1{
	width: 150;
	top: 100px;
	transform: translateX(-250px);
	transition: all 0.2s;
}
.view2:hover .info1{
	transform: translateX(0px);
}
.view2 .info2{
	
	top: 160px;
	transform: translateX(-250px);
	transition: all 0.4s;
}
.view2:hover .info2{
	transform: translateX(0px);
}
.view2 .info3{
	
	top: 220px;
	transform: translateX(-250px);
	transition: all 0.6s;
}
.view2:hover .info3{
	transform: translateX(0px);
}
/*3*/
.view3:hover img{
	transform: translateY(-20px);
}
.view3 p{
	position: absolute;
	bottom:0px;
	left: 80px;
	opacity: 0;
	transition: all 1s;
}
.view3:hover p{
	opacity: 1;
	transform: translateY(-200px);
}

/*4*/
.view4 div{
	position: absolute;
    width: 130%;
    height: 300px;
    left: 0px;
    bottom: -300px;
    background: cyan;   
}
div{
	transition: all 2s;
}
.view4:hover div{
	transform: rotate(-20deg);
	/*设置旋转点位置*/
	transform-origin: 0% 0%;
}

/*5*/

.view5 div{
	position: absolute;
	width: 80%;
	height: 80%;
	left: 10%;
	top: 10%;
	border: 3px solid black;
	transform: rotate(0deg) translateY(-400px);
   transform-origin:0% 0% ;
}
.view5:hover div{
	transform: rotate(360deg) translateY(0px);
}

/*6*/

.view6:hover img{
	transform: scale(1.5);
}
.view6 h2{
	position: absolute;
	top: 50%;
	left: 45%;

}
.view6:hover h2{
	transform: rotate(315deg);
}
/*8*/
.view8 .top{
	position: absolute;
	top: 70px;
	left: 50px;
	height: 200px;
	width: 0px;
	border-top:2px solid green ;
	border-bottom: 2px solid yellow;
}
.view8:hover .top{
	width: 260px;
	
}
.view8 .left{
	position: absolute;
	left: 80px;
	top: 55px;
	width: 200px;
	height: 0px;
	border-left: 2px solid palegoldenrod;
	border-right: 2px solid red;
}
.view8:hover .left{
	height: 240px;

</style>

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
          <li><a href="注册界面.jsp">注    册</a></li>
          <li><a href="#">登    录</a></li>
          <li><a href="#">退    出</a></li>
        </ul>
      </div>
		</div>
	<div class="box">
		<!--第一个图片
		figure用作文档中插入图片-->
		<figure class="view1">
			<img src="../img/7.png"/>
			<!--figcaption标签定义figure元素的标题-->
			<figcaption>
				<h2>皇家理工三大帅</h2>
				<p class="pp p1">亢文心</p>
				<p class="pp p2">周瑞请</p>
				<p class="pp p3">姜琴</p>
			</figcaption>
		</figure>
		
		<!--第二个图片-->
		
		<figure class="view2">
			<img src="../img/8.png" />
			<figcaption>
				<h2>抗总资料</h2>
				<p class="info info1">birthday:1996</p>
				<p class="info info2">height:165</p>
				<p class="info info3">weight:50kg</p>
	
			</figcaption>
		
		</figure>
		
		<!--第三张图片-->
		<figure class="view3">
			<img src="../img/9.png" />
			<figcaption>
				<h2>康总的诗</h2>
				<p>
					无敌是多么寂寞
					苍茫的天涯是我的爱，绵绵的青山脚下花正开
				</p>
			</figcaption>
	</figure>
		
		<!--第四个图片-->
			<figure class="view4">
			<img src="../img/9.png" />
			<figcaption>
				<h2>1989</h2>
				
			</figcaption>
			<div class="box1"></div>
	</figure>
		
		<!--第五张图片-->
		<figure class="view5">
			<img src="../img/10.png" />
			<figcaption>
				<h2>康总的歌</h2>
				<p>
					长风破浪会有时，直挂云帆济沧海
				</p>
			</figcaption>
			<div class="box2"></div>
	</figure>

	
	<!--第六张图片-->
		<figure class="view6">
			<img src="../img/11.png" />
			<figcaption>
				<h2>out of the woods</h2>				
			</figcaption>
	</figure>
	
	<!--第7张图片-->
		<figure class="view7">
			<img src="../img/12.png" />			
	</figure>
	
	
	<!--第8张图片-->
		<figure class="view8">
			<img src="../img/13.png" />
			<figcaption>
				<p>里白</p>
				<div class="top"></div>
				<div class="left"></div>
			</figcaption>
	</figure>
	<!--第9张图片-->
		<figure class="view9">
			<img src="../img/14.png" />			
	</figure>
	
	</div>
	
	<img src="img/musicBtn.png" class="musicbtn" onclick="playPause(this)"/>
	<audio src="mp3/Taylor Swift - We Are Never Ever Getting Back Together.mp3" autoplay="autoplay" id="musicPlayer"></audio>
	
	</body>
</html>