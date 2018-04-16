<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/news/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
</head>
<body>  
<form id="mmodifyTopic" enctype="multipart/form-data" style="width:90%;margin:0px auto">
	<input type="hidden" name="tid" id="tid"/>
	<input name="tname" required="required" placeholder="请输入标题名" id="tname"/><br/><br/>
	<input type="button" value="修改" onClick="modifyTopic()">
	<input type="reset" value="重置">
</form>
<script type="text/javascript" src="js/modifyTopic.js"></script>
</body>
</html>