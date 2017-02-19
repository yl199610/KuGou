$("#regDiv").dialog({
	title : "用户添加",
	closable : true,
	resizable:true,
});

$("#regForm img").click(function(){
	$(this).attr("src", "vcode.jpg?" + new  Date().getTime());
});



/*function zhuche(){
	alert(111);
	$.get("user/zhuche",function(data){
		alert(data);
		$("#kgUserName").val(data.kgUserName);
		$("#kgUserPwd").val(data.kgUserPwd);
		$("#kgUserEmail").val(data.kgUserEmail);
		$("#kgUserSex").val(data.kgUserSex);
		$("#kgUserBirthday").val(data.kgUserBirthday);
		$("#kgUserNote").val(data.kgUserNote);
		$("#kgUserState").val(data.kgUserState);
		$("#kgUserSong").val(data.kgUserSong);
		$("#kgUserNext").val(data.kgUserNext);
		$("#kgUserSecond").val(data.kgUserSecond);
		if (row.kgUserPic) {
			$("#pic").attr("src", data.kgUserPic);
		}
	},"json");
	

}*/


