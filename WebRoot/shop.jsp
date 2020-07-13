<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	function btclick() {
		var node = document.all("fl");
		var name = document.all("vip").value;
		var fl = node.value;
		if (fl=="蛋糕类"){
		window.location.href="cake.jsp?n="+name;
		}else if (fl=="奶制品"){
		window.location.href="milk.jsp?n="+name;
		}else if (fl=="面包类"){
		window.location.href=".jsp?n="+name;
		}else {
		window.location.href="?n="+name;
	}
	}
	</script>
	

  </head>
  
  <body>
    <div id="d1">
    <div style="text-align:center;font-size:30px;font-weight:bold;margin:50px 0px;">
    您好！欢迎光临福满家！
    </div>
    <div style="font-size:30px;font-weight:bold;margin-left:100px;">
    请选择您需要的商品 > >
    </div>
    <div style="text-align:center;margin-top:50px;font-size:25px;font-weight:bold;">
    请输入您的会员卡号：&nbsp;<input id="vip" type="text" style="width:150px;height:28px;border-radius:1px"></input><br><br>
    请选择需要的商品类：&nbsp;<select style="width:150px;height:28px;border-radius:1px" id="fl">
    <option>蛋糕类</option>
    <option>奶制品</option>
    <option>面包类</option>
    <option>糕点类</option>
    </select>
    <br>
    <input type="button" value="点击进入" style="width:100px;height:30px;position:relative;top:50px;border-radius:2px;background-color: skyblue" onclick="btclick()"></input>
    </div>
    <div style="position:relative;top:50px;text-align:center;font-size:22px;margin-top:50px;">
    联系电话：15717736921<br>
    联系地址：金鸡路2号&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    </div>
    <div style="position:absolute;left:485px;bottom: 0px">
    <ul>
    <li style="display: inline;"><a href="" style="text-decoration: none">联系我们</a></li>&nbsp;|&nbsp;&nbsp;
    <li style="display: inline;"><a href="" style="text-decoration: none">建议反馈</a></li>&nbsp;|&nbsp;&nbsp;
    <li style="display: inline;"><a href="" style="text-decoration: none">工作机会</a></li>&nbsp;|&nbsp;&nbsp;
    <li style="display: inline;"><a href="" style="text-decoration: none">English Site</a></li><br><br>
    <li style="display: inline;">Copyright © 1994-2017 Fu Man Home 版权所有</li>
    </ul>
    </div>
    
  </body>
</html>
