<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>学生</title>
<link rel="stylesheet" href="../layui/css/layui.css">
<script type="text/javascript" src="../layui/layui.js"></script>
<script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
<script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
<style type="text/css">
	 span.error{
	  
	    color:#F00;
	}
	 span.success{
	     
	    color:#096;
	}
</style>
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<a href="index.jsp"><div class="layui-logo">在线考试系统</div></a>
			<!-- 头部区域（可配合layui已有的水平导航） -->
			<ul class="layui-nav layui-layout-left">
				 
			</ul>
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item"><a href="javascript:;"> <img
						src="http://t.cn/RCzsdCq" class="layui-nav-img"> 学号:${stulogin.stuZh},姓名:${stulogin.stuName}
						
				</a>
					 </li>
				<li class="layui-nav-item"><a href="stuLogin.jsp">退出</a></li>
			</ul>
		</div>

		<div class="layui-side layui-bg-black" style="width: 15%" >
			<div class="layui-side-scroll" style="width: 100%">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<ul class="layui-nav layui-nav-tree" style="width: 100%" lay-shrink="all"
					lay-filter="test">
					<li class="layui-nav-item layui-nav-itemed"><a class=""
						href="javascript:;">信息管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="/TestOnline/stuFind?stuZh=${stulogin.stuZh}">修改个人信息</a>
							</dd>
							 
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;">考试管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="/TestOnline/searchAllTest?op=stu&stuZh=${stulogin.stuZh}">未考科目</a>
							</dd>
							<dd>
								<a href="/TestOnline/searchPastTest?stuZh=${stulogin.stuZh}">已考科目</a>
							</dd>
						</dl></li>
					 
				</ul>
			</div>
		</div>

		<div class="layui-body" style="margin-left: 4%">
			<!-- 内容主体区域 -->
			<br> 
			<a class="layui-btn" style="width: 100%; ">信息修改</a>
		
		    <form class="layui-form"  style="margin-left: 30%; margin-top: 60px" >
				
				<div class="layui-form-item">
					<label class="layui-form-label">学号</label>
					<div class="layui-input-block" style="width: 40%">
						<input type="text" name="title" id="stuZh" required lay-verify="required"
						  autocomplete="off" class="layui-input" disabled="disabled" value="${stuInfo.stuZh}"
						 />
					 </div>
				</div>
 	
				<div class="layui-form-item">
					<label class="layui-form-label">姓名</label>
					<div class="layui-input-block" style="width: 40%">
						<input type="text" name="title" id="cont" required lay-verify="required"
							  autocomplete="off" class="layui-input" disabled="disabled" value="${stuInfo.stuName}"
							 />
 
					 </div>
				</div>
				
				
				<div class="layui-form-item">
					<label class="layui-form-label">密码</label>
					<div class="layui-input-block" style="width: 40%">
						<input type="text" id="userPasword" name="title" required lay-verify="required"
						 autocomplete="off" class="layui-input" value="${stuInfo.stuPwd}"
						 onBlur="checkPassword()"
            oninput="checkPassword()">
					    <span  style="float:right; display: inline-block ;" class="default" id="passwordErr"><h4>密码不少于四位<h4/></span> 
					</div>
					
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">确认密码</label>
					<div class="layui-input-block" style="width: 40%">
						<input type="text" name="title" id="userConfirmPasword" required lay-verify="required"
							 autocomplete="off" class="layui-input" value="${stuInfo.stuPwd}"
							 onBlur="ConfirmPassword()"
            oninput="ConfirmPassword()"/>
							  <span  style="float:right; display: inline-block ;" class="default" id="conPasswordErr"><h4>再次输入密码<h4/></span> 
					 </div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label" >手机号</label>
					<div class="layui-input-block" style="width: 40%">
						<input type="text" name="title" id="userPhone" required lay-verify="required"
							  autocomplete="off" class="layui-input" value="${stuInfo.stuPhone}"
							  onBlur="checkPhone()" 
            				  oninput="checkPhone()">
            				  <span  style="float:right; display: inline-block ;" class="default" id="phoneErr"><h4>请输入11位手机号码<h4/></span> 
					</div>
				</div>
				
				<div class="layui-form-item">
					<div class="layui-input-block">
 
						<a onclick="checkFormInfo()" class="layui-btn">确定修改</a>				 
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
						
					</div>
				</div>
			</form>
		<div class="layui-footer">
			<!-- 底部固定区域 -->
			© layui.com - 底部固定区域
		</div>
	</div>
	 
	<script>
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;

		});
	</script>
	<script src="js/jquery.js"></script>
    <script src="js/Longin.js"></script>
</body>
</html>