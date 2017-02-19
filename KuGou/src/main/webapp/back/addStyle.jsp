<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/KuGou/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
</head>
<body>
	<form name="styleForm" id="styleForm" style="margin-left: 200px; margin-top: 40px;" method="post">
		<input name="kuSongStyleName" id="kuSongStyleName" required="required" placeholder="请输入风格名" /><br />
		<input name="kuSongStylesecond"  required="required" placeholder="预留2" /><br />
		<input type="button" value="添加" onClick="addStyle()"/>
	</form>
	<script type="text/javascript" src="js/addStyle.js"></script>
</body>
</html>