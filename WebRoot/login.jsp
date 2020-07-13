<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>欢迎登陆</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		var i = 0;
		var clone = $('.banner .img li').first().clone();
		$('.banner .img').append(clone);
		var size = $('.banner .img li').size();
		for ( var j = 0; j < size - 1; j++) {
			$('.banner .num').append('<li></li>');
		}
		$('.num li').first().addClass('active');
		$('.btn-left').click(function() {
			i++;
			move();
		});
		$('.btn-right').click(function() {
			i--;
			move();
		});

		function move() {
			if (i == size) {
				$('.banner .img').css('left', 0);
				i = 1;
			}
			if (i == -1) {
				$('.banner .img').css({
					left : -(size - 1) * 520
				});
				i = size - 2;
			}

			$('.img').stop().animate({
				left : -i * 520
			}, 500);
			if (i == size - 1) {
				$('.num li').eq(0).addClass('active').siblings().removeClass(
						'active');
			} else {
				$('.num li').eq(i).addClass('active').siblings().removeClass(
						'active');
			}
		}
		;

		$('.banner .num li').hover(function() {
			var index = $(this).index();
			i = index;
			$('.img').stop().animate({
				left : -i * 520
			}, 500);
			$(this).addClass('active').siblings().removeClass('active');
		});

		var timer = setInterval(function() {
			i++;
			move();
		}, 2000);

		$('.banner').hover(function() {
			clearInterval(timer);
		}, function() {
			timer = setInterval(function() {
				i++;
				move();
			}, 2000);
		});
	});
	

	var index = 0;
	function div1OnClick(d1) {
		switch (index) {
		case 0:
			document.all("d3").style.display = "none";
			document.all("d4").style.display = "block";
		}
	}
	function div2OnClick(d2) {
		switch (index) {
		case 0:
			document.all("d4").style.display = "none";
			document.all("d3").style.display = "block";
		}
	}
	function mouseOver(){
            document.getElementById('img').src ="image/show.png";
        }
    function mouseOut(){
            document.getElementById('img').src ="image/sm.png";
        }
    function loginMouseOver(node){
            node.style.color="#FF0033";
            node.style.fontWeight="bold";
    } 
    function loginMouseOut(node){
            node.style.color="rgb(109, 109, 109)";
            node.style.fontWeight="normal";
    }
    function btMouseOver(bt){
            bt.style.backgroundColor="#FF0033";
    }
    function btMouseOut(bt){
            bt.style.backgroundColor="#ff3c3c";  
    }
</script>
<style type="text/css">
.bg {
	width: 100%;
	height: 500px;
	margin-top: 75px;
	background-color: skyblue;
}

.title {
	color: FF0033;
	font-size: 40px;
	position: absolute;
	top: 25px;
	left: 60px;
	text-shadow: 1px 1px 1px;
}

.login-form1 {
	width: 340px;
	height: 375px;
	position: absolute;
	right: 180px;
	top: 140px;
	background-color: white;
}

.login-form2 {
	width: 340px;
	height: 400px;
	position: absolute;
	right: 180px;
	top: 140px;
	background-color: white;
	display: none;
}

.login-way-s-1 {
	font-size: 18px;
	color: rgb(109, 109, 109);
	position: absolute;
	top: 20px;
	left: 30px;
}
.login-way-s-2{
	font-size: 18px;
	color: FF0033;
	position: absolute;
	top: 20px;
	left: 30px;
	font-weight: bold;
}

.login-way-z-1{
	font-size: 18px;
	font-weight: bold;
	color: FF0033;
	position: absolute;
	top: 20px;
	right: 30px;
}
.login-way-z-2{
	font-size: 18px;
	color: rgb(109, 109, 109);
	position: absolute;
	top: 20px;
	right: 30px;
}

.input-text {
	width: 280px;
	height: 38px;
	position: absolute;
	top: 70px;
	left: 30px;
}

.input-password {
	width: 280px;
	height: 38px;
	position: absolute;
	top: 130px;
	left: 30px;
}

.input-button {
	width: 280px;
	height: 38px;
	position: absolute;
	top: 250px;
	left: 30px;
	background-color: #ff3c3c<%--FF0033--%>;
	font-size: 20px;
	border: 0px;
	color:white;
}

.bottom{
	font-size:15px;
	color:gray;
	text-align: center;
	margin: 15px auto 0;
}

.sm {
	text-align: center;
	margin-top:70px;
}
.sg{
    position: absolute;
    top:300px;
    left:50px;
}
.sp{
    font-size:15px;	
    position: absolute;
	top: 270px;
	left: 85px;
}
a{
    text-decoration: none;
}

* {
	margin: 0;
	padding: 0;
}

ul {
	list-style: none;
}

.banner {
	width: 520px;
	height: 280px;
	position: relative;
	top: 90px;
	left: 130px;
	overflow: hidden;
}

.banner .img {
	width: 3000px;
	position: absolute;
	left: 0;
	top: 0;
}

.banner .img li {
	float: left;
}

.num {
	position: absolute;
	left: 0;
	bottom: 20px;
	font-size: 0;
	text-align: center;
	width: 100%;
}

.num li {
	width: 10px;
	height: 10px;
	border-radius: 10px;
	background: #888;
	display: inline-block;
	margin: 0 3px;
}

.num li.active {
	background: #f60;
}

.btn {
	width: 30px;
	height: 50px;
	background: rgba(0, 0, 0, .3);
	color: #fff;
	font-family: "宋体";
	font-size: 40px;
	position: absolute;
	top: 50%;
	cursor: pointer;
	display: none;
}

.banner:hover .btn {
	display: block;
}

.btn-left {
	left: 0;
}

.btn-right {
	right: 0;
}
</style>


</head>

<body>
	<div class="title">
		<i>Fu Man Home</i>
	</div>
	
	<div class="bg">
		<div class="login-form1" id="d3">
			<form action="Login" method="post" id="form1">
				<div class="login-way-s-1" id="d1" onclick="div1OnClick(this)" onmouseover="loginMouseOver(this)" onmouseout="loginMouseOut(this)">扫码登陆</div>
				<div class="login-way-z-1">账户登录</div>
				<input type="text" placeholder="用户名/手机号/邮箱" class="input-text" name="un" required></input>
				<input type="password" placeholder="密码" class="input-password" name="up" required></input> 
				<input type="submit" value="登 &nbsp;&nbsp;陆" class="input-button" onmouseover="btMouseOver(this)" onmouseout="btMouseOut(this)"></input>
			</form>
			<a href="regist.jsp" style="position: absolute;top:195px;left:30px;color:FF0033">立即注册></a>
			<a href="" style="position: absolute;top:195px;right:30px;color:gray">忘记密码？</a>

			<a href="" style="position: absolute;bottom: 30px;left:30px"> <img src="image/QQ.png"></a> 
			<span style="position: absolute;bottom: 32px;left:48px"><a href="" style="color:gray">QQ</a></span>
			 <a href="" style="position: absolute;bottom: 30px;left:90px"> <img src="image/wechat.png"></a> 
			 <span style="position: absolute;bottom: 32px;left:110px"><a href="" style="color:gray">微信</a></span> 
			 <a href="" style="position: absolute;bottom: 30px;left:165px"> <img src="image/sina.png"></a>
			 <span style="position: absolute;bottom: 32px;left:187px"><a href="" style="color:gray">新浪</a></span>
			 <a href="" style="position: absolute;bottom: 30px;left:240px"> <img src="image/alipay.png"></a>
			 <span style="position: absolute;bottom: 32px;left:260px"><a href="" style="color:gray">支付宝</a></span>
		</div>

		<div class="login-form2" id="d4">
			<div class="login-way-s-2">扫码登陆</div>
			<div class="login-way-z-2" id="d2" onclick="div2OnClick(this)" onmouseover="loginMouseOver(this)" onmouseout="loginMouseOut(this)">账户登录</div>
			<div class="sm">
				<img src="image/sm.png" alt="二维码" onmouseover="mouseOver()" 
				onmouseout="mouseOut()" id="img"></img>
			</div>
			<span class="sp">打开<a href="" style="color:red">手机app</a>扫描二维码</span>
			<div class="sg">
			<img alt="" src="image/suggest.png">
			</div>
			<a href="regist.jsp" style="position: absolute;bottom:25px;right:30px;color:#e4393c<%--FF0033--%>">立即注册></a>
			<a href="" style="position: absolute;bottom: 23px;left:30px"> <img src="image/QQ.png"></a> 
			<span style="position: absolute;bottom: 25px;left:48px"><a href="" style="color:gray">QQ</a></span>
			<a href="" style="position: absolute;bottom: 23px;left:90px"> <img src="image/wechat.png"></a> 
			<span style="position: absolute;bottom: 25px;left:110px"><a href="" style="color:gray;">微信</a></span>
		</div>
		
		<div class="banner">
			<ul class="img">
				<li><a href=""><img src="image/1.jpg" /></a></li>
				<li><a href=""><img src="image/2.jpg" /></a></li>
				<li><a href=""><img src="image/3.jpg" /></a></li>
				<li><a href=""><img src="image/4.jpg" /></a></li>
			</ul>
			<ul class="num">
			</ul>
			<div class="btn btn-left">&lt;</div>
			<div class="btn btn-right">&gt;</div>
		</div>

	</div>

	<div class="bottom">
		<ul>
			<li style="display: inline;"><a href="" style="color:gray">联系我们</a></li>&nbsp;|&nbsp;&nbsp;
			<li style="display: inline;"><a href="" style="color:gray">建议反馈</a></li>&nbsp;|&nbsp;&nbsp;
			<li style="display: inline;"><a href="" style="color:gray">工作机会</a></li>&nbsp;|&nbsp;&nbsp;
			<li style="display: inline;"><a href="" style="color:gray">English Site</a></li>
			<br>
			<br>
			<li style="display: inline;">Copyright © 1994-2017 Fu Man
				Home 版权所有</li>
			<br><br><br>
		</ul>
	</div>
</body>
</html>
