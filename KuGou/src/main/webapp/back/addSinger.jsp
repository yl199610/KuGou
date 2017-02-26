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
	<form name="singerForm" id="singerForm" style="margin-left: 200px; margin-top: 40px;" method="post">
		<input name="kuSingerName"  required="required" placeholder="请输入手姓名" /><br />
		<input name="kuSingerSex"  required="required" placeholder="请输入歌手性别" /><br />
		<input name="kuSingerImg"  required="required" placeholder="请输入歌手图片" /><br />
		<input name="kuSingerCode"  required="required" placeholder="请输入歌手助记码" /><br />
		<input name="kuSingerSingerstate"  required="required" placeholder="请输入用户的状态" /><br /> 
		<input name="kuSingerSingersecond"  required="required" placeholder="歌手简介" /><br />
		<input type="submit" value="添加" onClick="addSinger()"/>
	</form>
	<script type="text/javascript" src="js/addSinger.js"></script>
</body>
</html>