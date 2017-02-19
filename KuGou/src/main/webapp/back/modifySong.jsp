<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/KuGou/">
<meta charset="UTF-8">
<title>后台管理</title>
</head>
<body>
	<form name="sModifyForm" id="sModifyForm" style="margin-left: 50px; margin-top: 40px;">
		<input type="hidden" name="kuSongId" id="kuSongId"/>
		<input name="kuSongName" id="kuSongName" required="required" placeholder="请输入歌名" /><br />
		<input name="kuSongImg" id="kuSongImg" required="required" placeholder="请输入歌曲时长" /><br />
		<input name="kuSongWords" id="kuSongWords" required="required" placeholder="请输入歌词路径" /><br />
		<input name="kuSongAddress" id="kuSongAddress" required="required" placeholder="请输入歌曲路径" /><br />
		<input name="kuSongSongtime" id="kuSongSongtime" required="required" placeholder="请输入歌曲发布时间" /><br /> 
		<input name="kuSongYear" id="kuSongYear" required="required" placeholder="请输入歌曲年代" /><br />
		<input name="kuSongNext" id="kuSongNext" readonly="readonly" required="required" placeholder="预留" /><br />
		<input name="kuSongSecond" id="kuSongSecond" required="required" placeholder="预留" /><br />
		<input type="submit" value="修改" onClick="modifySong()">
	</form>
	<script type="text/javascript" src="js/modifySong.js"></script>
</body>
</html>
