
var result = false;
var pwd;
var rwresult = false;

window.onload = myAutoRuns();
function myAutoRuns() {
	document.getElementById("kuLogin").innerHTML = GetQueryString("name");
	document.getElementById("myucname").innerHTML = GetQueryString("name");
	document.getElementById("kgUserName").setAttribute("value",
			GetQueryString("name"));

	$.get("user/getuserImg?name=" + GetQueryString("name"), function(data) {
		if (data.kgUserPic == null) {
			document.getElementById("UserPic").setAttribute("src",
					"updateImg_files/20100101192931478054.jpg");
		} else {
			document.getElementById("UserPic").setAttribute("src",
					data.kgUserPic);
		}
	}, "json");
}

function GetQueryString(name) {
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
	var r = window.location.search.substr(1).match(reg); //获取url中"?"符后的字符串并正则匹配
	var context = "";
	if (r != null)
		context = r[2];
	reg = null;
	r = null;
	return context == null || context == "" || context == "undefined" ? ""
			: context;
}

function modifyuserPwd() {
	if (result&& rwresult) {
		$("#modifyPwd").form({
					url : "user/changePwd",
					success : function(data) {
						if (data.trim() == "true") {
							
							$.messager.show({
										title : '修改信息',
										msg : '修改成功',
										showType : 'show',
										style : {
											right : '',
											top : document.body.scrollTop
													+ document.documentElement.scrollTop,
										}
									});
						} else {
							$.messager.show({
										title : '修改信息',
										msg : '修改失败',
										showType : 'show',
										style : {
											right : '',
											top : document.body.scrollTop
													+ document.documentElement.scrollTop,
										}
									});
						}
					}
				});
	} else {
		$.messager
		.show({
			title : '警告',
			msg : '不会看提示？？',
			showType : 'show',
			style : {
				right : '',
				top : document.body.scrollTop
						+ document.documentElement.scrollTop,
			}
		});
	}
}

function checkPwd(kgUserPwd) {
	pwd = kgUserPwd.value;
	if (pwd.trim() == '') {
		kgUserPwd.isOk = false;
		document.getElementById("notes").innerHTML = "密码不允许为空";
		document.getElementById("kg_uc_tips").setAttribute("class",
				"kg_uc_tips_error");
	} else if (pwd.length < 6 || pwd.length > 16) {
		kgUserPwd.isOk = false;
		document.getElementById("notes").innerHTML = "请输入6-16位的数字、字母或符号。";
		document.getElementById("kg_uc_tips").setAttribute("class",
				"kg_uc_tips_error");
	}

	else if (pwd.indexOf('&') != -1 || pwd.indexOf('&') != -1) {
		kgUserPwd.isOk = false;
		document.getElementById("notes").innerHTML = "密码请用数字和字母组合";
		document.getElementById("kg_uc_tips").setAttribute("class",
				"kg_uc_tips_error");
	} else {
		kgUserPwd.isOk = true;
		document.getElementById("notes").innerHTML = "";
		document.getElementById("kg_uc_tips").setAttribute("class",
				"kg_uc_tips_success");
	}

	if (kgUserPwd.isOk) {
		var lv = 0;
		if (pwd.match(/[a-z]/ig)) {
			lv++;
		}
		if (pwd.match(/[0-9]/ig)) {
			lv++;
		}
		if (pwd.match(/(.[^a-z0-9])/ig)) {
			lv++;
		}
		passwordStrong($("#ePasswordStrong")[0], lv);
	}

	result = kgUserPwd.isOk;
}

function checkRePwd(kgUserPwd) {
	var repwdefaultWord = kgUserPwd.value;
	if (repwdefaultWord == '') {
		kgUserPwd.isOk = false;
		document.getElementById("notes2").innerHTML = "密码不允许为空";
		document.getElementById("kg_uc_tips2").setAttribute("class",
				"kg_uc_tips_error");
	} else if (pwd != repwdefaultWord) {
		kgUserPwd.isOk = false;
		document.getElementById("notes2").innerHTML = "两次密码不一致";
		document.getElementById("kg_uc_tips2").setAttribute("class",
				"kg_uc_tips_error");

	} else {
		kgUserPwd.isOk = true;
		document.getElementById("notes2").innerHTML = "";
		document.getElementById("kg_uc_tips2").setAttribute("class",
				"kg_uc_tips_success");
	}
	rwresult = kgUserPwd.isOk;
}

function passwordStrong(target, type) {
	if (!target) {
		return
	}

	switch (type) {
	case 0:
		target.className = "kg_uc_psw_strong";
		break;
	case 1:
		target.className = "kg_uc_psw_strong kg_uc_psw_strong_s1";
		break;
	case 2:
		target.className = "kg_uc_psw_strong kg_uc_psw_strong_s2";
		break;
	case 3:
		target.className = "kg_uc_psw_strong kg_uc_psw_strong_s3";
		break;
	}
}
