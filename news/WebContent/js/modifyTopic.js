//前面父窗口定义的cnid能在这个弹出窗口中显示  说明弹出窗口是嵌套在父窗口下   
$.get("topic/get?cnid="+cnid,function(data){
	$("#tname").val(data.tname);
	$("#tid").val(data.tid);
},"json");



//修改标题
function modifyTopic(){
	 var formData = new FormData($("#mmodifyTopic")[0]);	//FormData
	 $.ajax({  
		  url: 'topic/modify',
		  type: 'POST',
		  data: formData,
		  async: false,  
		  cache: false,  
		  contentType: false,  
		  processData: false,  
		  success: function (returndata) {  
			 if(returndata){
				 parent.closeTPN();
				 $('#topicInfo').datagrid("reload");
			 }
			 $.messager.show({
					title:'修改标题',
					//msg:returndata?"修改成功...":"修改失败!!!",
					msg:returndata?"修改成功...":"修改失败!!!",
					showType:'show',
					style:{
						top:document.body.scrollTop+document.documentElement.scrollTop+40,
					}
				});
		  }
	 }); 
//	 return false;
}