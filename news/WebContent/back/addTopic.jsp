<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/news/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
</head>
<body>  
		<form id="tForm" style="margin-left:90px;margin-top:40px;">
			<input name="tname" required="required" placeholder="请输入标题"/><br/><br/>
			<input type="button" value="添加" onClick="addTopic()">
			<input type="reset" value="重置">
		</form>
	<script type="text/javascript" src="js/addTopic.js"></script>
</body>
</html>