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
    
    <title>欢迎光临</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	.top-div{
	     background-color:#E3E4E5;
	     height: 28px;
	}
	.a1{
	     padding-left: 150px;
	     line-height: 28px;
	     color:#555;
	}
	.a2{
	     color:#FF0033;
	}
	.a3{
	     padding-left: 470px;
	     color:#555;
	}
	a{
	     text-decoration: none;
	}
	.p-div{
	     width:90px;
	     height:26px;
	     position:absolute;
	     top:2px;
	     right:375px;
	     color:#555;
	     text-align: center;
	}
	.none-div{
	     display:none;
	     border: 1px #E3E4E5 solid;
	     border-top: none;
	     background-color: white;
	}
	.l-div{
	     height:26px;
	     width:90px;
	     position:absolute;
	     top:2px;
	     right:250px;
	     color:#555;
	     text-align: center;
	}
	.w-div{
	     position:absolute;
	     top:2px;
	     right:130px;
	     color:#555;
	     height:26px;
	     width:90px;
	     text-align: center;
	}
	.search-div{
	     width:550px;
	     margin: 70px auto;
	}
	.sh{
	    width: 450px;
	    height: 38px;
	    border: 1px #FF0033 solid;
	}
	.bt{
	    width:70px;
	    height: 38px;
	    background-color:#FF0033;
	    border: none;
	    color:white;
	}
	a:hover{
	    color:#FF0033;
	}
	.a4{
	    color:#555;
	}
	.table1{
	    margin-left: 70px;
	    margin-top:-300px;
	    border-collapse: collapse;
	    background-color:#666;
	    color:white;
	}
	.td1{
	    height:50px;
	    width:70px;
	    padding-left: 5px;
	}
	thead{
	    background-color:#FF0033;
	    text-align: center;
	}
	.right-div{
	    float:right;
	    width: 300px;
	    height: 400px;
	    margin-right: 80px;
	    margin-top:-300px;
	    border: 1px #D3D8DE solid;
	}
	.welcome{
	    height: 100px;
	    text-align: center;
	    line-height: 100px;
	}
	
	.services{
	    width:100%;
	    height:50px;
	    background-color:#2E79CC;
	    border-top:2px #2E79CC solid;
	    margin-top: 70px;
	    color:white;
	    line-height: 50px;
	    text-align: center;
	}
	.title1{
	    float:left;
	    width: 150px;
	    height: 50px;
	    margin-left: 372px;
	    background-color: white;
	    color:#2E79CC;
	    
	}
	.title2{
	    float:left;
	    width: 150px;
	    height: 50px;
	}
	.title3{
	    float:left;
	    width: 150px;
	    height: 50px;
	}
	.title4{
	    float:left;
	    width: 150px;
	    height: 50px;
	}
	.mdiv{
	    width:75%;
	    height:483px;
	    border: 1px #D3D8DE solid;
	    margin: 30px auto;
	}
	.div1{
	    width:200px;
	    height: 120px;
	    background-color:#E8F5FE;
	    border-bottom: 1px #D3D8DE solid;
	    text-align: center;
	    line-height: 120px;
	}
	.div2{
	    width:200px;
	    height: 120px;
	    background-color:white;
	    border-bottom: 1px #D3D8DE solid;
	    text-align: center;
	    line-height: 120px;
	}
	.hf{
	    width:600px;
	    height: 400px;
	    margin-left: 295px;
	    margin-top: -130px;
	}
	.span1{
	    color:#54A147;
	    font-size: 18px;
	}
	.span2{
	    position: relative;
	    top:-30px;
	    left:-50px;
	}
	.input1{
	    width: 320px;
	    height: 38px;
	}
	.span3{
	    position: relative;
	    top:-70px;
	    left:-58px;
	}
	.span4{
	    position: relative;
	    top:-120px;
	    left:-55px;
	}
	.span5{
	    position: relative;
	    top:-180px;
	    left:-185px;
	}
	.input2{
	    position: relative;
	    top:-180px;
	    width:150px;
	    height: 38px;
	    background-color: #54A147;
	    color:white;
	    border: none;
	    font-size: 18px;
	}
	.ll{
	    width:600px;
	    height: 400px;
	    margin-left: 295px;
	    margin-top: -250px;
	    display: none;
	}
	.hotel{
	    width:75%;
	    height:483px;
	    border: 1px #D3D8DE solid;
	    margin: 30px auto;
	    display:none;
	}
	.span6{
	    font-size:30px;
	    font-weight: bold;
	    color:#F7514E;
	    position: relative;
	    left:50px;
	    top:50px;
	}
	.input3{
	    width: 400px;
	    height: 38px;
	}
	.input4{
	    width: 262px;
	    height: 38px;
	}
	.input5{
	    width: 200px;
	    height: 38px;
	    background-color: #F7514E;
	    color:white;
	    font-size: 18px;
	    border: none;
	}
	.table2{
	    margin: 70px auto;
	}
	.tr2{
	    height: 60px;
	}
	.ticket{
	    width:75%;
	    height:483px;
	    border: 1px #D3D8DE solid;
	    margin: 30px auto;
	    display:none;
	}
	.span7{
	    font-size:30px;
	    font-weight: bold;
	    color:#2E79CC;
	    position: relative;
	    left:50px;
	    top:100px;
	}
	.table3{
	    margin-left: 260px;
	}
	.input6{
	    width: 200px;
	    height: 38px;
	    background-color: #2E79CC;
	    color:white;
	    font-size: 18px;
	    border: none;
	}
	.span8{
	    font-size:30px;
	    font-weight: bold;
	    color:#2E79CC;
	    position: relative;
	    left:-73px;
	    top:300px;
	}
	.ticket-div{
	    float:right;
	    padding-top:57px;
	}
	.game{
	    width:1000px;
	    height:500px;
	    border: 1px #D3D8DE solid;
	    margin: 30px auto;
	    display:none;
	}
	.QQ{
	    width:500px;
	    height:70px;
	    border-bottom: 1px #D3D8DE solid;
	    border-right: 1px #D3D8DE solid;
	    float:left;
	    text-align: center;
	    line-height: 70px;
	    color:#F5B00B;
	    font-size: 22px;
	}
	.gg{
	    width:499px;
	    height:70px;
	    border-bottom: 1px #D3D8DE solid;
	    float:right;
	    text-align: center;
	    line-height: 70px;
	    color:#F5B00B;
	    font-size: 22px;
	}
	.cz{
	    width:200px;
	    height:430px;
	    border-right: 1px #D3D8DE solid;
	    text-align: left;
	    line-height: 25px;
	    font-size:14px;
	    margin-top: 70px;
	}
	.table3{
	    margin-left: 280px;
	    margin-top: 18px;
	}
	.table4{
	    margin-left: 350px;
	    margin-top: -350px;
	}
	.input7{
	    width: 200px;
	    height: 38px;
	    background-color: #F5B00B;
	    color:white;
	    font-size: 18px;
	    border: none;
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
	top: 0px;
	left: 400px;
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
	
	function aMouseOver(node){
	        node.style.backgroundColor="white";
	        document.all("d1").style.display = "block";
	}
	function aMouseOut(node){
	        node.style.backgroundColor="#E3E4E5";
	        document.all("d1").style.display = "none";
	}
	function bMouseOver(node){
	        node.style.backgroundColor="white";
	        document.all("d2").style.display = "block";
	}
	function bMouseOut(node){
	        node.style.backgroundColor="#E3E4E5";
	        document.all("d2").style.display = "none";
	}
	function cMouseOver(node){
	        node.style.backgroundColor="white";
	        document.all("d3").style.display = "block";
	}
	function cMouseOut(node){
	        node.style.backgroundColor="#E3E4E5";
	        document.all("d3").style.display = "none";
	}
	
	function trMouseOver(node){
	        node.style.fontWeight="bold";
	        node.style.fontSize="17px";
	}
	function trMouseOut(node){
	        node.style.backgroundColor="#666";
	        node.style.fontWeight="normal";
	        node.style.fontSize="16px";
	}
	function Mouseover(node){
	        node.style.backgroundColor="#54A147";
	        node.style.fontWeight="bold";
	        node.style.fontSize="22px";
	        node.style.color="white";
	}
	function Mouseout(node){
	        node.style.backgroundColor="white";
	        node.style.fontWeight="normal";
	        node.style.fontSize="16px";
	        node.style.color="black";
	}
	function div1OnClick(node){
	        document.all("a2").style.backgroundColor = "#2E79CC";
            document.all("a2").style.color = "white";
            document.all("a3").style.backgroundColor = "#2E79CC";
            document.all("a3").style.color = "white";
            document.all("a4").style.backgroundColor = "#2E79CC";
            document.all("a4").style.color = "white";
            node.style.color="#2E79CC";
            node.style.backgroundColor="white";
            document.all("m").style.display="block";
            document.all("h").style.display="none";
            document.all("t").style.display="none";
            document.all("g").style.display="none";
	}
	function div2OnClick(node){
            node.style.color="#2E79CC";
            node.style.backgroundColor="white";
            document.all("a1").style.backgroundColor = "#2E79CC";
            document.all("a1").style.color = "white";
            document.all("a3").style.backgroundColor = "#2E79CC";
            document.all("a3").style.color = "white";
            document.all("a4").style.backgroundColor = "#2E79CC";
            document.all("a4").style.color = "white";
            document.all("m").style.display="none";
            document.all("h").style.display="block";
            document.all("t").style.display="none";
            document.all("g").style.display="none";
    }
    function div3OnClick(node){
            node.style.color="#2E79CC";
            node.style.backgroundColor="white";
            document.all("a1").style.backgroundColor = "#2E79CC";
            document.all("a1").style.color = "white";
            document.all("a2").style.backgroundColor = "#2E79CC";
            document.all("a2").style.color = "white";
            document.all("a4").style.backgroundColor = "#2E79CC";
            document.all("a4").style.color = "white";
            document.all("t").style.display="block";
            document.all("m").style.display="none";
            document.all("h").style.display="none";
            document.all("g").style.display="none";
    }
    function div4OnClick(node){
            node.style.color="#2E79CC";
            node.style.backgroundColor="white";
            document.all("a1").style.backgroundColor = "#2E79CC";
            document.all("a1").style.color = "white";
            document.all("a2").style.backgroundColor = "#2E79CC";
            document.all("a2").style.color = "white";
            document.all("a3").style.backgroundColor = "#2E79CC";
            document.all("a3").style.color = "white";
            document.all("g").style.display="block";
            document.all("m").style.display="none";
            document.all("h").style.display="none";
            document.all("t").style.display="none";
    }
    function divLLOnClick(node) {
			document.all("HF").style.display = "none";
			document.all("LL").style.display = "block";
			document.all("hf").style.backgroundColor = "#E8F5FE";
			document.all("ll").style.backgroundColor = "white";
		}
	function divHFOnClick(node) {
			document.all("LL").style.display = "none";
			document.all("HF").style.display = "block";
			document.all("hf").style.backgroundColor = "white";
			document.all("ll").style.backgroundColor = "#E8F5FE";
		}
	
	window.onload=function(){
	        var ans = document.getElementsByName("price");
            for(var i=0;i<ans.length;i++){
            ans[i].onchange=setA;
            }
	}
	function setA(){
	        var ans = document.getElementsByName("price");
            var ord = document.getElementById("ttt");
            for(var i=0;i<ans.length;i++)
            if(ans[i].checked==true){
            ord.innerHTML=ans[i].value;
            }
	}
	</script>
  </head>
  
  <body>
    <div class="top-div">
         <a href="login.jsp" class="a1">请登录</a>&nbsp;&nbsp;&nbsp;
         <a href="regist.jsp" class="a2">免费注册</a>
          
         <a href="" class="a3">我的订单</a>
            
         <div class="p-div" onmouseover="aMouseOver(this)" onmouseout="aMouseOut(this)">
                                        个人中心  ∨
              <div class="none-div" id="d1">
              <a href="" class="a4">会员信息</a><br>
              <a href="" class="a4">优惠折扣</a><br>
              <a href="" class="a4">我的收藏</a><br>
              <a href="" class="a4">我的足迹</a>
              </div>
         </div>
         <div class="l-div" onmouseover="bMouseOver(this)" onmouseout="bMouseOut(this)">
                                        联系客服  ∨
              <div class="none-div" id="d2">
              <a href="" class="a4">帮助中心</a><br>
              <a href="" class="a4">售后客服</a><br>
              <a href="" class="a4">建议反馈</a>
              </div>
         </div>
         <div class="w-div" onmouseover="cMouseOver(this)" onmouseout="cMouseOut(this)">
                                       网站导航  ∨
              <div class="none-div" id="d3">
              <a href="" class="a4">发现好货</a><br>
              <a href="" class="a4">团购秒杀</a><br>
              <a href="cake.jsp" class="a4">蛋糕专区</a>
              </div>
         </div>
    </div>
    <div class="search-div">
        <input type="text" placeholder="笔记本电脑" class="sh"></input><input type="button" value="搜 &nbsp;索" class="bt"></input>
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
    
    <div class="right-div">
        <div class="welcome" onmouseover="Mouseover(this)" onmouseout="Mouseout(this)">
            <span id="hello" style="visibility: visible;">Hi，<%=session.getAttribute("un")%>你好！</span>
        </div>
        <div class="welcome" onmouseover="Mouseover(this)" onmouseout="Mouseout(this)" >
            <a href="QueryUserInfoServlet" onmouseover="Mouseover(this)" onmouseout="Mouseout(this)">个人中心</a>
        </div>
        <div class="welcome" onmouseover="Mouseover(this)" onmouseout="Mouseout(this)" >
            <a href="" onmouseover="Mouseover(this)" onmouseout="Mouseout(this)">我的订单</a>
        </div>
        <div class="welcome" onmouseover="Mouseover(this)" onmouseout="Mouseout(this)" >
            <a href="updatepassword.jsp" onmouseover="Mouseover(this)" onmouseout="Mouseout(this)">修改密码</a>
        </div>
    </div>
         <table class="table1">
               <thead>
               <tr>
               <td colspan="4" class="td1">全部商品分类</td>
               </tr></thead>
               <tr onmouseover="trMouseOver(this)" onmouseout="trMouseOut(this)">
               <td class="td1"><a>手机</a></td>
               <td class="td1"><a>数码相机</a></td>
               <td class="td1"><a>单反相机</a></td>
               <td class="td1"><a>储存卡</a></td>
               </tr>
               <tr onmouseover="trMouseOver(this)" onmouseout="trMouseOut(this)">
               <td class="td1"><a>笔记本</a></td>
               <td class="td1"><a>台式机</a></td>
               <td class="td1"><a>平板电脑</a></td>
               <td class="td1"><a>鼠标键盘</a></td>
               </tr>
               <tr onmouseover="trMouseOver(this)" onmouseout="trMouseOut(this)">
               <td class="td1"><a>洗发</a></td>
               <td class="td1"><a>沐浴</a></td>
               <td class="td1"><a>洁面</a></td>
               <td class="td1"><a>香水</a></td>
               </tr>
               <tr onmouseover="trMouseOver(this)" onmouseout="trMouseOut(this)">
               <td class="td1"><a>休闲鞋</a></td>
               <td class="td1"><a>跑鞋</a></td>
               <td class="td1"><a>篮球鞋</a></td>
               <td class="td1"><a>足球鞋</a></td>
               </tr>
               <tr onmouseover="trMouseOver(this)" onmouseout="trMouseOut(this)">
               <td class="td1"><a>T恤</a></td>
               <td class="td1"><a>卫衣</a></td>
               <td class="td1"><a>运动裤</a></td>
               <td class="td1"><a>夹克</a></td>
               </tr>
               <tr onmouseover="trMouseOver(this)" onmouseout="trMouseOut(this)">
               <td class="td1"><a>冰箱</a></td>
               <td class="td1"><a>电视机</a></td>
               <td class="td1"><a>空调</a></td>
               <td class="td1"><a>洗衣机</a></td>
               </tr>
               <tr onmouseover="trMouseOver(this)" onmouseout="trMouseOut(this)">
               <td class="td1"><a>冰箱</a></td>
               <td class="td1"><a>电视机</a></td>
               <td class="td1"><a>空调</a></td>
               <td class="td1"><a>洗衣机</a></td>
               </tr>
         </table>
         
  
  <div class="services">
       <div class="title1" onclick="div1OnClick(this)" id="a1">充值缴费</div>
       <div class="title2" onclick="div2OnClick(this)" id="a2">酒店预定</div>
       <div class="title3" onclick="div3OnClick(this)" id="a3">机票预定</div>
       <div class="title4" onclick="div4OnClick(this)" id="a4">游戏充值</div>
  </div>
  
       <div class="mdiv" id="m">
             <div class="div2" onclick="divHFOnClick(this)" id="hf">话费充值
                 <div class="hf" id="HF">
                     <span class="span1">品质保证，安全快捷</span><br>
                     <form action="">
                     <span class="span2">手机号码： <input type="text" placeholder="支持移动/联通/电信" class="input1"></input></span><br>
                     <span class="span3">
                                                         充值面值： 
                     <input type="radio" checked onchange="setA()" name="price" value="10" >10元</input>&nbsp; &nbsp;
                     <input type="radio" name="price" value="20"> 20元 </input>&nbsp; &nbsp;
                     <input type="radio" name="price" value="30"> 30元 </input>&nbsp; &nbsp;
                     <input type="radio" name="price" value="50"> 50元 </input><br>
                     </span>
                     <span class="span4">
                     <input type="radio" name="price" value="100">100元</input>&nbsp;
                     <input type="radio" name="price" value="200">200元</input>&nbsp; &nbsp;
                     <input type="radio" name="price" value="500">500元</input>&nbsp;
                     </span><br>
                     <span class="span5">销售价格： <span id="ttt"></span> 元</span><br>
                     <input type="button" class="input2" value="立即充值"></input>
                     </form>
                 </div>
             </div>
             <div class="div1" onclick="divLLOnClick(this)" id="ll">流量充值
                 <div id="LL" class="ll">
                      <span class="span1">品质保证，安全快捷</span><br>
                     <span class="span2">手机号码： <input type="text" placeholder="支持移动/联通/电信" class="input1"></input></span><br>
                     <span class="span3">
                                                         流量面值： 
                     <input type="radio" onchange="setB()" name="price2" value="20" >300M</input>&nbsp; &nbsp;
                     <input type="radio" name="price2" value="30"> 500M </input>&nbsp; &nbsp;
                     <input type="radio" name="price2" value="50"> 1G </input>&nbsp; &nbsp;
                     <input type="radio" name="price2" value="70"> 2G </input><br>
                     </span>
                     <span class="span4">
                     </span><br>
                     <span class="span5">销售价格： <span id="aaa"></span>元</span><br>
                     <input type="button" class="input2" value="立即充值"></input>
                 </div>
             </div>
             <div class="div1">套餐变更
             
             </div>
             <div class="div1">水电煤气
             
             </div>
       </div>
       
       <div class="hotel" id="h">
           <span class="span6">酒店预定</span>
           <table class="table2">
                 <tr class="tr2"><td>目的地：</td><td><input type="text" placeholder="桂林" class="input3"></td></tr>
                 <tr class="tr2"><td>入住日期：</td><td><input type="date" class="input4"></input></td></tr>
                 <tr class="tr2"><td>离店日期：</td><td><input type="date" class="input4"></td></tr>
                 <tr class="tr2"><td>关键词：</td><td><input type="text" placeholder="酒店名称/商圈/地标" class="input3"></td></tr>
                 <tr class="tr2"><td></td><td><input type="button" value="立即搜索" class="input5"></td></tr>
           </table>
       </div>
       
       <div class="ticket" id="t">
           <span class="span7">国内机票</span>
           <span class="span8">国际机票</span>
           <div class="ticket-div">
                <img alt="机票" src="image/ticket1.png"><br>
                <img alt="机票" src="image/ticket2.png"><br>
                <img alt="机票" src="image/ticket3.png"><br>
                <img alt="机票" src="image/ticket4.png">
           </div>
           <table class="table3">
                 <tr class="tr2"><td>出发城市：</td><td><input type="text" placeholder="桂林" class="input3"></td></tr>
                 <tr class="tr2"><td>到达城市：</td><td><input type="text" class="input3"></input></td></tr>
                 <tr class="tr2"><td>航程类型：</td><td><input type="radio" name="ls" checked>单程 &nbsp;&nbsp; <input type="radio" name="ls">往返</td></tr>
                 <tr class="tr2"><td>出发日期：</td><td><input type="date"  class="input4"></td></tr>
                 <tr class="tr2"><td>返程时间：</td><td><input type="date"  class="input4"></td></tr>
                 <tr class="tr2"><td></td><td><input type="button" value="搜索机票" class="input6"></td></tr>
           </table>
       </div>
       
       <div class="game" id="g">
           <div class="QQ">Q币充值</div>
           <div class="gg">游戏充值</div>
           <div class="cz">
               <img alt="logo" src="image/logo_qq.png">
               <ul>
                   <li>Q币可以用来购买腾讯所有包月服务、游戏道具及点券</li>
                   <li>Q币仅能用于兑换腾讯公司直接运营的产品和服务，不能兑换现金，不能进行转账交易，不能兑换腾讯公司体系外的产品和服务</li>
                   <li>1Q币=10Q点</li>
               </ul>
           </div>
           <table class="table4">
                 <tr class="tr2"><td>充值账号：</td><td><input type="text" class="input3"></input></td></tr>
                 <tr class="tr2"><td>充值数量：</td><td><input type="text" class="input3"></input></td></tr>
                 <tr class="tr2"><td></td><td></td></tr>
                 <tr class="tr2"><td></td><td><input type="button" value="立即支付" class="input7"></input></td></tr>
           </table>
       </div>
  
  </body>
</html>
