<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人主页----</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	body{
	    background-image: url(image/bg1.png)
	}
	table{
	    margin:100px auto;
	    font-size: 20px;
	}
	tr{
	    height: 60px;
	}
	.input1{
	    width: 320px;
	    height: 35px;
	}
	.input2{
	    width: 150px;
	    height: 38px;
	    border: none;
	    background-color: #10C55B;
	    color:white;
	    border-radius:5px;
	    font-size: 18px;
	}
	select{
	    height: 32px;
	    width:150px;
	}
	.back_div{
	    width: 100px;
	    height: 100px;
	    border-radius:50px;
	    background-color: orange;
	    text-align: center;
	    line-height: 100px;
	    float:right;
	    font-size: 25px;
	}
	.a1{
	    text-decoration:none;
	    color:white;
	}
	.delete_div{
	    float:right;
	}
	.a2{
	    text-decoration: none;
	    font-size: 25px;
	    color:gray;
	}
	.span1{
	    color:#10C55B;
	}
	.user_div{
	    font-size: 30px;
	    float:left;
	    margin-left:70px;
	}
	.span2{
	    color:red;
	    font-size: 14px;
	}
	</style>
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

  </head>
  
  <body>
       <div class="user_div">
            Hi! &nbsp;<span class="span1"><%=session.getAttribute("un")%></span>
            
       </div>
       <div class="back_div" onmouseover="Mouseover(this)" onmouseout="Mouseout(this)">
            <a href="main.jsp" class="a1">返回</a>
       </div>
       <form action="UpdateUserInfoServlet" method="post">
            <table>
                  <tr>
                      <td>用户名：</td><td><input type="text" class="input1" name="un" required value="${sessionScope.userinfo.userName}" disabled></input></td><td><span class="span2">*用户名不可修改</span><td>
                  </tr>
                  <tr>
                      <td>电子邮箱：</td>
                      <td><input type="mail" class="input1" name="mail" required value="${sessionScope.userinfo.mail}"></input></td>
                  </tr>
                  <tr>
                      <td>手机号码：</td>
                      <td><input type="text" class="input1" name="tel" required value="${sessionScope.userinfo.tel}"></input></td>
                  </tr>
                  <tr>
                      <td>性别：</td>
                      <td><input type="radio" name="sex" value="男" <c:if test="${sessionScope.userinfo.sex=='男'}" >checked</c:if>>男</input>
                      <input type="radio" name="sex" value="女" <c:if test="${sessionScope.userinfo.sex=='女'}" >checked</c:if>>女</input></td>
                  </tr>
                  <tr>
                      <td>居住城市：</td>
                      <td>
                         <select name="city">
                         <option <c:if test="${sessionScope.userinfo.city=='桂林'}">selected</c:if> >桂林</option>
                         <option <c:if test="${sessionScope.userinfo.city=='玉林'}">selected</c:if> >玉林</option>
                         <option <c:if test="${sessionScope.userinfo.city=='南宁'}">selected</c:if> >南宁</option>
                         <option <c:if test="${sessionScope.userinfo.city=='柳州'}">selected</c:if> >柳州</option>
                         <option <c:if test="${sessionScope.userinfo.city=='北海'}">selected</c:if> >北海</option>
                         </select>
                      </td>
                  </tr>
                  <tr>
                      <td></td>
                      <td><input type="submit" value="确认修改" class="input2"></input></td>
                  </tr>
            </table>
       </form>
       
       <div class="delete_div">
            <a href="delete.jsp" class="a2">注销账号？</a>
       </div>
  </body>
</html>
