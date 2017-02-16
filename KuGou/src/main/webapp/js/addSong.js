function addSong() {
	var formData = new FormData($("#songForm")[0]);//  FormData	var formData = $("#songForm").serialize();
	$.ajax({
		url : 'song/add',
		type : 'POST',
		data : formData,
		async : false,
		cache : false,
		contentType : false,
		processData : false,
		success : function(returndata) {
			$('#songInfo').datagrid("reload");
			$.messager.show({
				title : '添加歌曲',
				msg : returndata.trim()=="true"? "添加成功..." : "添加失败!!!",
				showType : 'show',
				style : {
					top : document.body.scrollTop+document.documentElement.scrollTop + 40,
				}
			});
		}
	});
}
