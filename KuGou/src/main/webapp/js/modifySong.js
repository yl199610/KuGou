//获取所有信息
$.get("song/detail?sid="+cnid,function(data){
	$("#kuSongId").val(cnid);
	$("#kuSongName").val(data.kuSongName);
	$("#kuSongImg").val(data.kuSongImg);
	$("#kuSongWords").val(data.kuSongWords);
	$("#kuSongAddress").val(data.kuSongAddress);
	$("#kuSongSongtime").val(data.kuSongSongtime);
	$("#kuSongYear").val(data.kuSongYear);
	$("#kuSongNext").val(data.kuSongNext);
	$("#kuSongSecond").val(data.kuSongSecond);
},"json");


//修改
function modifySong(){
		$("#sModifyForm").form({
			url : "song/modify",
			success : function(data) {
				if (data.trim() == "true") {
					$("#songModify").dialog("close"); //关闭修改框
					$("#songInfo").datagrid("reload"); // 刷新修改数据
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