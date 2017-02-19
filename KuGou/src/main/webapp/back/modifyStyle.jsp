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
		<input type="hidden" name="kuSongStyleId" id="kuSongStyleId"/>
		<input name="kuSongStyleName" id="kuSongStyleName" value="0" required="required" placeholder="请输入风格名" /><br />
		<input name="kuSongStylenext"  value="0" readonly="readonly" required="required" placeholder="预留1" /><br />
		<input name="kuSongStylesecond"  value="0" required="required" placeholder="预留2" /><br />
		<input type="submit" value="修改" onClick="modifyStyle()"/>
	</form>
	<script type="text/javascript" src="js/modifyStyle.js"></script>
</body>
</html>