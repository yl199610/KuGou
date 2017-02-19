$(document).ready(function() {
	find();
})

function find(){
	$("#ksongsingId").combobox({
		url:'sing/getAllSing',
		method : "post",
		valueField : 'kuSingerId',
		textField : 'kuSingerName',
	})
	$("#kudetailsongId").combobox({
		url:'song/getAllSong',
		method : "post",
		valueField : 'kuSongId',
		textField : 'kuSongName',
	})
	$("#kudetailstyleId").combobox({
		url:'style/all',
		method : "post",
		valueField : 'kuSongStyleId',
		textField : 'kuSongStyleName',
	})
}

function addDetail(){
	$("#detailForm").form({
		url : "save/add",
		success : function(data) {
			alert(data);
			if (data.trim() == "true") {
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

