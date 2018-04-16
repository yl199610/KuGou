//前面父窗口定义的cnid能在这个弹出窗口中显示  说明弹出窗口是嵌套在父窗口下   
$.get("user/get?cnid="+cnid,function(data){
	$("#uname").val(data.uname);
	$("#upwd").val(data.upwd);
	$("#usid").val(cnid);
},"json");



//修改用户
function modifyUser(){
	 var formData = new FormData($("#modifyUsers")[0]);	//FormData
	 $.ajax({  
		  url: 'user/modify',
		  type: 'POST',
		  data: formData,
		  async: false,  
		  cache: false,  
		  contentType: false,  
		  processData: false,  
		  success: function (returndata) {  
			 if(returndata){
				 parent.closeUPN();
				 $('#userInfo').datagrid("reload");
			 }
			 $.messager.show({
					title:'修改用户',
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