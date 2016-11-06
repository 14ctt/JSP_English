<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
    <div id="dvTime"></div>
    </body>
</html>
