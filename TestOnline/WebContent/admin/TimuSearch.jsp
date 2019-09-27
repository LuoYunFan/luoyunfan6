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
				</a>
					 </li>
				<li class="layui-nav-item"><a href="/TestOnline/exitLogin">退出登录</a></li>
			</ul>
		</div>

		<div class="layui-side layui-bg-black" style="width: 15%" >
			<div class="layui-side-scroll" style="width: 100%">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<ul class="layui-nav layui-nav-tree" style="width: 100%" lay-shrink="all"
					lay-filter="test">
					<li class="layui-nav-item "><a class=""
						href="javascript:;">学生管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="/TestOnline/stuSearch">学生查询</a>
							</dd>
							<dd>
								<a href="studentAdd.jsp">学生录入</a>
							</dd>
							 
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;">试卷管理</a>
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
								<a>题目查询</a>
							</dd>
							<dd>
								<a href="TimuAdd.jsp">题库添加</a>
							</dd>
							 
						</dl></li>
				</ul>
			</div>
		</div>

		<div class="layui-body" style="margin-left: 5%">
		<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/TestOnline/serachTimuByCondition?conId=" id="B"class="layui-btn">查询题目</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     		<input type="text"  id="tID" style="width: 40%;display: inline-block;" name="title" placeholder="请输入题号"  
     		oninput="addhref1()"	class="layui-input">
   			 
   			 
			
   			
			<!-- 内容主体区域 -->
			<div style="padding: 15px;">
			 
				 <table lay-size="lg" lay-even class="layui-table" >
					<colgroup>
						<col width="11%">
						<col width="12%">
						<col width="11%">
						<col width="11%">
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
							<th>修改题目</th>
							<th>删除题目</th>
							
						</tr>
					</thead>
					<tbody>
						 
						<c:forEach items="${alltimu}" var="timu" varStatus="status">
					        <tr>
					            <td id="timuId1">${timu.timu_Id}</td>
					            <td>${timu.timu_Cont}</td>
					     		<td>${timu.da_A}</td>
					     		<td>${timu.da_B}</td>
					     		<td>${timu.da_C}</td>
					     		<td>${timu.da_D}</td>
					     		<td>${timu.da_R}</td>
					     		<td><a onclick="changeCont(${timu.timu_Id})" href="#">修改</a></td>
					     		<td><a onclick="judgeDel1(${timu.timu_Id})" href="#">删除</a></td>
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
	 <script src="js/jquery.js"></script>
	 
	 <script src="js/timu.js"></script>
    
     
	<script>
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;

		});
	</script>
</body>
</html>