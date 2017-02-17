function addSong(){
	$("#songForm").form({
		url : "song/add",
		success : function(data) {
			if (data.trim() == "true") {
				$("#songInfo").datagrid("reload"); // 刷新修改数据
				$.messager.show({
					title : '添加信息',
					msg : '添加成功',
					showType : 'show',
					style : {
						right : '',
						top : document.body.scrollTop + document.documentElement.scrollTop,
					}
				});
			} else {
				$.messager.show({
					title : '添加信息',
					msg : '添加失败',
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

