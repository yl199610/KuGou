//前面父窗口定义的cnid能在这个弹出窗口中显示  说明弹出窗口是嵌套在父窗口下   
UE.getEditor("mnewsContent");

$.get("news/detail?cnid="+cnid,function(data){
	$("#mnewsTitle").val(data.ntitle);
	$("#mnewsAuthor").val(data.nauthor);
	$("#mnewsContent").html(data.ncontent);
	$("#newsSummary").html(data.nsummary);
	$("#mnid").val(cnid);
	$("#currPic").attr("src",data.npicpath);
	$("#file").html(data.npicpath);
	$.get("topic/list",function(d){
//		alert(JSON.stringify(data));//把js的json对象转换成json字符串
		for(var i=0;i<d.length;i++){
			$("#ntid").append("<option value='"+d[i].tid+"' "+(d[i].tid==data.ntid?"selected":"")+">"+d[i].tname+"</option>");
		}
	},"json");
	
},"json");

function addPic(obj){
	var picStr=window.URL.createObjectURL(obj.files[0]);
	$("#currPic").attr("src",picStr);
}


//修改新闻
function modifyNews(){
	//$( "#modifyNews" )jquery对象 	jqueryObj[0]					 ==》[0]表示jquery对象转换为document对象
	//把document转换为jquery对象	$(domObj)
	//alert($("#mNews")[0]);
	 var formData = new FormData($("#mNews")[0]);	//FormData
	 $.ajax({  
		  url: 'news/modify',
		  type: 'POST',
		  data: formData,
		  async: false,  
		  cache: false,  
		  contentType: false,  
		  processData: false,  
		  success: function (returndata) {  
			 if(returndata){
				 parent.closeMN();
				 $('#newsInfo').datagrid("reload");
			 }
			 $.messager.show({
					title:'修改新闻',
					msg:returndata?"修改成功...":"修改失败!!!",
					showType:'show',
					style:{
						top:document.body.scrollTop+document.documentElement.scrollTop+40,
					}
				});
		  }
	 });  
}