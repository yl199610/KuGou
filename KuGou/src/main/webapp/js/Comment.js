 function check(){ 
 	if($("#kgUserName").val()== ""){
		alert("用户名不能为空！！");
		return false;
	}else if($("#kuContent").val() == ""){
		alert("评论内容不能为空！！");
		return false;
	}
	var params=$("#myTable").serialize();//取到添加评论数据
	//异步处理评论数据
	$.post("save/comment",params,function(data){			  		
		if (data) {
		$("#commentContent tr:first").before("<tr><td colspan='3'><lable>评论内容：&nbsp;</lable>" + $("#kuContent").val() 
				+ "</td><td><lable>评论用户名：&nbsp;</lable>" + $("#kgUserName").val() + "</td></tr>");
		}		
	},"json");
	return false;
}
 
 
$.post("save/selectComment",function(data1){			  		
	if (data1) {
		for(var i=0;i<data1.length;i++){
			$("#commentContent tr:first").before("<tr><td colspan='3'><lable>评论内容：&nbsp;</lable>" + data1[i].kuContent
				+ "</td><td><lable>评论用户名：&nbsp;</lable>" + data1[i].kgUserName + "</td></tr>");
		}
	}		
},"json");
	