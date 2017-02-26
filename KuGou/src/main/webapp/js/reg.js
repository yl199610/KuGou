$("#regDiv").dialog({
	title : "用户添加",
	closable : true,
	resizable:true,
});

$("#regForm img").click(function(){
	$(this).attr("src", "vcode.jpg?" + new  Date().getTime());
});

function validate(){
	var name=$("#userName").val();
	$.post("user/check?uname="+name,function(data){
		var jsonarray=JSON.stringify(data);
		if(jsonarray=="true"){
			$("#showResult").html("");
		}else{
			$("#showResult").html("用户名已经存在");
			$("#showResult").css("color","red");
		}
	},"json");
}