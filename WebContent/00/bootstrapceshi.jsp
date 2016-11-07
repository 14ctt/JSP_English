<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
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
        <script type="text/javascript">
    function showTime()
        {
            var today = new Date();          
            var year = today.getFullYear();
            var month = today.getMonth() + 1;
            var day = today.getDate();          
            var weekArr = new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
            var hour = today.getHours();
            var minute = today.getMinutes();
            var second = today.getSeconds();
            var strLast = year + "年" + month + "月" + day + "日 " +weekArr[today.getDay()]+" "+ hour + "时" + minute + "分" + second + "秒";
            document.getElementById("dvTime").innerHTML =strLast;
            window.setTimeout("showTime()", 1000);
        }     
    </script>
  </head>

  <body onload="showTime()">

    <div class="container">

      <div class="masthead">
        
        <ul class="nav nav-justified">
          <li class="active"><a href="">首页</a></li>
          <li><a href="#">时间</a></li>
          <li><a href="../tain11/ceshi2.jsp">上    传</a></li>
          <li><a href="注册界面.jsp">注    册</a></li>
          <li><a href="../00/Login.jsp">登    录</a></li>
          <li><a href="../00/Login.jsp">退    出</a></li>
        </ul>
      </div>

      <!-- Jumbotron -->
      <div class="jumbotron" >
      <h3><div id="dvTime"></div></h3>
        <h1>Marketing stuff!</h1>
        <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet.</p>
        <p><a class="btn btn-lg btn-success" href="#" role="button">Get started today</a></p>
      </div>

      <!-- Example row of columns -->
      <div class="row">
        <div class="col-lg-4">
          <h2>随机矩形框!</h2>
           <img class="pic" width="250px" height="250px" src="../img/1.png"/>
         <p><a class="btn btn-primary" href="box.jsp" role="button">效果浏览 &raquo;</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-primary" href="../tain11/ceshi.jsp?id=1" role="button">查看源代码 &raquo;</a></p>
        
        </div>
        <div class="col-lg-4">
        <h2>炫酷照片墙!</h2>
        <img class="pic" width="250px" height="250px" src="../img/2.png"/><br>
        <p><a class="btn btn-primary" href="box1.jsp" role="button">效果浏览 &raquo;</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-primary" href="../tain11/ceshi.jsp?id=2" role="button">查看源代码 &raquo;</a></p>
       
       </div>
        <div class="col-lg-4">
        <h2>炫酷喷泉!</h2>
          <img class="pic" width="250px" height="250px" src="../img/3.png"/><br>
          <p><a class="btn btn-primary" href="box2.jsp" role="button">效果浏览 &raquo;</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-primary" href="../tain11/ceshi.jsp?id=3" role="button">查看源代码 &raquo;</a></p>
         
        </div>
      </div>

      <!-- Site footer -->
      <div class="footer">
        <p>&copy; Company 2014</p>
      </div>

    </div> 
  </body>
</html>