<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>在线考试系统</title>
	<link href="../Studentcss/style.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet"
		href="js/vendor/jgrowl/css/jquery.jgrowl.min.css">
</head>
<body class="Login">
	<!--Login-开始-->

	<div class="Login_heand dk">
		<a href="../index.jsp" class="Login_logo fl"> <img
			src="../images/logo.png" class="fl" />
		<p class="fl">在线考试系统</p>
			<div class="clear"></div>
		</a> <a href="#" class="Login_down fr"> </a>
		<div class="clear"></div>
	</div>

	<div class="Login_k">
		<div class="Login_T">
			学生登录
			<p></p>
		</div>

		<!--登录-开始-->
		<form class="Login_dl">
			<div class="Login_row">
				<input name="zhanghao" type="text" id = "ID" value=""
					class="Login_input Login_inp1" placeholder="用户名" />
			</div>
			<div class="Login_row">
				<input name="password" type="password" value=""
					id = "PASSWORD" class="Login_input Login_inp2" placeholder="密码" />
			</div>
			<a href="#" onclick="login()" class="Login_dla">登录</a> <label class="Login_pitch fl">
				<input type="checkbox" name="checkbox01" class=" fl" />
			<div class="fl">自动登录</div>
				<div class="clear"></div>
			</label>
			<div class="Login_wj fr">
				<a href="#">忘记密码</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="stuRegist.jsp">注册</a>
			</div>
			<div class="clear"></div>

		</form>
		<!--登录-结束-->
	</div>

	<div class="Login_foot"></div>
	<!--Login-结束-->
	<script src="js/TweenLite.min.js"></script>
	<script src="js/EasePack.min.js"></script>
	<script src="js/jquery.js"></script>
	<script src="js/rAF.js"></script>
	<script src="js/demo-1.js"></script>
	<script src="js/vendor/jgrowl/jquery.jgrowl.min.js"></script>
	<script src="js/Longin.js"></script>
</body>
</html>
