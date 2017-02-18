$("#userInfo").datagrid({
					url : "user/list",
					fitColumns : true,
					singleSelect : true,
					pagination:true,
					columns : [ [ {
								field : 'kgUserId',
								title : '编号',
								width : 25,
								align : 'center'
							},{
								field : 'kgUserName',
								title : '名称',
								width : 30,
								align : 'center'
							},{
								field : 'kgUserPwd',
								title : '密码',
								width : 30,
								align : 'center'
							},{
								field : 'kgUserEmail',
								title : '邮箱',
								width : 85,
								align : 'center'
							},{
								field : 'kgUserSex',
								title : '性别',
								width : 20,
								align : 'center'
							},{
								field : 'kgUserBirthday',
								title : '生日',
								width : 50,
								align : 'center'
							},{
								field : 'kgUserState',
								title : '状态',
								width : 20,
								align : 'center'
							},{
								field : 'kgUserPic',
								title : '图像',
								width : 60,
								align : 'center',
								formatter : function(value, row, index) {
									if (value == null) {
										return "<img width='100' src='images/2.jpg'/>"
									} else {
										return "<img width='100' src='" + value + "'/>"
									}
								}
							},{
								field : 'opr',
								title : '操作',
								width : 100,
								align : 'center',
								formatter : function(value, row, index) {
									var oprStr = '<a class="detailBtn" onclick="openDatail()" >详情</a>&nbsp;&nbsp;'
											+ '<a class="ModifyBtn" onclick="openUpdate('
											+ index
											+ ')">修改</a>'
											+ '<script>$(".detailBtn").linkbutton({iconCls : "icon-search"});'
											+ '$(".ModifyBtn").linkbutton({iconCls : "icon-edit"});</script>';
									return oprStr;
								}
							} ] ],
				});

$("#modifyDiv").dialog({
	title : "用户修改",
	closable : true,
	resizable:true,
})

$("#modifyDiv").dialog("close");

$("#modifyForm").form({
			url : "user/modify",
			success : function(data) {
				if (data.trim() == "true") {
					$("#modifyDiv").dialog("close"); // 关闭修改框
					$("#userInfo").datagrid("reload"); // 刷新修改数据
				} else {
					$.messager.show({
						title : '修改信息',
						msg : '修改失败',
						showType : 'show',
						style : {
							right : '',
							top : document.body.scrollTop
									+ document.documentElement.scrollTop,
						}
					});
				}
			}
		});

$(".closeBtn").linkbutton({
	iconCls : "icon-cancel",
	onClick : function() {
		$("#modifyDiv").dialog("close");
	}
});

$(".updateBtn").linkbutton({
	iconCls : "icon-ok",
	onClick : function() {
		$("#modifyForm").submit();
	}

});

function openUpdate(index) {
	$("#modifyDiv").dialog("open");
	var row = $("#userInfo").datagrid("getRows")[index];
	$.get("user/detail?uid="+row.kgUserId,function(data){
		$("#kgUserId").val(data.kgUserId);
		$("#kgUserName").val(data.kgUserName);
		$("#kgUserPwd").val(data.kgUserPwd);
		$("#kgUserEmail").val(data.kgUserEmail);
		$("#kgUserSex").val(data.kgUserSex);
		$("#kgUserBirthday").val(data.kgUserBirthday);
		$("#kgUserNote").val(data.kgUserNote);
		$("#kgUserState").val(data.kgUserState);
		$("#kgUserSong").val(data.kgUserSong);
		$("#kgUserNext").val(data.kgUserNext);
		$("#kgUserSecond").val(data.kgUserSecond);
		if (row.kgUserPic) {
			$("#pic").attr("src", data.kgUserPic);
		}
	},"json");

}


function chgPic(obj) {
	$("#pic").attr("src", window.URL.createObjectURL(obj.files[0]));
}
