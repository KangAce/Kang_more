<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>More &mdash; Kang&mdash;注册</title>
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

<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,900'
	rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400,700"
	rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<!-- Superfish -->
<link rel="stylesheet" href="css/superfish.css">
<!-- Flexslider  -->
<link rel="stylesheet" href="css/flexslider.css">

<link rel="stylesheet" href="css/style.css">

<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
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
	<div class="container">
		<!-- 表单：开始 -->
		<form action="/Kang_more/reg">
			<div class="row">
				<div class="col-lg-4">用户名:</div>
				<div class="col-lg-4">
					<input type="text" class="c1" name="username" onblur="checkUsername(this)" />
				<script type="text/javascript">
					function checkUsername(name){
						$.post("${pageContext.request.contextPath}/checkusername",
								{"username":name.value},
								function(result){
									if (result=="yes") {
										$("#username").html("<span class = 'label label-success'>用户名可用</span>");
									}else{
										$("#username").html("<span class = 'label label-danger'>用户名不可用</span>");
									}
								}
							);
					}
				</script>
				</div>
				<div id = "username" class="col-lg-4"></div>
			</div>
			<div class="row">
				<div class="col-lg-4">密码:</div>
				<div class="col-lg-4">
					<input id="password" type="password" class="c1" name="password" />
				</div>
				<div class="col-lg-4"></div>
			</div>
			<div class="row">
				<div class="col-lg-4">确认密码:</div>
				<div class="col-lg-4">
					<input id="repassword" type="password" class="c1" name="repassword" />
				</div>
				<div class="col-lg-4"></div>
			</div>
			<div class="row">
				<div class="col-lg-4">姓名:</div>
				<div class="col-lg-4">
					<input type="text" class="c1" name="name" />
				</div>
				<div class="col-lg-4"></div>
			</div>
			<div class="row">
				<div class="col-lg-4">性别:</div>
				<div class="col-lg-4">
					<input type="text" class="c1" name="sex" />
				</div>
				<div class="col-lg-4"></div>
			</div>
			<div class="row">
				<div class="col-lg-4">联系方式:</div>
				<div class="col-lg-4">
					<input type="text" class="c1" name="phone" />
				</div>
				<div class="col-lg-4"></div>
			</div>
			<div class="row">
				<div class="col-lg-4">出生日期:</div>
				<div class="col-lg-4">
					<input type="date" class="c1" name="date" />
				</div>
				<div class="col-lg-4"></div>
			</div>
			<div class="row">
				<div class="col-lg-4">验证码:</div>
				<div class="col-lg-4">
					<input id="code" type="text" name="code" />
				</div>
				<div class="col-lg-4">
					<img alt="123" src="/Kang_more/code" onclick=changeImg(this) />
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4"></div>
				<div class="col-lg-4">
					<input type="image" src="img/btn.jpg" />
				</div>
				<div class="col-lg-4"></div>
			</div>
		</form>
		<!-- 表单：结束 -->
	</div>
		<%@ include file="show.jsp" %><%@ include file="footer.jsp" %>
</body>

</html>