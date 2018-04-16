$('#newsInfo').datagrid({
	fitColumns : true,
	url:'news/list',
	singleSelect : true,
	pagination:true,
	columns : [ [ {
		field : 'nid',
		title : '编号',
		width : 20,
		align:'center'
	}, {
		field : 'ntitle',
		title : '标题',
		width : 100,
		align:'center'
	}, {
		field : 'nauthor',
		title : '作者',
		width : 40,
		align:'center'
	}, {
		field : 'ncreateDate',
		title : '创建日期',
		width : 50,
		align:'center'
	}, {
		field : 'operator',
		title : '操作',
		width : 50,
		align:'center',
		formatter: function(value,row,index){
			var str = '<a class="operatorBtn" href="javascript:void(0)" onClick="operatorFun(3, ' 
				+ row.nid + ')">停用</a>&nbsp;'
				+ '<a class="operatorBtn" href="javascript:void(0)" onClick="operatorFun(2, ' 
				+ row.nid + ')">修改</a>&nbsp;'
				+ '<a class="operatorBtn" href="javascript:void(0)" onClick="operatorFun(1, ' 
				+ row.nid + ')">详情</a>'
				+ '<script>$(".operatorBtn").linkbutton();</script>';
			return str;
		}

	} ]]
});


function operatorFun(operType, id){
	switch(operType){
	case 1:
		parent.openDN(id);
		break;	
	case 2:
		parent.openMN(id);
		break;
	case 3:
		stopNews(id);
		break;
	}
}

function stopNews(id){
	$.messager.confirm('确认','您确认想要停用记录吗？',function(r){    
	    if (r){
	        $.get("news/archive?cnid="+id,function(data){
				$('#newsInfo').datagrid("reload");
	        	$.messager.show({
					title:'归档新闻',
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
