<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- release v4.1.8, copyright 2014 - 2015 Kartik Visweswaran -->
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <title>Krajee JQuery Plugins - &copy; Kartik</title>
        <link href="css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
        <script src="js/jquery-2.0.3.min.js"></script>
        <script src="js/fileinput.js" type="text/javascript"></script>
    </head>
    <body>
    
    <%@ include file="header.jsp" %>
        <div class="container pt70">
    	<div class="row">
			<div class="col-lg-4">
				<span>标题</span>
			</div>
			<div class="col-lg-8">
				<input type="text" name="productions_name" />
			</div>
		</div>
		<div class="row">
			<div class="col-lg-4">
				<span>说明</span>
			</div>
			<div class="col-lg-8">
				<input type="text" name="productions_desc" width="500px"/>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-4">
				<span>价格</span>
			</div>
			<div class="col-lg-8">
				<input type="text" name="price" width="500px"/>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="container kv-main">
            	<br>
            		<form action="/Kang_more/upload" enctype="multipart/form-data" method="post">
               			<div class="form-group">
                   			<input id="file-1" name="uploadfile" type="file" multiple class="file" data-overwrite-initial="false" data-min-file-count="1">
                		</div>
            		</form>
        		</div>
			</div>
		</div>
	</div>
        <%@ include file="footer.jsp" %>
    </body>
	<script>
  
    $("#file-1").fileinput({
        uploadUrl: '#', // 00000000you must set a valid URL here else you will get an error
        allowedFileExtensions : ['jpg', 'png','gif'],
        overwriteInitial: false,
        maxFileSize: 1000,
        maxFilesNum: 10,
        //allowedFileTypes: ['image', 'video', 'flash'],
        slugCallback: function(filename) {
            return filename.replace('(', '_').replace(']', '_');
        }
	});
   
	</script>
</html>