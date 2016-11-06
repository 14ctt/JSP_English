<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Insert title here</title>
<style type="text/css">
        .red {
            background-color:red;
        }
        .orange {
            background-color: orange;
        }
        .yellow {
            background-color: yellow;
        }
        .green {
            background-color: green;
        }
        .limegreen {
            background-color: limegreen;
        }
    </style>
    <script type="text/javascript">
        function openWindow()
        {
            //window.open("register.html", "广告", "toolbars=0,scrollbars=0,location=0,statusbars=0,menubars=0,resizable=0,width=200,height=250");
            //window.showModalDialog("register.html", "注册", "toolbars=0,scrollbars=0,location=0,statusbars=0,menubars=0,resizable=0,width=200,height=250");
        }
        function changeColor(color)
        {
            document.body.style.backgroundColor = color;
            //document.bgColor = color;
        }
    </script>
</head>
<body>
   
    请选择你喜欢的背景颜色：<select onchange="changeColor(this.value)">
        <option class="red" value="red">　　</option>
        <option class="orange" value="orange">　　</option>
        <option class="yellow" value="yellow">　　</option>
        <option class="green" value="green">　　</option>
        <option class="limegreen" value="limegreen">　　</option>
    </select>
</body>
</html>

</html>