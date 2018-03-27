<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
		location.href();
			$(function() {
				//得到“所有分类”的标签，并绑定单击事件
				$("#aa a").click(function() {
					//获得当前标签中的文本
					var content = this.html();
					var url = this.href;

					var flag = $('#tt').tabs('add', content);
					if(!flag) {
						$('#tt').tabs('reload', {
							title: content, //选项卡标题     
							href: url, //内容  
							closable: true //是否有“关闭”按钮
						});
					} else {
						$('#tt').tabs('select', content);
					}
					return false;
				});
			});
		</script>
		<script type="text/javascript">
			$(function() {
				//ajax操作
				//开启子线程
				$.post(
					"${pageContext.request.contextPath}/loadall", //要素2
					{}, //要素3
					function(v) { //要素4，处理响应结果 
						//v 是 JSON 格式的数组
						// {"word":"服装","pinyin":"fuzhuang"}
						//现在 div 设置一个 ul
						$("#completeShow").html("<ul id='itemul' class='list-group'></ul>");
						for(var i = 0; i < v.length; i++) {
							var ele = v[i]; //{"word":"服装","pinyin":"fuzhuang"}
							$("#itemul").append("<li class='list-group-item'><a href='#'>" + ele.word + ele.pinyin + "</a></li>");
						}
					},
					"json"
				);
			})
		</script>
	</head>

	<body>
		<div class="container pt70">
			<!-- 展示体：开始 -->
			<div class="row">
				<div class="col-lg-12 fh5co-projects-feed clearfix masonry">
					<c:forEach var="pro" items="${pList}">
						<div class="fh5co-project masonry-brick">
							<a href="single.html"> <img src="${pro.logo }" alt="Free HTML5 by FreeHTML5.co">
								<h2>${pro.productions_name }</h2>
							</a>
							<ul class="nav navbar-nav">
								<!-- <li class="active"><a href="#">Link <span
										class="sr-only">(current)</span></a></li>
								<li><a href="#">Link</a></li> -->
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">更多..<span class="caret" onclick="change(this)"></span></a>
									<ul class="dropdown-menu">
										<li>
											<a href="#">收藏</a>
										</li>
										<li>
											<a href="#">修改</a>
										</li>
										<li>
											<a href="#">删除</a>
										</li>
										<li role="separator" class="divider"></li>
										<li>
											<a href="#">评论..</a>
										</li>
									</ul>
								</li>
							</ul>
						</div>
					</c:forEach>
				</div>

				<!--展示体：结束-->
			</div>
		</div>
	</body>

</html>