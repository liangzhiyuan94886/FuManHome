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
    
    <title>My JSP 'cake.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<style>	
.ta {
	margin: 30px auto 0px;
	width: 400px;
	text-align: center;
	border: 1px gray solid;
	border-collapse: collapse;
}

.td {
	border: 1px gray solid;
}

.th {
	border: 1px gray solid;
}
.li{
    display: inline;
}
</style> 

  </head>
  
  <body>
    
    <div style="position: absolute;top:70px;left:60px;font-size:30px;color:blue">
    欢迎光临网上福满家
    </div>
    <br><br><br><br><br><br><hr>
    <div style="font-size:30px;text-align: center;">
    <%=request.getParameter("n") %>，您好
    <table class="ta">
    <thead> <th class="th">蛋糕</th> <th class="th">价格/元</th> </thead>
    <tbody>
    <tr>
    <td class="td">栗子蛋糕</td> <td class="td">18</td>
    </tr>
    <tr>
    <td class="td">香芒慕斯蛋糕</td> <td class="td">25</td>
    </tr>
    <tr>
    <td class="td">榴莲千层蛋糕</td> <td class="td">30</td>
    </tr>
    <tr>
    <td class="td">樱芒贝拉蛋糕</td> <td class="td">20</td>
    </tr>
    </tbody>
    </table>
    </div>
    
    <div style="position: relative;left:100px;top:50px">
    <img alt="栗子蛋糕" src="image/lz.png"><br>
    <span style="position: relative;left:50px;top:10px"> <a href="" style="text-decoration: none">&nbsp;&nbsp;&nbsp;栗子蛋糕 </a> </span> <br><br>
    <div style="position: relative;left:25px;top:13px">
    数量：<input type="button" value="-"></input>
    <input type="text" style="width: 30px"></input>
    <input type="button" value="+"></input>
    </div>
    </div>
    
    <div style="position: relative;left:400px;top:-205px">
    <img alt="香芒慕斯蛋糕" src="image/xmms.png"><br>
    <span style="position: relative;left:60px;top:10px"> <a href="" style="text-decoration: none">&nbsp;&nbsp;&nbsp;香芒慕斯 </a> </span> <br><br>
    <div style="position: relative;left:35px;top:10px">
            数量：<input type="button" value="-"></input>
    <input type="text" style="width: 30px"></input>
    <input type="button" value="+"></input>
    </div>
    </div>
    
    <div style="position: relative;left:700px;top:-465px">
    <img alt="榴莲千层" src="image/llqc.png"><br>
    <span style="position: relative;left:50px;top:10px"> <a href="" style="text-decoration: none">&nbsp;&nbsp;&nbsp;榴莲千层</a> </span> <br><br>
    <div style="position: relative;left:25px;top:13px">
    数量：<input type="button" value="-"></input>
    <input type="text" style="width: 30px"></input>
    <input type="button" value="+"></input>
    </div>
    </div>
    
    <div style="position: relative;left:1000px;top:-725px">
    <img alt="樱芒贝拉" src="image/xmms.png"><br>
    <span style="position: relative;left:60px;top:10px"> <a href="http://www.baidu.com" style="text-decoration: none">&nbsp;&nbsp;&nbsp;樱芒贝拉 </a> </span> <br><br>
    <div style="position: relative;left:35px;top:10px">
    数量：<input type="button" value="-"></input>
    <input type="text" style="width: 30px"></input>
    <input type="button" value="+"></input>
    </div>
    </div>
    
    <div style="font-size: 25px;position: relative;top:-650px;left:600px">
    <img alt="购物车" src="image/shopcar.png" style="width: 10%;height: 15%">
          去结账
    </div>
    
    <div style="text-align:center; margin: -550px auto">
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
