<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/news/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
</head>
<body>  
<form id="modifyUsers" enctype="multipart/form-data" style="width:90%;margin:0px auto">
	<input type="hidden" name="usid" id="usid"/>
	<input name="uname" required="required" placeholder="请输入用户名" id="uname"/><br/><br/>
	<input name="upwd" required="required" placeholder="请输入密码" id="upwd"/><br/>
	<input type="button" value="修改" onClick="modifyUser()">
	<input type="reset" value="重置">
</form>
	<script type="text/javascript" src="js/modifyUser.js"></script>
</body>
</html>