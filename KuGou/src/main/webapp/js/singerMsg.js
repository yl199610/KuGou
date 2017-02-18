$('#singerInfo').datagrid({
	fitColumns : true,
	url:'sing/list',
	singleSelect : true,
	pagination:true,
	columns : [ [ {
		field : 'kuSingerId',
		title : '歌手编号',
		width : 18,
		align:'center'
	}, {
		field : 'kuSingerName',
		title : '歌手姓名',
		width : 30,
		align:'center'
	} ,{
		field : 'kuSingerSex',
		title : '性别',
		width : 18,
		align:'center'
	}, {
		field : 'kuSongWords',
		title : '歌手图片',
		width : 40,
		align:'center'
	},{
		field : 'operator',
		title : '操作',
		width : 40,
		align:'center',
		formatter: function(value,row,index){
			var str = '<a class="operatorBtn" href="javascript:void(0)" onClick="singerOperatorFun(1, ' 
				+ row.kuSingerId + ')">删除</a>&nbsp;'
				+ '<a class="operatorBtn" href="javascript:void(0)" onClick="singerOperatorFun(2, ' 
				+ row.kuSingerId + ')">修改</a>&nbsp;'
				+ '<script>$(".operatorBtn").linkbutton();</script>';
			return str;
		}
	} ]]
});


function singerOperatorFun(operType, id){
	switch(operType){
	case 1:
		stopDp(id);
		break;	
	case 2:
		parent.updateSinger(id);
		break;
	}
}


function stopDp(id){
	$.messager.confirm('确认','您确认想要删除记录吗,删除后记录将无法恢复？',function(r){  
	    if (r){
	        $.get("sing/del?sid="+id,function(data){
				$('#singerInfo').datagrid("reload");
	        	$.messager.show({
					title:'删除歌手',
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
