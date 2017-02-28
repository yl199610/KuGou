<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="/KuGou/">
<title>登注册面</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet" href="css/reg.css">
</head>
<body>
	<img src="images/log.jpg">
	<div id="regDiv">
		<form id="regForm" action ="user/zhuche" method="post" name="form1">
			<table>
				<tr><td class="left">用户名</td><td><input id="userName" name="kgUserName"  style="z-index:0" required="required" onblur="validate()"/>
				<div id="showResult"></div>
				</td></tr>
				<tr><td class="left">密  码</td><td><input id="text2" type="password" name="kgUserPwd" required="required" onblur="check2()"/>
				<div id="div2" style="display:inline"> </div> 
				</td></tr>
				<tr><td class="left">确认密码</td><td><input id="text3" type="password" name="rkgUserPwd" required="required" onblur="check3()"/>
				<div id="div3" style="display:inline"> </div> 
				</td></tr>
				<tr><td class="left">邮  箱</td><td><input id="text4"  name="kgUserEmail" type="email" required="required"/></td></tr>
				
				<tr><td class="left">生  日</td><td><input id="text5"  name="kgUserBirthday" required="required"/></td></tr>
				<tr><td class="left">性  别</td><td><input id="Sex1" name="kgUserSex" value="1" type="radio"> 男　
				<input  id="Sex2" name="kgUserSex" value="1" type="radio"> 女</td></tr>
				<tr><td class="left">验证码</td><td><img src="vcode.jpg" title="看不清，换一张"/>
				<input name="vcode" placeholder="请输入验证码" id="vcode"  required="required"/></td></tr>
				<tr colspan="1" rowspan="1"><td colspan="2" rowspan="2"><input id="Btn" type="submit" value="立即注册" tabindex="23" id="zhucheBtn" /></td></tr>
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
		function check2(){
			var div = document.getElementById("div2"); 
			div.innerHTML = ""; 
			var password = document.getElementById("text2").value;
			if (password == "") { 
			div.innerHTML = "密码不为空"; 
			return false; 
			}  
			return true; 
		}
		function check3(){
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
	
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/reg.js"></script>
</body>
</html>