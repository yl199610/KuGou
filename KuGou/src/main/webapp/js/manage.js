$("#leftSider").accordion({
	fit:true,
});


var urlJson={"歌曲信息":"songMsg.jsp","歌曲添加":"addSong.jsp","歌手信息":"singerMsg.jsp","歌手添加":"addSinger.jsp","风格信息":"styleMsg.jsp","风格添加":"addStyle.jsp","用户信息":"userMsg.jsp","已收藏歌曲信息":"saveMsg.jsp"}


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

var cnid;
var pid;
//修改歌曲
function updateSong(id){
	cnid=id;
	$("#songModify").dialog({
		title:'modifySong',
		width:300,
		height:500,
		left:300,
		modal:true,
		href:'back/modifySong.jsp'
	});
}
//修改歌手
function updateSinger(id){
	cnid=id;
	$("#singerModify").dialog({
		title:'modifySinger',
		width:300,
		height:500,
		left:300,
		modal:true,
		href:'back/modifySinger.jsp'
	});
}

//修改风格
function updateStyle(id){
	cnid=id;
	$("#styleModify").dialog({
		title:'modifyStyle',
		width:300,
		height:500,
		left:300,
		modal:true,
		href:'back/modifyStyle.jsp'
	});
}