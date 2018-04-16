	$.get("topic/list",function(d){
//		alert(JSON.stringify(data));//把js的json对象转换成json字符串
		for(var i=0;i<d.length;i++){
			$("#antid").append("<option value='"+d[i].tid+"'>"+d[i].tname+"</option>");
		}
	},"json");

function addPic(obj){
	var picStr=window.URL.createObjectURL(obj.files[0]);
	$("#acurrPic").attr("src",picStr);
	var upFile=document.aNews.file.value;
	$("#f").html(upFile);
	alert($("#f").html());
	//alert($("#f").val($("#acurrPic").attr("src")).val());
}

UE.getEditor("anewsContent");


//添加新闻
function addNews(){
	//$( "#modifyNews" )jquery对象 	jqueryObj[0]					 ==》[0]表示jquery对象转换为document对象
	//把document转换为jquery对象	$(domObj)
	//alert($("#mNews")[0]);
	 var formData = new FormData($("#aNews")[0]);	//FormData
	 $.ajax({  
		  url: 'news/add',
		  type: 'POST',
		  data: formData,
		  async: false,  
		  cache: false,  
		  contentType: false,  
		  processData: false,  
		  success: function (returndata) {  
			$('#newsInfo').datagrid("reload");
			 $.messager.show({
					title:'添加新闻',
					msg:returndata?"添加成功...":"添加失败!!!",
						//	msg:returndata=="true"?"添加成功...":"添加失败!!!",
					showType:'show',
					style:{
						top:document.body.scrollTop+document.documentElement.scrollTop+40,
					}
				});
		  }
	 }); 
//	 return false;
}