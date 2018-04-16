function check(){ 
 	if($("#kgUserName").val()== ""){
		alert("用户名不能为空！！");
		return false;
	}else if($("#kuContent").val() == ""){
		alert("评论内容不能为空！！");
		return false;
	}
	//异步处理评论数据
	var params=$("#myTable").serialize();//取到添加评论数据 
	$.post("save/comment",params,function(data){			  		
		if (data) {
			window.location.reload();
			$("#commentContent tr:first").before("<tr><td colspan='3'><lable>评论内容：&nbsp;</lable>" + $("#kuContent").val() 
					+ "</td><td><lable>评论用户名：&nbsp;</lable>" + $("#kgUserName").val() + "</td></tr>");
			}		
	},"json");
	return false;
}
//获取地址栏参数
function GetQueryString(name)
{
     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null;
}
var id=GetQueryString("kuSongDetailId");
$.post("save/selectComment?sid="+id,function(data1){
	if (data1) {
		for(var i=0;i<data1.length;i++){
//			$("#commentContent tr:first").before("<tr><td colspan='3'><lable>评论内容：&nbsp;</lable>" + data1[i].kuContent
//				+ "</td><td><lable>评论用户名：&nbsp;</lable>" + data1[i].kgUserName + "</td></tr>");
			if((i & 1) != 0){$("#commentContent tr:first").before("<tr><td colspan='3'><lable>评论内容：&nbsp;</lable>" + data1[i].kuContent
					+ "</td><td class='name'><lable>评论用户名：&nbsp;</lable>" + data1[i].kgUserName + "</td></tr>");
			}else{
				$("#commentContent tr:first").before("<tr class='next'><td colspan='3'><lable>评论内容：&nbsp;</lable>" + data1[i].kuContent
						+ "</td><td class='name'><lable>评论用户名：&nbsp;</lable>" + data1[i].kgUserName + "</td></tr>");
			}
		
		}
	}
},"json");
	