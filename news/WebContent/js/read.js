var nidParam = location.href.substring(location.href.indexOf("?"));

function check(){
	var cauthor = document.getElementById;
	var content = document.getElementById("ccontent");
	if($("#cauthor").val() == ""){
		alert("用户名不能为空！！");
		return false;
	}else if($("#ccontent").val() == ""){
		alert("评论内容不能为空！！");
		return false;
	}
	//取到添加评论数据
	var params = $("#commentForm").serialize();
	//异步处理评论数据
	$.post("comment/add" + nidParam, params, function(data){
		if(data){
			$("#commentContent tr:first").before("<tr><td colspan='3'>" + data.ccontent + 
					"</td><td>" + data.cdate + "</td><td>" + data.cip + 
					"</td><td>" + data.cauthor + "</td></tr>");
		}
	}, "json");
	return false;
}
//取到当前新闻的评论信息
$.get("comment/list" + nidParam, function(data){
	var commentStr = "";
	if (data.length > 0) {
		for (var i = 0; i < data.length; i++) {
			commentStr += "<tr><td colspan='3'>" + data[i].ccontent + 
			"</td><td>" + data[i].cdate + "</td><td>" + data[i].cip + 
			"</td><td>" + data[i].cauthor + "</td></tr>"
		}
		$("#commentContent tr:first").before(commentStr);
	}else{
		$("#commentContent tr:first").before("<tr><td colspan='6'>暂无评论！ </td></tr>");
	}
}, "json");


