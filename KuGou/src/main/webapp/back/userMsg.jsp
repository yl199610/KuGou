<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/KuGou/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
</head>
<body>   
	<table id="userInfo"></table>
		<div id="modifyDiv">
			<form id="modifyForm" method="post"  enctype="multipart/form-data">
				<input id="kgUserId" name="kgUserId" readonly="readonly"/>
				<br><input id="kgUserName" name="kgUserName"/>
				<br><input id="kgUserPwd" name="kgUserPwd"/>
				<br><input id="kgUserEmail" name="kgUserEmail" />
				<br><input id="kgUserSex" name="kgUserSex" />
				<br><input id="kgUserBirthday" name="kgUserBirthday" />
				<br><input id="kgUserNote" name="kgUserNote"/>
				<br><input type="file" name="picData"  onchange="chgPic(this)"/>
				<img src="images/1.jpg" id="pic">
				<br><input id="kgUserState" name="kgUserState" />
				<br><input id="kgUserSong" name="kgUserSong" />
				<br><input id="kgUserNext" name="kgUserNext" />
				<br><input id="kgUserSecond" name="kgUserSecond" />
				<p><a class="closeBtn" href="javascript:void(0)">关闭</a>&nbsp;
				<a class="updateBtn" href="javascript:void(0)">修改</a></p>		
			</form>
		</div>
	<script type="text/javascript" src="js/userMsg.js"></script>
</body>
</html>