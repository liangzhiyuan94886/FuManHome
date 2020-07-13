<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'delete.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	     function Mouseover(node){
	           node.style.fontWeight="bold";
	           node.style.fontSize="32px";
	}
	       function Mouseout(node){
	           node.style.fontWeight="normal";
	           node.style.fontSize="25px";
	}
	</script>
	
	<style type="text/css">
	body{
	      background-image: url(image/bg3.png)
	}
	table{
	      margin: 100px auto;
	      text-align: center;
	      font-size: 20px;
	}
	tr{
	      height: 90px;
	}
	.input1{
	      width: 300px;
	      height: 38px;
	}
	.input2{
	      width: 300px;
	      height: 38px;
	}
	.bt{
	     width: 150px;
	     height: 40px;
	     color:white;
	     background-color:#FF3C3C;
	     border: none;
	     font-size: 19px;
	     border-radius:5px;
	}
	.back_div{
	     width: 100px;
	     height: 100px;
	     border-radius:50px;
	     background-color: #10C55B;
	     text-align: center;
	     line-height: 100px;
	     float:right;
	     font-size: 25px;
	 }
	 a{
	     text-decoration: none;
	     color:white;
	 }
	 .user_div{
	     font-size: 30px;
	     float:left;
	     margin-left:80px;
	 }
	  .span1{
	     color:#10C55B;
	 }
	 .span2{
	     font-size: 16px;
	 }
	 .warning{
	     float:left;
	     width: 200px;
	     margin-left: -180px;
	     margin-top: 100px;
	 }
	 .span3{
	     font-size: 25px;
	 }
	 .span4{
	     font-size: 50px;
	     color:red;
	     font-weight: bold;
	 }
	</style>

  </head>
  
  <body>
       <div class="user_div">
            Hi! &nbsp;<span class="span1"><%=session.getAttribute("un")%></span>
            
       </div>
       <div class="warning">
            &nbsp; &nbsp; &nbsp; &nbsp;
            <span class="span3">请注意</span>
            <span class="span4">！</span>
            <span class="span2">
                 <ul>
                     <li>注销账号之后您将不能享受优惠信息</li>
                     <li>11</li>
                     <li>您的个人信息将全部清空，而且无法恢复</li>
                 </ul>
            </span>
       </div>
       <div class="back_div" onmouseover="Mouseover(this)" onmouseout="Mouseout(this)">
            <a href="main.jsp">返回</a>
       </div>
       <form action="DeleteUserInfoServlet" method="post">
            <table>
                  <tr><td>用户名 &nbsp;：</td><td><input type="password" class="input1" name="un" required></input></td></tr>
                  <tr><td>验证密码：</td><td><input type="password" class="input2" name="up" onblur="btclick()" required></input></td></tr>
                  <tr><td></td><td colspan="2"><input type="submit" class="bt" value="注销账号"></input></td></tr>
            </table>
       </form>
  </body>
</html>
