<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
	.top{
	     width:105%;
	     height:28px;
	     background-color: #f5f5f5;
	     border-bottom: 1px #ddd solid;
	     margin-left: -8px;
	     margin-top:-9px;		
	}
	.top-text{
	     float:right;
	     padding: 0px 200px;
	     line-height: 28px;
	     font-size: 16px;
	}
	.ldiv{
	     position: absolute;
	     top:43px;
	     left:50px;
	     
	}
	.tdiv{
	     position: absolute;
	     top:130px;
	     left:200px;
	}
	table{
	     font-size: 23px;
	}
	tr{
	     height: 50px;
	}
	.input-text{
	     width: 250px;
	     height: 35px;
	     background-color: rgba(0, 0, 0, 0.09);
	     border: none;
	     border-radius:3px;
	}
	.city{
	     width: 105px;
	     height: 30px;
	     border-radius:3px;
	}
	.submit{
	     font-size:23px;
	     background-color:#ff3c3c;
	     border:none;
	     border-radius:3px;
	     color:white;
	     width: 270px;
	     height: 35px;
	     position: absolute;
	     left:80px;
	     top:380px

	}
	.sp1{
	     font-size: 13px;
	     position: absolute;
	     left:75px;
	     top:420px
    }
    a{
         text-decoration: none;
    }
    .wdiv{
         float:right;
         margin-right: 200px;
         margin-top: 40px;
    }
    .sp2{
         font-size: 17px;
         font-family: 微软雅黑;
    }
    .sp3{
         color:#fd017c;
    }
    .bottom{
	     font-size:15px;
	     color:gray;
	     position: absolute;
	     left:460px;
	     top: 650px; 
    }
    .hrdiv{
         width: 1050px;
         position: absolute;
	     left:150px;
	     top: 630px;
	     border-top:0.5px gray solid;
    }
	</style>
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
	     function sbMouseOver(node){
	             node.style.backgroundColor="#d72226";
	     }
	     function sbMouseOut(node){
	             node.style.backgroundColor="#ff3c3c";
	     }
	     
	     function textMouseOver(node){
	             node.style.backgroundColor="rgba(0, 0, 0, 0.23)";
	     }
	     function textMouseOut(node){
	             node.style.backgroundColor="rgba(0, 0, 0, 0.09)";
	     }
	</script>

  </head>
  
  <body>
       <div class="top">
	        <div class="top-text">
	             <a href="login.jsp" style="color:#555">登陆 &nbsp;|&nbsp;</a>
	             <a href="main.jsp" style="color:#ff3c3c">福满家首页</a>
	             <a href="" style="color:#555">&nbsp;| &nbsp;联系我们</a>
	        </div>
	   </div>
       <div class="ldiv">
           <img style="width: 80%;height: 12%;" alt="logo" src="image/logo.jpg">
       </div>
 <br><br><br><br><hr style="background-color:gray;opacity:0.3">
  <div class="tdiv">
  <form action="Regist" method="post">
       <table>
             <tr>
             <td>用户名</td>
             <td><input class="input-text" type="text" name="un" onmouseover="textMouseOver(this)" onmouseout="textMouseOut(this)" required></input></td>
             </tr>
             <tr>
             <td>设置密码</td>
             <td><input class="input-text" type="password" name="up" onmouseover="textMouseOver(this)" onmouseout="textMouseOut(this)" required></input></td>
             </tr>
             <tr>
             <td>确认密码</td>
             <td><input class="input-text" type="password" name="ucp" onblur="btclick()" onmouseover="textMouseOver(this)" onmouseout="textMouseOut(this)" required></input></td>
             </tr>
             <tr>
             <td>电子邮箱</td>
             <td><input class="input-text" type="email" name="mail" onmouseover="textMouseOver(this)" onmouseout="textMouseOut(this)" required></input></td>
             </tr>
             
             <tr>
             <td>手机号码</td>
             <td><input class="input-text" type="text" name="tel" onmouseover="textMouseOver(this)" onmouseout="textMouseOut(this)" required></input></td>
             </tr>
             <tr>
             <td>性别</td>
             <td style="text-align:center"><input type="radio" value="男" name="sex" checked>男</input>&nbsp;&nbsp;&nbsp;
             <input type="radio" value="女" name="sex">女</input></td>
             </tr>
             <tr>
             <td>居住城市</td>
             <td style="text-align:center">
                <select class="city" name="city" onmouseover="textMouseOver(this)" onmouseout="textMouseOut(this)">
                       <option>桂林</option>
                       <option>玉林</option>
                       <option>南宁</option>
                       <option>柳州</option>
                       <option>北海</option>
                </select>
             </td>
             </tr>
             
       </table>
       <input class="submit" type="submit" value="立即注册" onmouseover="sbMouseOver(this)" onmouseout="sbMouseOut(this)"></input>
       <span class="sp1">&nbsp;&nbsp;&nbsp; 点击立即注册表示您已阅读并同意遵守<a href="" style="color:#006bc8">《FuManHome用户服务协议》</a>和<a href="" style="color:#006bc8">《隐私政策》</a></span>
       </form>
       </div>
       
       <div class="wdiv">
            <span class="sp2">
                                                注册成为“福满家“的用户后，您可以：
            </span>
            <ul>
                <li>享受优质超低价格<span class="sp3">团购</span>服务</li><br>
                <li>查询、计划、管理您的<span class="sp3">订单</span>信息</li><br>
                <li>等等等等</li>
            </ul>
            <img alt="宣传图片" src="image/xc.jpg">
       </div>
       <div class="hrdiv">
       
       </div>
       <div class="bottom">
		<center><ul>
			<li style="display: inline;"><a href="" style="color:gray">联系我们</a></li>&nbsp;|&nbsp;&nbsp;
			<li style="display: inline;"><a href="" style="color:gray">建议反馈</a></li>&nbsp;|&nbsp;&nbsp;
			<li style="display: inline;"><a href="" style="color:gray">工作机会</a></li>&nbsp;|&nbsp;&nbsp;
			<li style="display: inline;"><a href="" style="color:gray">English Site</a></li>
			<br>
			<br>
			<li style="display: inline;">Copyright © 1994-2017 Fu Man Home 版权所有</li>
		</ul></center>
	  </div>
      </body> 
</html>
