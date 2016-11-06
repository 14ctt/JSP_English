<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Insert title here</title>
</head>
	<style>
		
		body{
			background: black;
		}
		div{
			width: 100px;
			height: 100px;
			background: white;
			border-radius: 100px;
			position: absolute;
			left: 300px;
			top: 200px;
		}
		
		.down{
			animation: downanmation 2s infinite;
		}
		@keyframes downanmation{
			from{
				background: rgba(51,255,255,1);
			}
			to{
				transform: scale(3);;
				background: rgba(51,255,255,0);
			}
		}
		.center{
			animation: center 2s infinite;
		}
		@keyframes center{
			from{}
			to{
				transform: scale(2);
				background: rgba(255,25,255,0);
			}
		}
		.xuanku{
			height: 100px;
			width: 100px;
			position:relative ;
			animation: xuankuku 5s infinite;
		}
		@keyframes xuankuku{
			0%{
				background:red;
				left: 0px;
				top: 0px;
			}
			25%{
				background: yellow;
				left: 200px;
				top: 0px;
			}
			50%{
				background:red;
				left: 200px;
				top: 200px;
			}
				75%{
				background:lawngreen;
				
				top: 200px;
			}
			100%{
				background:#00FFFF;
				left: 0px;
				top: 0px;
			}
			
		}
	</style>
	<body>
		<div class="down"></div>
		<div class="center"></div>
		<div class="up"></div>
		<div class="xuanku"></div>
	</body>
</html>