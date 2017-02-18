

$.get("sing/detail?sid="+cnid,function(data){
	$("#kuSingerId").val(cnid);
	$("#kuSingerName").val(data.kuSingerName);
	$("#kuSingerSex").val(data.kuSingerSex);	
	$("#kuSingerImg").val(data.kuSingerImg);
	$("#kuSingerCode").val(data.kuSingerCode);
	$("#kuSingerSingerstate").val(data.kuSingerSingerstate);
	$("#kuSingerSingernext").val(data.kuSingerSingernext);
	$("#kuSingerSingersecond").val(data.kuSingerSingersecond);
},"json");



//修改
function modifySinger(){
		$("#sgModifyForm").form({
			url : "sing/modify",
			success : function(data) {
				if (data.trim() == "true") {
					$("#singerModify").dialog("close"); //关闭修改框
					$("#singerInfo").datagrid("reload"); // 刷新修改数据
				}  else {
					$.messager.show({
						title : '修改信息',
						msg : '修改失败',
						showType : 'show',
						style : {
							right : '',
							top : document.body.scrollTop + document.documentElement.scrollTop,
						}
					});
				}
			}
		});
}