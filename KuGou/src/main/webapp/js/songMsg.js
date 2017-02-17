$('#songInfo').datagrid({
	fitColumns : true,
	url:'song/list',
	singleSelect : true,
	pagination:true,
	columns : [ [ {
		field : 'kuSongId',
		title : '歌曲编号',
		width : 18,
		align:'center'
	}, {
		field : 'kuSongName',
		title : '歌名',
		width : 30,
		align:'center'
	} ,{
		field : 'kuSongImg',
		title : '歌曲时长',
		width : 18,
		align:'center'
	}, {
		field : 'kuSongWords',
		title : '歌词路径',
		width : 40,
		align:'center'
	}, {
		field : 'kuSongSongtime',
		title : '歌曲时间',
		width : 26,
		align:'center'
	}, {
		field : 'kuSongYear',
		title : '歌曲年代',
		width : 26,
		align:'center'
	} ,{
		field : 'operator',
		title : '操作',
		width : 40,
		align:'center',
		formatter: function(value,row,index){
			var str = '<a class="operatorBtn" href="javascript:void(0)" onClick="songOperatorFun(1, ' 
				+ row.kuSongId + ')">删除</a>&nbsp;'
				+ '<a class="operatorBtn" href="javascript:void(0)" onClick="songOperatorFun(2, ' 
				+ row.kuSongId + ')">修改</a>&nbsp;'
				+ '<script>$(".operatorBtn").linkbutton();</script>';
			return str;
		}
	} ]]
});


function songOperatorFun(operType, id){
	switch(operType){
	case 1:
		stopSong(id);
		break;	
	case 2:
		parent.updateSong(id);
		break;
	}
}


function stopSong(id){
	$.messager.confirm('确认','您确认想要删除吗,删除后记录将无法恢复？',function(r){    
	    if (r){
	        $.get("song/del?cnid="+id,function(data){
				$('#songInfo').datagrid("reload");
	        	$.messager.show({
					title:'删除歌曲',
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
