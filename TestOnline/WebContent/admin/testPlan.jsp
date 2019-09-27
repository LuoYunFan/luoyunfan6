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
					 <li class="layui-nav-item layui-nav-itemed"><a href="javascript:;">考试管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="/TestOnline/stuSearch?op=addtest">添加考试</a>
							</dd>
							 
							<dd>
								<a href="/TestOnline/searchAllTest">考试查询</a>
							</dd>
							 
						</dl></li>
						<li class="layui-nav-item"><a href="javascript:;">题库管理</a>
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

		<div class="layui-body" style="margin-left: 5%">
			<br> 
			<a class="layui-btn" style="width: 100%;margin-left:">${xuesheng} 考试安排</a>
			    <table lay-size="lg" lay-even class="layui-table" >
					<colgroup>
						<col width="50%">
						<col width="25%">
						<col width="25%">
					</colgroup>
					<thead>
						<tr>
							<th>试卷名</th>
							<th>操作</th>
							<th>操作</th> 
						</tr>
					</thead>
					<tbody> 
						<c:forEach items="${paperNames}" var="paper" varStatus="status">
					        <tr>
					            <td>${paper.paperName}</td>
					     		<td><a  onclick="searchPaper('${paper.paperName}')" href="#">查看试卷内容</a></td>
					     		<td><a onclick="addTestPlan('${xuesheng}','${paper.paperName}')" href="#">选择</a></td>
					        </tr>
					    </c:forEach>
					</tbody>
				</table>
 			 <center><span style="   display: inline-block ;" class="default"  id="addErr"><h4></h4></span></center>
		
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
	<script>
//Demo
		layui.use('form', function(){
		  var form = layui.form;
		});
</script>
 <script src="js/jquery.js"></script>
 <script src="js/testPlan.js"></script>
<script>
	 
	//查看试卷详细信息
	function searchPaper(paperName){
		window.location.href="/TestOnline/paperDetail?paperName="+paperName;
	}
	//给学生安排考试
	
</script>
</body>
</html>