<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>管理员</title>
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
				<li class="layui-nav-item"><a href="javascript:;">   ${admin}
				</a></li>
				<li class="layui-nav-item"><a href="/TestOnline/exitLogin">退出登录</a></li>
			</ul>
		</div>

		<div class="layui-side layui-bg-black" style="width: 15%">
			<div class="layui-side-scroll" style="width: 100%">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<ul class="layui-nav layui-nav-tree" style="width: 100%"
					lay-shrink="all" lay-filter="test">
					<li class="layui-nav-item"><a class=""
						href="javascript:;">学生管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="/TestOnline/stuSearch">学生查询</a>
							</dd>
							<dd>
								<a href="studentAdd.jsp">学生录入</a>
							</dd>

						</dl></li>
					<li class="layui-nav-item "><a href="javascript:;">试卷管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="/TestOnline/timuSearch?op=add">试卷添加</a>
							</dd>
							<!-- <dd>
								<a href="paperChange.jsp">试卷修改</a>
							</dd> -->
							<dd>
								<a href="/TestOnline/paperSearch">试卷查询</a>
							</dd>
							 
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;">考试管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="/TestOnline/stuSearch?op=addtest">添加考试</a>
							</dd>
							 
							<dd>
								<a href="/TestOnline/searchAllTest">考试查询</a>
							</dd>

						</dl></li>
						<li class="layui-nav-item  layui-nav-itemed"><a href="javascript:;">题库管理</a>
						 <dl class="layui-nav-child">
							<dd>
								<a href="/TestOnline/timuSearch?op=find">题目查询</a>
							</dd>
							<dd>
								<a href="TimuAdd.jsp">题库添加</a>
							</dd>
							 
						</dl></li>
				</ul>
			</div>
		</div>

		<div class="layui-body" style="margin-left: 3%">
		 
			 <br>
			 <a class="layui-btn" style="width: 100%;margin-left:">题目修改</a>
			<form class="layui-form"  style="margin-left: 30%; margin-top: 60px" >
				<div class="layui-form-item">
					<label class="layui-form-label">题号</label>
					<div class="layui-input-block" style="width: 40%">
						<input type="text" id="timuId" name="title" required lay-verify="required"
							value="${changeTimu.timu_Id}" disabled="disabled" autocomplete="off" class="layui-input"
						 onBlur="checkTimuId()" 
            			 oninput="checkTimuId()">
					    <span  style="float:right; display: inline-block ;" class="default" id="nameErr"><h4>题号由数字组成<h4/></span> 
					</div>
					
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">题目内容</label>
					<div class="layui-input-block" style="width: 40%">
						<input type="text" name="title" id="cont" required lay-verify="required"
							value="${changeTimu.timu_Cont}" autocomplete="off" class="layui-input"
							 onBlur="checkTimuCont()" 
            			 oninput="checkTimuCont()">
							  <span  style="float:right; display: inline-block ;" class="default" id="contErr"><h4>题目内容不能为空<h4/></span> 
					 </div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label" >答案A</label>
					<div class="layui-input-block" style="width: 40%">
						<input type="text" name="title" id="daa" required lay-verify="required"
							value="${changeTimu.da_A}" autocomplete="off" class="layui-input"
							 onBlur="checkAns()" 
            				 oninput="checkAns()">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">答案B</label>
					<div class="layui-input-block" style="width: 40%">
						<input type="text" name="title" id="dab" required lay-verify="required"
							value="${changeTimu.da_B}" autocomplete="off" class="layui-input"
							  onBlur="checkAns()" 
            				 oninput="checkAns()">
					 </div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">答案C</label>
					<div class="layui-input-block" style="width: 40%">
						<input type="text" name="title" id="dac" required lay-verify="required"
							value="${changeTimu.da_C}" autocomplete="off" class="layui-input" onBlur="checkAns()" 
            				 oninput="checkAns()">
					</div>
					  
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">答案D</label>
					<div class="layui-input-block" style="width: 40%">
						<input type="text" name="title" id="dad" required lay-verify="required"
							value="${changeTimu.da_D}" autocomplete="off" class="layui-input" onBlur="checkAns()" 
            				 oninput="checkAns()">
					</div>
					  
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">正确答案</label>
					<div class="layui-input-block" style="width: 40%">
						<input type="text" name="title" id="dar" required lay-verify="required"
							value="${changeTimu.da_R}" autocomplete="off" class="layui-input"
							 onBlur="checkAns()" 
            				 oninput="checkAns()">
					    <span  style="float:right; display: inline-block ;" class="default" id="daErr"><h4><h4/></span> 
					</div>
					  
				</div>
				<div class="layui-form-item">
				<div class="layui-input-block">
					<span style="   display: inline-block ;" class="default"  id="addErr"><h4></h4></span>
				</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-input-block">
 
						<a onclick="checkForm2()" class="layui-btn">确定修改</a>
						 
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
		 


			<div class="layui-footer">
				<!-- 底部固定区域 -->
				© layui.com - 底部固定区域
			</div>
		</div>
		<script src="../src/layui.js"></script>
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