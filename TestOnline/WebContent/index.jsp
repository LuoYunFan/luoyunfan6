 
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<% String path = request.getContextPath();%>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>在线考试系统</title>
<meta name="description" content="">
<meta name="keywords" content="">

 

<link rel="stylesheet" href="assets/css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/fonts/ionicons/css/ionicons.min.css">

<link rel="stylesheet"
	href="assets/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/slick-theme.css">

<link rel="stylesheet" href="assets/css/helpers.css">
<link rel="stylesheet" href="assets/css/style.css">

</head>
<body>

	<nav
		class="navbar navbar-expand-lg navbar-dark probootstrap_navbar probootstrap_scrolled-light"
		id="probootstrap-navbar">
	<div class="container">
		 
		
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#probootstrap-menu" aria-controls="probootstrap-menu"
			aria-expanded="false" aria-label="Toggle navigation">
			<span><i class="ion-navicon"></i></span>
		</button>
		<div class="collapse navbar-collapse" id="probootstrap-menu">
			<ul class="navbar-nav ml-auto">	 
				<li class="nav-item active"><a class="nav-link" href="#">About</a></li>
				<li class="nav-item active"><a class="nav-link" href="admin/adminLogin.jsp">管理员登录</a></li>
				<li class="nav-item active"><a class="nav-link" href="student/stuLogin.jsp">学生登录</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<!-- END nav -->

	<section
		class="probootstrap_cover_v3 overflow-hidden relative text-center"
		id="section-home"
		style="background-image: url('assets/images/bg.jpg'); ">
	<div class="overlay"></div>
	<a class="ytp_player"
		data-property="{videoURL:'http://youtu.be/BsekcY04xvQ',containment:'#section-home', showControls:false, autoPlay:true, loop:true, mute:true, startAt:40, opacity:1, quality:'default'}"></a>
	<div class="container"   >
		<div class="row align-items-center justify-content-center">
			<div class="col-md">
				<h2 class="heading mb-2 probootstrap-animate">在线考试系统</h2>
				<p class="lead mb-5 probootstrap-animate">Welcome to the online examination system</p>
				<p class="probootstrap-animate">
					<a href="tencent://AddContact/?fromId=45&fromSubId=1&subcmd=all&uin=1187439332&website=www.oicqzone.com" role="button"
						class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">联系我</a>
				</p>
			</div>
		</div>
	</div>

	</section>
	<!-- END section -->





	<script src="assets/js/jquery.min.js"></script>

	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/slick.min.js"></script>
	<script src="assets/js/jquery.mb.YTPlayer.min.js"></script>

	<script src="assets/js/jquery.waypoints.min.js"></script>
	<script src="assets/js/jquery.easing.1.3.js"></script>

	<script src="assets/js/main.js"></script>
</body>

</html>