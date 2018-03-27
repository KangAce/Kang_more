<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.more.Bean.User"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>More &mdash; Kang</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />

<!-- Facebook and Twitter integration -->
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<!--<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,900' rel='stylesheet' type='text/css'>
		<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400,700" rel="stylesheet">-->

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<!-- <link rel="stylesheet" href="css/icomoon.css"> -->
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/style.css">
<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<!-- <script type="text/javascript" src="js/bootstrap.min.js"></script> -->
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<script type="text/javascript">
		$(function(){
			$("#search").keyup(function(){
				var value = $(this).val();
				if(value == ""){
					$("#completeShow").hide();
					return;
				}
				$("#completeShow").show();
				$("#completeShow").html("<ul id='itemul' class='list-group'></ul>");
				$.post("${pageContext.request.contextPath}/easysearch",{"search":value},function(val){
					for(var i = 0; i <= val.length; i++){
						$("#itemul").append("<li class='list-group-item'><a href='#'>" + val[i].productions_name + "(" + val[i].id + ")</a></li>");
					}
				},"json");
			});
		});
	</script>
	<style>
		#completeShow {
			height:auto;
			display:none;
		}
	</style>
<body>

	<div class="container">
		<!-- 导航栏：开始-->
		<div class="row">
			<div class="col-lg-12">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="index.jsp">More-Kang</a>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<!-- <li class="active"><a href="#">Link <span
										class="sr-only">(current)</span></a></li>
								<li><a href="#">Link</a></li> -->
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="true">备用 <span class="caret"
										onclick="change(this)"></span></a>
									<ul class="dropdown-menu">
										<li><a href="#">Action</a></li>
										<li><a href="#">Another action</a></li>
										<li><a href="#">Something else here</a></li>
										<li role="separator" class="divider"></li>
										<li><a href="#">Separated link</a></li>
										<li role="separator" class="divider"></li>
										<li><a href="#">One more separated link</a></li>
									</ul></li>
							</ul>
							<!-- 搜索框：开始 -->
							<form class="navbar-form navbar-left" role="search">
								<div class="form-group">
									<input id="search" type="text" class="form-control" placeholder="Search">
								</div>
								<button type="submit" class="btn btn-default">Submit</button>
								<div id="completeShow">
			        		<!--<ul id='itemul' class='list-group'>
			        				<li class='list-group-item'><a href='#'>查询结果1</a></li>
			        				<li class='list-group-item'><a href='#'>查询结果2</a></li>
			        				<li class='list-group-item'><a href='#'>查询结果3</a></li>
			        				<li class='list-group-item'><a href='#'>查询结果4</a></li>
			        				<li class='list-group-item'><a href='#'>查询结果5</a></li>
			        			</ul> -->
			        			</div>
							</form>
							<!-- 搜索框：结束 -->


							<ul class="nav navbar-nav navbar-right">
								<c:if test="${empty user}">
									<li><a href="login.jsp">登录</a></li>
									<li><a href="Reg.jsp">注册</a></li>
								</c:if>
								<c:if test="${!empty user}">
									<li><a href="index.jsp"></a></li>


									<li class="dropdown"><a href="home.jsp"
										class="btn dropdown-toggle" data-toggle="dropdown"
										role="button" aria-haspopup="true" aria-expanded="true">${user.userName}
											, 欢迎回来！ <span class="caret"></span>
									</a>
										<ul class="dropdown-menu">
											<li><a href="#">Action</a></li>
											<li><a href="upload.jsp">上传作品</a></li>
											<li><a href="#"><i class="glyphicon glyphicon-book"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人日志</a></li>
											<!-- glyphicon glyphicon-book -->
											<li role="separator" class="divider"></li>
											<li><a href="/Kang_more/logout"><i
													class="glyphicon glyphicon-cog"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注销</a></li>
											<li role="separator" class="divider"></li>
											<li><a href="#"><i class="glyphicon glyphicon-cog"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;设置</a></li>
										</ul></li>
								</c:if>
							</ul>
						</div>
						<!-- /.navbar-collapse -->
					</div>
					<!-- /.container-fluid -->
				</nav>
			</div>
		</div>
		<!-- 导航栏：结束-->
		<!-- 轮播图：开始  -->
		<div class="row">
			<div class="col-lg-12">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<!--active表示默认的第一张图片-->
							<img src="img/112233-106.jpg" alt="...">
							<div class="carousel-caption">...</div>
						</div>
						<div class="item">
							<img src="img/126210-106.jpg" alt="...">
							<div class="carousel-caption">...</div>
						</div>
						<div class="item">
							<img src="img/102869-106.jpg" alt="...">
							<div class="carousel-caption">...</div>
						</div>
					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic"
						role="button" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>
		<!-- 轮播图：结束 -->
		<!-- 分类：结束 -->
		<div class="row">
			<div id="fh5co-header" class="col-lg-12">
				<div class="container text-center">
					<nav>
						<ul>
							<li><a href="about.html">关于</a></li>
							<li><a href="work.html">工作</a></li>
							<li><a href="contact.html">介绍</a></li>
							<li><a href="#">信息</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<!-- 分类：结束 -->
	</div>
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- masonry -->
	<script src="js/jquery.masonry.min.js"></script>
	<!-- MAIN JS -->
	<script src="js/main.js"></script>
</body>

</html>