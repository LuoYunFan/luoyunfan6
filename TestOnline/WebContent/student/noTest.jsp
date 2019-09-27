<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
			<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/TestOnline/serachByCondition?conId=&conName=" id="A"class="layui-btn">查询学生</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     		<input type="text"  id="ID" style="width: 40%;display: inline-block;" name="title" placeholder="请输入学号"  
     		oninput="addhref()"	class="layui-input">
   			  -->
   			 <a class="layui-btn" style="width: 100%;margin-left:">未考科目</a> 
			
   			
			<!-- 内容主体区域 -->
			<div style="padding: 15px;">
			 
				 <table lay-size="lg" lay-even class="layui-table" >
					<colgroup>
						<col width="33%">
						<col width="33%">
						<col width="33">
					</colgroup>
					<thead>
						<tr>
							<th>试卷名</th>
							<th>截止时间</th>
							<th>考试状态</th> 
						</tr>
					</thead>
					<tbody>
						 
						<c:forEach items="${allTest}" var="test" varStatus="status">
					        <tr>
					            <td>${test.paperName}</td>
					            <td>${test.endTime}</td>
					            
					            <% 
					            	String date[] = new SimpleDateFormat("yyyy-MM-dd").format(new Date()).split("-");
					            	System.out.println(date[0]+date[1]+date[2]);
					            	int year = Integer.parseInt(date[0]);
					            	int month = Integer.parseInt(date[1]);
					            	int day = Integer.parseInt(date[2]);
					            	System.out.println(year+month+day);
					            	
					            %>
					           	<c:set var="nowDateYear" value='<%=year%>'></c:set>
					           	<c:set var="nowDateMonth" value='<%=month%>'></c:set>
					           	<c:set var="nowDateDay" value='<%=day%>'></c:set>
					           	
					           	<c:set var="testYear" value="${fn:split(test.endTime,'-')[0]}"></c:set>
					           	<c:set var="testMonth" value="${fn:split(test.endTime,'-')[1]}"></c:set>
					           	<c:set var="testDay" value="${fn:split(test.endTime,'-')[2]}"></c:set>
					           
					           	
					           	
					           	<c:choose>
									<c:when test="${(nowDateYear*365.0+nowDateMonth*30.0+nowDateDay*1.0)>(testYear*365.0 +testMonth*30.0+testDay*1.0)}">
										 <td><i class="layui-icon layui-icon-face-cry" style="font-size: 20px; color: #DC143C;"><a href="#">
					     				&nbsp;&nbsp;&nbsp;考试已结束 </a></i></td>
									 	
									</c:when>
									<c:otherwise>
										<td><i class="layui-icon layui-icon-face-smile" style="font-size: 20px; color: #54FF9F;">
										<a href="/TestOnline/gotoTest?stuZh=${test.stuZh}&paperName=${test.paperName}">
					     				&nbsp;&nbsp;&nbsp;前往考试</a>  </i></td>
									</c:otherwise>
								</c:choose>
					            
					     		
					    	<!-- <td><i class="layui-icon layui-icon-face-cry" style="font-size: 20px; color: #FF0000;"><a onclick=" " href="#">
					     		&nbsp;&nbsp;&nbsp;考试结束</a>  </i></td>   --> 
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
	 
	<script>
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;

		});
	</script>
</body>
</html>