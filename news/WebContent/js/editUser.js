$('#userInfo').datagrid({
	fitColumns : true,
	url:'user/page',
	singleSelect : true,
	pagination:true,
	columns : [ [ {
		field : 'usid',
		title : '编号',
		width : 30,
		align:'center'
	}, {
		field : 'uname',
		title : '用户名',
		width : 70,
		align:'center'
	}, {
		field : 'upwd',
		title : '密码',
		width : 50,
		align:'center'
	},{
		field : 'operator',
		title : '操作',
		width : 50,
		align:'center',
		formatter: function(value,row,index){
			var str = '<a class="operatorBtn" href="javascript:void(0)" onClick="operatorFun(1, ' 
				+ row.usid + ')">停用</a>&nbsp;'
				+ '<a class="operatorBtn" href="javascript:void(0)" onClick="operatorFun(2, ' 
				+ row.usid + ')">修改</a>&nbsp;'
				+ '<script>$(".operatorBtn").linkbutton();</script>';
			return str;
		}

	} ]]
});


function operatorFun(operType, id){
	switch(operType){
	case 1:
		stopUser(id);
		break;	
	case 2:
		parent.openUPN(id);
		break;
	}
}


function stopUser(id){
	$.messager.confirm('确认','您确认想要停用记录吗？',function(r){    
	    if (r){
	        $.get("user/archive?cnid="+id,function(data){
				$('#userInfo').datagrid("reload");
	        	$.messager.show({
					title:'归档用户',
					msg:returndata?"归档成功...":"归档失败!!!",
					showType:'show',
					style:{
						top:document.body.scrollTop+document.documentElement.scrollTop+40,
					}
				});
	        },"json");   
	    }    
	});
}
