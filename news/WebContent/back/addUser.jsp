<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/news/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
</head>
<body>  
		<form id="uForm" style="margin-left:90px;margin-top:40px;">
			<input name="uname" required="required" placeholder="请输入用户名"/><br/><br/>
			<input name="upwd" required="required" placeholder="请输入密码"/><br/>
			<input type="button" value="添加" onClick="addUser()">
			<input type="reset" value="重置">
		</form>
	<script type="text/javascript" src="js/addUser.js"></script>
</body>
</html>