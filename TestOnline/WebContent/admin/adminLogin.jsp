<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
<head>
	<title> </title>
	<link rel="stylesheet" href="../Admincss/style.css">
 <link rel="stylesheet" href="js/vendor/jgrowl/css/jquery.jgrowl.min.css">
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		 
	<!-- //For-Mobile-Apps-and-Meta-Tags -->

</head>

<body>
    <h1>在线考试系统后台登录</h1>
    
    <div class="container w3">
        <h2>登录</h2>
         
		<form>
			<div class="username">
				<span class="username" style="height:19px">账号:</span>
				<input type="text" id = "ID"name="name" class="name" placeholder="请输入账号" >
				<div class="clear"></div>
			</div>
			<div class="password-agileits">
				<span class="username"style="height:19px">密码:</span>
				<input type="password" id="PASSWORD" name="password" class="password" placeholder="请输入密码" >
				<div class="clear"></div>
			</div> 
			 
			<div class="login-w3">
					<font size="5px"><a href="#"  class="login" onclick="llogin()">登录</font></h3>
			</div>
			<div class="clear"></div>
		</form>
	</div>
	<div class="footer-w3l">
		<p>在线考试系统后台登录</p>
	</div>
		<script src="js/TweenLite.min.js"></script>
		<script src="js/EasePack.min.js"></script>
		<script src="js/jquery.js"></script>
		<script src="js/rAF.js"></script>
		 
		<script src="js/vendor/jgrowl/jquery.jgrowl.min.js"></script>
		<script src="js/Longin.js"></script>
</body>
</html>