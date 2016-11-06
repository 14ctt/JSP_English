<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Insert title here</title>
<style type="text/css">
body{
	background-color: #ccc;
	.container
}
.container{
	/*盒子宽度*/
	width: 960px;
	/*盒子高度*/
	height: 450px;
	/*上下外边距100 左右外边距自适应，会居中*/
	margin: 100px auto;
}
.pic{
	/*设置定位属性，相对位置*/
	position: relative;
	width: 150px;
	/*border: 10px solid white;*/
	/*顶部内边距 左右内边距 底部内边距*/
	padding: 10px 10px 10px;
	background: white;
	/*添加阴影*/
	box-shadow: 5px 5px 3px gray;
	
}
/*鼠标悬停效果*/
.pic:hover{
	/*最大叠加层次*/
	z-index: 100;
	/*过度时间*/
	transition: all 1S;
	/*旋转0度 放大1.5倍*/
	transform: rotate(0deg) scale(1.5);
}
	
.pic1{
	left: 100px;
	transform: rotate(20deg);
}
.pic2{
	transform: rotate(-10deg);
}
.pic3{
	transform: rotate(5deg);
}
.pic4{
	transform: rotate(15deg);
}
.pic5{
	transform: rotate(-20deg);
}
.pic6{
	transform: rotate(5deg);
}



</style>
</head>
	<body>
		<div class="container">
			<img class="pic pic1" src="../img/004.jpg" />
			<img class="pic pic2" src="../img/1-1210191G947.jpg" />
			<img class="pic pic3" src="../img/005.jpg" />
			<img class="pic pic4" src="../img/007.jpg" />
			<img class="pic pic5" src="../img/123232c322FN4105.jpg"/>
			<img class="pic pic6" src="../img/2531170_142347701000_2.jpg" />
		</div>
	</body>
</html>