<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>在线考试系统</title>
<link href="../Studentcss/style.css" rel="stylesheet" type="text/css" />
 
<style type="text/css">
	 span.error{
	  
	    color:#F00;
	}
	 span.success{
	     
	    color:#096;
	}
</style>
</head>
<body class="Login">
<!--Login-开始-->

<div class="Login_heand dk">
    <a href="../index.jsp" class="Login_logo fl">
        <img src="../images/logo.png" class="fl"/><p class="fl">在线考试系统</p><div class="clear"></div>
    </a>
    <a href="#" class="Login_down fr"> </a><div class="clear"></div>
</div>

<div class="Login_k" style="margin-top: -0%">
	<div class="Login_T">学生注册<p></p></div>
	 
    <!--登录-开始-->
    <form class="Login_dl">
        <div class="Login_row">
            <input name="zhanghao" id="userName" type="text" value="" class="Login_input Login_inp1" onBlur="checkUserName()" 
            oninput="checkUserName()" placeholder="用户名" />
            <span style="float: right"class="default" id="nameErr"><h4>用户名为六位数字学号<h4/></span>
        </div> 
        <div class="Login_row">
            <input name="password" id="userPasword" type="password" value="" class="Login_input Login_inp2" onBlur="checkPassword()"
            oninput="checkPassword()" placeholder="密码" />
            <span style="float: right" class="default" id="passwordErr"><h4>密码不少于四位<h4/></span>
        </div> 
        <div class="Login_row">
            <input name="password" id="userConfirmPasword" type="password" value="" class="Login_input Login_inp2" onBlur="ConfirmPassword()"
            oninput="ConfirmPassword()" placeholder="确认密码" />
             <span class="default" style="float: right" id="conPasswordErr"><h4>再次输入密码</h4></span>
        </div> 
        <div class="Login_row">
            <input name="password" id="Name" type="text" value="" class="Login_input Login_inp1" onBlur="checkName()"
            oninput="checkName()" placeholder="姓名" />
            <span class="default" style="float: right" id="NaErr"><h4>姓名不能为空</h4></span>
        </div> 
        <div class="Login_row">
            <input name="password" id="userPhone" type="text" value="" class="Login_input Login_inp1" onBlur="checkPhone()"
            oninput="checkPhone()" placeholder="手机号" />
            <span class="default" style="float: right" id="phoneErr"><h4>请输入11位手机号码</h4></span>
        </div> 
        <a href="#" class="Login_dla" onclick="checkForm()">注册</a>
        <span class="default" style="float: right" id="registErr"><h4></h4></span>
         
   </form>
   
    <!--登录-结束-->
</div>

<div class="Login_foot">
	 
</div>
<!--Login-结束-->
	<script src="js/jquery.js"></script>
    <script src="js/Longin.js"></script>
</body>
</html>
