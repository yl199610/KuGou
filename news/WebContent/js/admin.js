$("#leftSider").accordion({
	fit:true,
});


var urlJson={"添加标题":"addTopic.jsp","添加新闻":"addNews.jsp","编辑新闻":"editNews.jsp", "编辑标题":"editTopic.jsp","编辑用户":"editUser.jsp","添加用户":"addUser.jsp"}

$(".menutree").tree({
	onClick: function(node){
		//alert(node.text);  // 当单击时弹出节点的文本值
		var nt = node.text;
		if($('#main').tabs('exists',nt)){  //判断面板是否存在
			//打开显示为当前面板 
			$('#main').tabs('select',nt);
		}else{
			//添加面板 
			if(urlJson[nt]){
				$('#main').tabs('add',{
				    title:nt,
				    href:"back/" + urlJson[nt],
				    closable:true,
				});
			}else{
				$('#main').tabs('add',{
				    title:nt,
				    content:'<h1>' + nt + '</h1>',
				    closable:true,
				});
			}
		}
	}
});

$("#main").tabs({
	fit:true,
});

//新闻管理
var cnid;
function openDN(id){
	cnid=id;
	$("#detailNews").dialog({
		title:'detailNews',
		width:600,
		height:300,
		left:10,
		modal:true,
		//href:'news/byId?cnid='+id
		href:'back/detailNews.jsp'
	});
}

function openMN(id){
	cnid=id;
	$("#modifyNews").dialog({
		title:'modifyNews',
		width:600,
		height:300,
		left:10,
	//	modal:true,
		href:'back/modifyNews.jsp'
	});
}


//标题修改
function openTON(id){
	cnid=id;
	$("#modifyTopic").dialog({
		title:'modifyTopic',
		width:300,
		height:300,
		left:300,
		top:100,
		modal:true,
		href:'back/modifyTopic.jsp'
	});
}


//用户修改
function openUPN(id){
	cnid=id;
	$("#modifyUser").dialog({
		title:'modifyUser',
		width:300,
		height:200,
		left:300,
		modal:true,
		href:'back/modifyUser.jsp'
	});
}


function closeUPN(){
	$("#modifyUser").dialog("close",true);
}

//关闭
function closeMN(){
	$("#modifyNews").dialog("close",true);
}

function closeTPN(){
	$("#modifyTopic").dialog("close",true);
}
