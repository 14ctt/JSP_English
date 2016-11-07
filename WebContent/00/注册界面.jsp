<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Insert title here</title>
   <style type="text/css">
   .ds{
    background: #8E8E8E;
   }
        #inc {
        text-align:center;
       padding-top:10%;
       
        margin:50px auto;
            width: 500px;
            height:500px;
            background: white;
        }
        #dvName, #dvPwd, #dvPwd2, #dvBirth, #dvEmail {
            color: red;
        }
        body{
	        margin:0px;
	        padding:0px;
           background:red;
        }
        .container{
        margin:0px;
        background: #8E8E8E;
        }
    </style>
    <script type="text/javascript">
   
        function checkName() {        
            var uName = document.getElementById("uName").value;
            var dvName = document.getElementById("dvName");
            dvName.innerHTML = "";
            var patt = /^\w{4,16}$/img;
            if (patt.test(uName)) {
                return true;
            } else {
                dvName.innerHTML = "用户昵称必须用英文、数字或下滑线（4~16个字符）";
                return false;
            }
        }
        function checkPwd() {
            var uPwd = document.getElementById("uPwd").value;
            var dvPwd = document.getElementById("dvPwd");
            dvPwd.innerHTML = "";
            
            var patt = /^\w{6,16}$/;
            if (patt.test(uPwd)) {
                return true;
            }
            else {
                dvPwd.innerHTML = "密码不对";
                return false;
            }
        }

        function checkPwd2() {
            var uPwd = document.getElementById("uPwd");
            var uPwd2 = document.getElementById("uPwd2");
            var dvPwd2 = document.getElementById("dvPwd2");
            dvPwd2.innerHTML = "";
            if (uPwd2.value != uPwd.value) {
                dvPwd2.innerHTML = "两次密码不相等！";
                uPwd2.focus();
                return false;
            }
            return true;

        }

        function checkEmail() {
            var uEmail = document.getElementById("uEmail").value;
            var dvEmail = document.getElementById("dvEmail");
            var reg = /^\w+@\w+\.\w+[(com)|(cn)|(org)|(net)]$/;
     
            dvEmail.innerHTML = "";
            if (reg.test(uEmail)) {
                return true;
            }
            else {
                dvEmail.innerHTML = "邮件格式不对！";
                return false;
            }

        }
        function checkBirth() {
            var uBirth = document.getElementById("uBirth").value;
            var dvBirth = document.getElementById("dvBirth");
            var patt = /^((19\d{2})|(200\d)|(201[0-6]))-(0?[1-9]|1[0-2])-(0?[1-9]|[1-2]\d|3[0-1])$/;
            dvBirth.innerHTML = "";
    
            if (patt.test(uBirth)) {
                return true;
            }
            else {
                dvBirth.innerHTML = "出生日期格式(“0000”-“00”-“00”）不对！";
                return false;
            }

        }

        function checkAll() {
            if (!checkName() || !checkPwd() || !checkPwd2() || !checkBirth() || !checkEmail()) {
                return false;
            }
            return true;
        }
    </script>
    <!-- <link rel="shortcut icon" href="../../assets/ico/favicon.ico"> -->

    <title>Justified Nav Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/justified-nav.css" rel="stylesheet">

   
</head>
<body>
<div class="ds">
<div class="container">
      <div class="masthead">
           <ul class="nav nav-justified">
          <li><a href="bootstrapceshi.jsp">首页</a></li>
          <li><a href="#">时间</a></li>
          <li><a href="../tain11/ceshi2.jsp">上传</a></li>
          <li class="active"><a href="注册界面.jsp">注    册</a></li>
          <li><a href="../00/Login.jsp">登    录</a></li>
          <li><a href="../00/Login.jsp">退    出</a></li>
        </ul>
      </div>
    <form method="get" action="success.html" onsubmit="return checkAll()">
       
        <div id="inc">
            昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：<input type="text" id="uName" size="16"><div id="dvName"></div><br />
            密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" id="uPwd" size="16"><div id="dvPwd"></div><br />
            确认密码：<input type="password" id="uPwd2" size="16"><div id="dvPwd2"></div><br />
            出生日期：<input type="text" id="uBirth" size="16"><div id="dvBirth"></div><br />
            电子邮件：<input type="text" id="uEmail" size="16"><div id="dvEmail"></div><br />
       <br />
        <input type="submit" value="提交注册">&nbsp;&nbsp;<input type="reset" value="重置">
        </div>
    </form>
    </div>
    </div>
</body>
</html>