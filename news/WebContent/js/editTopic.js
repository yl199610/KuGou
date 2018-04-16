$('#topicInfo').datagrid({    
    url:'topic/page',
    singleSelect:true,
	pagination:true,
   columns:[[    
              {field:'tid',title:'编号',width:100,align:'center'},    
              {field:'tname',title:'标题',width:300,align:'center'},
              {field:'operator',title:'操作',width:160,align:'center',
            	  formatter: function(value,row,index){
            			var str='<a class="operatorBtn" href="javascript:void(0)" onClick="operatorFun(1,'+row.tid+')">停用</a>&nbsp;&nbsp;'
            			+'<a class="operatorBtn" href="javascript:void(0)" onClick="operatorFun(2,'+row.tid+')">修改</a>'
            		    +'<script>$(".operatorBtn").linkbutton();</script>';
            		return str;
            	  }
              },
         ]]    
});

function operatorFun(operType, id){
	switch(operType){
	case 1:
		stopTP(id);
		break;	
	case 2:
		parent.openTON(id);
		break;
	}
}

function stopTP(id){
	$.messager.confirm('确认','您确认想要停用记录吗？',function(r){    
	    if (r){
	        $.get("topic/archive?cnid="+id,function(data){
				$('#topicInfo').datagrid("reload");
	        	$.messager.show({
					title:'归档标题',
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