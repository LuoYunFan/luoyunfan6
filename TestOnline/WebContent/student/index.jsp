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
						src="http://t.cn/RCzsdCq" class="layui-nav-img">学号:${stulogin.stuZh},姓名:${stulogin.stuName}
						
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
					<li class="layui-nav-item "><a class=""
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

		<div class="layui-body" style="margin-left: 6%">
			<!-- 内容主体区域 -->
			<div class="layui-body" style="margin-left: 4%">
			<!-- 内容主体区域 -->
			 
			  <img src="../images/bg.jpg" style="width: 100%;height:100%"/>
			 
		</div>

		<div class="layui-footer">
			<!-- 底部固定区域 -->
			© aaaaaaa - By:计科1605李赫
		</div>
	</div>
	<script src="../src/layui.js"></script>
	<script>
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;

		});
	</script>
</body>
</html>