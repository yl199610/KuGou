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
		success : function(data) {
			$('#styleInfo').datagrid("reload");
			$.messager.show({
				title : '添加风格',
				msg : data.trim() == "true" ? "添加成功..." : "添加失败!!!",
				showType : 'show',
				style : {
					top : document.body.scrollTop+document.documentElement.scrollTop + 40,
				}
			});
		}
	});
}

function addStyle2(){
	$("#styleForm").form({
		url : "style/add",
		success : function(data) {
			if (data.trim() == "true") {
				$("#styleInfo").datagrid("reload"); // 刷新修改数据
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


