<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">

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
<link rel="stylesheet" href="css/icomoon.css">
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
<script type="text/javascript">
	function changeImg(obj) {
		obj.src = "/Kang_more/code?t=" + new Date();
	}
</script>
</head>

<body>
	<%@ include file="header.jsp" %>
	<!-- 主体：开始 -->
	<div class="container">
		<div class="container pt70 pb70" style="border: solid; height: 500px;">
			<form action="/Kang_more/login" method="post"
				style="padding-left: 20%; padding-right: 20%; padding-top: 80px;"
				onsubmit="return ">
					<div class="row">
						<div class="col-lg-3">用户名:</div>
						<div class="col-lg-3"><input id="username" type="text" class="c1"
							name="username" /></div>
						<div class="col-lg-3"><span>${error}</span></div>
					</div>
					<div class="row">
						<div class="col-lg-3">密码:</div>
						<div class="col-lg-3"><input id="password" type="password"
							class="c1" name="password" /></div>
						<div class="col-lg-3"><span></span></div>
					</div>
					<div class="row">
						<div class="col-lg-3">验证码:</div>
						<div class="col-lg-3"><input id="code" type="text" name="code" /></div>
						<div class="col-lg-3"><img alt="123" src="/Kang_more/util/code" onclick=changeImg(this) /></div>
						<div class="col-lg-3"><span>${msg}</span></div>
					</div>
					<div class="row">
						<div class="col-lg-3"></div>
						<div class="col-lg-3">自动登录（7天）:</div>
						<div class="col-lg-3"><input id="auto" type="checkbox" name="auto" value="auto" /></div>
						<div class="col-lg-3"></div>
					</div>
					<div class="row">
						<div class="col-lg-3"></div>
						<div class="col-lg-3"><input type="image" src="img/btn.jpg" /></div>
					</div>
			</form>
		</div>
	</div>
		<%@ include file="show.jsp" %>
		<%@ include file="footer.jsp" %>
</body>
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!-- Bootstrap -->
<!-- masonry -->
<script src="js/jquery.masonry.min.js"></script>
<!-- MAIN JS -->
<script src="js/main.js"></script>
<script type="text/javascript">
	function check() {
		var username = document.getElementById("username");
		var password = document.getElementById("password");
		var repassword = document.getElementById("repassword");
		var code = document.getElementById("code");
		if (username == null) {

		}
	};
</script>
</html>