
<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*" pageEncoding="utf-8"%>
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
<body class="layui-layout-body" >
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
		
			 
   			 <a class="layui-btn" style="width: 100%;margin-left:">&nbsp;&nbsp;&nbsp;考试试题：${testpaperName} 考生：${testStu}</a> 
			 <a class="layui-btn layui-btn-warm" id="showTimes" style="width: 100%;margin-left:">考试时间剩余：30分钟00秒</a> 
			   
			  <br><br>
			  <input id="id1"  type="hidden" value="${testpaperName}"></input><input  type="hidden" id="id2" value="${testStu}"></input>
   			<button type="button" style="margin-left: 93%" onclick="getResult('${testpaperName}','${testStu}')" class="layui-btn layui-btn-radius layui-btn-normal" >提交试卷</button>
			<!-- 内容主体区域 -->
			<div style="padding: 15px;">
			 
				 <table lay-size="lg" lay-even class="layui-table" >
					<colgroup>
						<col width="50%">
						<col width="50%">
 
					</colgroup>
					<thead>
						<tr>
							<th>题目内容</th>
							<th>选项</th> 
						</tr>
					</thead>
					<tbody>
						 
						<c:forEach items="${testTimuDetail}" var="timu" varStatus="status">
					        <tr>
							<%-- 	 onclick="judge('${timu.da_R}','${timu.timu_Id}')" --%>
					            <td>${timu.timu_Cont}</td>
								<td>
									    <input name="da${timu.timu_Id}" id="${timu.da_A}" value="${timu.da_A}" type="radio" /> 
									      A、${timu.da_A}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
									    <input name="da${timu.timu_Id}" id="${timu.da_B}" value="${timu.da_B}" type="radio" />
										  B、${timu.da_B}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
										<input name="da${timu.timu_Id}" id="${timu.da_C}" value="${timu.da_C}" type="radio" />
										  C、${timu.da_C}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
								        <input name="da${timu.timu_Id}" id="${timu.da_D}" value="${timu.da_D}" type="radio"/>
										 D、${timu.da_D} 
									 	<input checked="checked"   style="display: none" name ="da${timu.timu_Id}" value="err" type="radio" />
									 
								</td> 
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
	 <script src="js/test.js"></script>
	<script>
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;

		});
		 
	</script>
			<%
				 long current_time=System.currentTimeMillis();
				 long end_time=System.currentTimeMillis()+1800000;
				 long time=end_time-current_time;
			 %>
			<script>
					var id1=document.getElementById("id1").value;
					var id2=document.getElementById("id2").value;
					var second = <%= time / 1000%>; // 剩余秒数
					// 写一个方法，将秒数专为天数
					var toDays = function(){
					 var s = second % 60; // 秒
					 var mi = (second - s) / 60 % 60; // 分钟
					 return "考试时间剩余：" + mi + "分钟" + s + "秒" ;
					}
					//然后写一个定时器
					function getRTime() {
					 	second --;
					 	if(second==0){
					 		clearInterval(a);
					 		if(!window.confirm("是否提交试卷???")){return; }
					 		/*var delid = document.getElementById("timuId1").innerText;*/
					 		 alert("提交成功");
					 		
					 		//提交成功之后，计算分数转到已经页面
					 		 var checkInputs = document.querySelectorAll('input:checked') // 获取选中的input
					 		 for(var i = 0;i<checkInputs.length;i++){
					 		     var v = checkInputs[i].value;
					 		     // 计算
					 		      
					 		     daa = daa+","+v;
					 		 }
					 		 window.location.href="/TestOnline/getResult?daaa="+daa+"&paperName="+id1+"&stuZh="+id2;
					 		 
					 		 daa="";
					 	}
					 	document.getElementById("showTimes").innerHTML = toDays ();
					};
					var a = setInterval(getRTime,1000);
			</script>
</body>
</html>