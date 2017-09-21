<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
	<head>
		<meta charset="utf-8" />
		<title>上传图片插件</title>
		<link href="css/common.css" type="text/css" rel="stylesheet"/>
		<link href="css/index.css" type="text/css" rel="stylesheet"/>
	</head>
	<body>
		<div class="img-box full">
			<section class=" img-section">
				<p class="up-p">上传图片：<span class="up-span">最多可以上传5张图片，马上上传</span></p>
				<div class="z_photo upimg-div clear" >
		               <!--<section class="up-section fl">
		               		<span class="up-span"></span>
		               		<img src="/img/buyerCenter/a7.png" class="close-upimg">
		               		<img src="/img/buyerCenter/3c.png" class="type-upimg" alt="添加标签">
		               		<img src="/img/test2.jpg" class="up-img">
		               	    <p class="img-namep"></p>
		               	    <input id="taglocation" name="taglocation" value="" type="hidden">
		               	    <input id="tags" name="tags" value="" type="hidden">
		               	</section>-->
		               	 <section class="z_file fl">
		               	 	<img src="images/index.png" class="add-img">
		               	 	<input type="file" name="file" id="file" class="file" value="" accept="image/jpg,image/jpeg,image/png,image/bmp" multiple />
		               	 </section>
		         </div>
			 </section>
		</div>
        <aside class="mask works-mask">
			<div class="mask-content">
				<p class="del-p">您确定要删除作品图片吗？</p>
				<p class="check-p"><span class="del-com wsdel-ok">确定</span><span class="wsdel-no">取消</span></p>
			</div>
		</aside>
		<script src="js/jquery-1.7.2.js"></script>
		<script src="js/imgUp.js"></script>
	</body>
</html>