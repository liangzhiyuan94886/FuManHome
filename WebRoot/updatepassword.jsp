<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改密码----</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	       function btclick(){
				var up = document.all("up").value;
				var ucp = document.all("ucp").value;
				if(up!=ucp){
					alert("两次密码不一致");
					return;
				}
		}
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
	      background-image: url(image/bg4.png)
	      }
	      .input{
	            width: 300px;
	            height: 38px;
	            
	      }
	      table{
	            margin: 100px auto;
	            text-align: center;
	            font-size: 20px;
	      }
	      tr{
	            height: 90px;
	      }
	      .bt{
	            width: 150px;
	            height: 40px;
	            color:white;
	            background-color:#10C55B;
	            border: none;
	            font-size: 19px;
	            border-radius:5px;
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
	      a{
	            text-decoration: none;
	            color:white;
	      }
	      .user_div{
	            font-size: 30px;
	            float:left;
	      }
	      span{
	            color:#10C55B;
	      }
	</style>

  </head>
  
  <body>
       <div class="back_div" onmouseover="Mouseover(this)" onmouseout="Mouseout(this)">
            <a href="main.jsp">返回</a>
       </div>
       <div class="user_div">
            Hi! &nbsp;<span><%=session.getAttribute("un")%></span>
       </div>
       <form action="UpdatePasswordServlet" method="post">
            <table>
                  <tr><td>新密码 &nbsp;：</td><td><input type="password" class="input" name="up" required></input></td></tr>
                  <tr><td>确认密码：</td><td><input type="password" class="input" name="ucp" onblur="btclick()" required></input></td></tr>
                  <tr><td></td><td  colspan="2"><input type="submit" class="bt" value="提交修改"></input></td></tr>
            </table>
       </form>
  </body>
</html>
