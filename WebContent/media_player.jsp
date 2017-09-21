<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.webapp.entity.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String media=request.getParameter("id");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>player</title>
    

	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
 <center>
<object type="application/x-shockwave-flash" data="<%=basePath%>tools/player.swf" width="400" height="300" id="vcastr3">
<param name="movie" value="<%=basePath%>tools/player.swf"/> 
<param name="allowFullScreen" value="true" />
<param name="FlashVars" value="vcastr_file=<%=basePath%><%=media%>" />
</object><br>
<a href="javascript:;" onClick="javascript:history.back(-1);">返回</a>
</center>


  </body>
</html>
