<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
					<li class="layui-nav-item"><a class=""
						href="javascript:;">信息管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="/TestOnline/stuFind?stuZh=${stulogin.stuZh}">修改个人信息</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item layui-nav-itemed"><a href="javascript:;">考试管理</a>
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
		<br><br>
		 <a class="layui-btn" style="width: 100%;margin-left:">${paperName}</a> 
			<!-- 内容主体区域 -->
			<div style="padding: 15px;">
			<table lay-size="lg" lay-even class="layui-table" >
					<colgroup>
						<col width="11%">
						<col width="23%">
						<col width="11%">
						<col width="11%">
						<col width="11%">
						<col width="11%">
						<col width="11%">
						 
					</colgroup>
					<thead>
						<tr>
							<th>题号</th>
							<th>题目内容</th>
							<th>答案a</th>
							<th>答案b</th>
							<th>答案c</th>
							<th>答案d</th>
							<th>正确答案</th>
							 
						</tr>
					</thead>
					<tbody>
						 
						<c:forEach items="${timuDetail}" var="timu" varStatus="status">
					        <tr>
					            <td>${timu.timu_Id}</td>
					            <td>${timu.timu_Cont}</td>
					     		<td>${timu.da_A}</td>
					     		<td>${timu.da_B}</td>
					     		<td>${timu.da_C}</td>
					     		<td>${timu.da_D}</td>
					     		<td>${timu.da_R}</td>
					        </tr>
					    </c:forEach>
					</tbody>
				</table>
 


			</div>
		</div>

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
</body>
</html>


 