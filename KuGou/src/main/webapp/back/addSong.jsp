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
	<form name="songForm" id="songForm" style="margin-left: 200px; margin-top: 40px;" method="post">
		<input name="kuSongName" value="0" required="required" placeholder="请输入歌名" /><br />
		<input name="kuSongImg"  value="0" required="required" placeholder="请输入歌曲时长" /><br />
		<input name="kuSongWords"  value="0" required="required" placeholder="请输入歌词路径" /><br />
		<input name="kuSongAddress"  value="0" required="required" placeholder="请输入歌曲路径" /><br />
		<input name="kuSongSongtime"  value="0" required="required" placeholder="请输入歌曲发布时间" /><br /> 
		<input name="kuSongYear"  value="0" required="required" placeholder="请输入歌曲年代" /><br />
		<input name="kuSongNext"  value="0" required="required" placeholder="预留" /><br />
		<input name="kuSongSecond"  value="0"required="required" placeholder="预留" /><br />
		<input type="submit" value="添加" onClick="addSong()"/>
	</form>
	<script type="text/javascript" src="js/addSong.js"></script>
</body>
</html>