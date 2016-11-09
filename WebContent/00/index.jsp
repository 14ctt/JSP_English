<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #dvProgress {
            width:0px;
            height:40px;
            background-color:blue;
            margin-top:200px;
            margin-left:480px;
            line-height:40px;
            text-align:center;
        }
      
    </style>
    <script type="text/javascript">
        var count = 0;
        var timeId;
        function loadGame()
        {
            ++count;
            var dv = document.getElementById("dvProgress");
            dv.style.width = count*3 + "px";
            dv.innerHTML = count + "%";

            timeId = setTimeout("loadGame()", 50);
            if (count >= 100)
            {
                clearTimeout(timeId);
                dv.innerHTML = "网页已经加载完成！";
                
                location.href="bootstrapceshi.jsp";
                
            }
        }
        window.onload = function () {
            loadGame();
            
        };
    </script>
</head>
<body>
   <div>
    <h2 align="center">欢迎进入网页案例学习网！</h2>
    <div id="dvProgress"></div>
    </div>
</body>
</html>