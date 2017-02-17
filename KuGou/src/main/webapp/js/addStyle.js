function addStyle() {
	var formData = new FormData($("#styleForm")[0]);//  FormData	var formData = $("#songForm").serialize();
	$.ajax({
		url : 'style/add',
		type : 'POST',
		data : formData,
		async : false,
		cache : false,
		contentType : false,
		processData : false,
		success : function(returndata) {
			$('#styleInfo').datagrid("reload");
			$.messager.show({
				title : '添加风格',
				msg : returndata.trim()=="true"? "添加成功..." : "添加失败!!!",
				showType : 'show',
				style : {
					top : document.body.scrollTop+document.documentElement.scrollTop + 40,
				}
			});
		}
	});
}
