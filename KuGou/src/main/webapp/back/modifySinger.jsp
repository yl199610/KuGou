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
	<form name="serModifyForm" id="serModifyForm" style="margin-left: 50px; margin-top: 40px;">
		<input name="kuSingerName" id="kuSingerName" value="0" required="required" placeholder="请输入歌名" /><br />
		<input name="kuSingerSex"  value="0" required="required" placeholder="请输入歌曲时长" /><br />
		<input name="kuSingerImg"  value="0" required="required" placeholder="请输入歌词路径" /><br />
		<input name="kuSingerCode"  value="0" required="required" placeholder="请输入歌曲路径" /><br />
		<input name="kuSingerSingerstate"  value="0" required="required" placeholder="请输入歌曲发布时间" /><br /> 
		<input name="kuSingerSingernext"  value="0" required="required" placeholder="请输入歌曲年代" /><br />
		<input name="kuSingerSingersecond"  value="0" required="required" placeholder="预留" /><br />
		<input type="button" value="修改" onClick="modifySinger()"/>
	</form>
	<script type="text/javascript" src="js/modifySinger.js"></script>
</body>
</html>