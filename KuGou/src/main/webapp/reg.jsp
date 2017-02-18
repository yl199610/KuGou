<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="/KuGou/">
<title>登注册面</title>
<link type="text/css" rel="stylesheet" href="css/reg.css">
</head>
<body>
	<img src="images/3.jpg">
	<div id="regDiv">
		<form id="regForm" action="user/reg" method="post" name="form1">
			<table>
				<tr><td>用户名</td><td><input name="kgUserName"required="required"/></td></tr>
				<tr><td>密  码</td><td><input id="text2" type="password" name="kgAdminPwd" required="required" />
				<div id="div2" style="display:inline"> </div> 
				</td></tr>
				<tr><td>确认密码</td><td><input id="text3" type="password" name="rkgAdminPwd" required="required" onblur="check()"/>
				<div id="div3" style="display:inline"> </div> 
				</td></tr>
				<tr><td>邮  箱</td><td><input name="kgUserEmail" type="email" required="required"/></td></tr>
				
				<tr><td>生  日</td><td><input name="kgUserBirthday" required="required"/></td></tr>
				<tr><td>性  别</td><td><input name="kgUserSex" value="1" type="radio"> 男　
				<input name="kgUserSex" value="1" type="radio"> 女</td></tr>
				<tr><td>验证码</td><td><img src="vcode.jpg" title="看不清，换一张"/>
				<input name="vcode" placeholder="请输入验证码" id="vcode"  required="required"/></td></tr>
				<tr><td><input type="submit" value="注册" id="loginBtn"/></td></tr>
			</table>
		</form>
	</div>
	<script type="text/javascript">
		function check(){
			var div = document.getElementById("div3"); 
			div.innerHTML = ""; 
			var password = document.getElementById("text2").value;
			var repass = document.getElementById("text3").value; 
			if (repass == "") { 
			div.innerHTML = "密码不为空"; 
			return false; 
			} 
			if (password != repass) { 
			div.innerHTML = "输入密码和确认密码不一致"; 
			return false; 
			} 
			return true; 
		}
	</script>
</body>
</html>