//添加用户
function addTopic(){
	 var formData = new FormData($("#tForm")[0]);	//FormData
	 $.ajax({  
		  url: 'topic/add',
		  type: 'POST',
		  data: formData,
		  async: false,  
		  cache: false,  
		  contentType: false,  
		  processData: false,  
		  success: function (returndata) {  
			$('#topicInfo').datagrid("reload");
			 $.messager.show({
					title:'添加用户',
					msg:returndata?"添加成功...":"添加失败!!!",
					//msg:returndata=="true"?"添加成功...":"添加失败!!!",
					showType:'show',
					style:{
						top:document.body.scrollTop+document.documentElement.scrollTop+40,
					}
				});
		  }
	 }); 
//	 return false;
}