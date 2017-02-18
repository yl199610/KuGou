//获取所有信息
$.get("style/detail?sid="+cnid,function(data){
	$("#kuSongStyleId").val(cnid);
	$("#kuSongStyleName").val(data.kuSongStyleName);
	$("#kuSongStylenext").val(data.kuSongStylenext);
	$("#kuSongStylesecond").val(data.kuSongStylesecond);
},"json");

//修改
function modifyStyle(){
		$("#serModifyForm").form({
			url : "style/modify",
			success : function(data) {
				if (data.trim() == "true") {
					$("#styleModify").dialog("close"); //关闭修改框
					$("#styleInfo").datagrid("reload"); // 刷新修改数据
				} else {
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