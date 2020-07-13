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
    
    <title>My JSP 'milk.jsp' starting page</title>
    
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
    <div style="position: absolute;top:70px;left:60px;font-size:30px">
    欢迎光临网上福满家
    </div>
    <br><br><br><br><br><br><hr>
    <div style="font-size:30px;text-align: center;">
    <%=request.getParameter("n") %>，您好
    <table class="ta">
    <thead> <th class="th">牛奶</th> <th class="th">价格/元</th> </thead>
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
  </body>
</html>
