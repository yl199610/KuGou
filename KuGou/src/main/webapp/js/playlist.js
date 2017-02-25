var address=location.href.substring(location.href.indexOf("?"));
function removeLastOne(str){
	return str.substring(0,str.length - 13);
}//无用
//alert(removeLastOne(address));
$(function() {
	var id=$("#kuserSaveId").val();
	loadDetail(id);
});
function loadDetail(songid){
	$.post("save/findDetail?kuSongId="+songid, function(data) {
		$("#ulAlbums").empty();
		for (i=0; i < data.length; i++) {
			 var jsonarray = eval(data);
			 var song=jsonarray[i].kusong.kuSongName;//歌曲表歌曲名
			 var singer=data[i].kgSavenext;//歌手
			 var path=jsonarray[i].kusong.kuSongAddress;//歌曲路径
			 var spath=jsonarray[i].kusong.kuSongWords;//歌词路径
			 var id=data[i].kgSaveId;
			 // var allpath=removeLastOne(address)+"/lrc.jsp?music="+path;
			 var allpath="./lrc.jsp?music="+path;//wordpath="+spath+"& 歌词
			 var songSinger=singer+"----"+song;
			 $("#ulAlbums").append('<li style="background-color:#666;width:600px;" class="s_180691">'+
					 '<span style="margin-left:20px;font-size:20px;color:red">'+songSinger+'</span>'+
					 '<audio style="margin-top:20px;" src='+ path+' controls="controls"></audio>'+
					 '<form action="save/download.do" method="post">'+
					 '<input id="fileName" type="hidden" name="fileName" value="'+path+'"/>'+
					 '<input type="submit" value="下载"></form><input type="submit" value="取消收藏" onclick="cancel('+id+')")>'+
					 '</li><a style="color:blue;" href="'+allpath+'" target="_blank">查看歌词</a>');
		}
	}, "json");
}

function cancel(id){
	$.post("save/cancel?uid="+id,function(data){
		if(data){
			alert("取消收藏成功");
			window.location.reload();
		}else{
			alert("取消收藏失败!!!");
		}
	},"json");
}