$('#styleInfo').datagrid({
	fitColumns : true,
	url:'style/list',
	singleSelect : true,
	pagination:true,
	columns : [ [ {
		field : 'kuSongStyleId',
		title : '风格编号',
		width : 18,
		align:'center'
	}, {
		field : 'kuSongStyleName',
		title : '风格名称',
		width : 30,
		align:'center'
	}  ,{
		field : 'operator',
		title : '操作',
		width : 40,
		align:'center',
		formatter: function(value,row,index){
			var str = '<a class="operatorBtn" href="javascript:void(0)" onClick="styleOperatorFun(1, ' 
				+ row.kuSongStyleId + ')">删除</a>&nbsp;'
				+ '<a class="operatorBtn" href="javascript:void(0)" onClick="styleOperatorFun(2, ' 
				+ row.kuSongStyleId + ')">修改</a>&nbsp;'
				+ '<script>$(".operatorBtn").linkbutton();</script>';
			return str;
		}
	} ]]
});


function styleOperatorFun(operType, id){
	switch(operType){
	case 1:
		stopDp(id);
		break;	
	case 2:
		parent.updateStyle(id);
		break;
	}
}


function stopDp(id){
	$.messager.confirm('确认','您确认想要删除吗,删除后将无法恢复？',function(r){    
	    if (r){
	        $.get("style/del?cnid="+id,function(data){
				$('#styleInfo').datagrid("reload");
	        	$.messager.show({
					title:'删除风格',
					msg:returndata.trim()=="true"?"删除成功...":"删除失败!!!",
					showType:'show',
					style:{
						top:document.body.scrollTop+document.documentElement.scrollTop+40,
					}
				});
	        },"json");   
	    }    
	});
}
