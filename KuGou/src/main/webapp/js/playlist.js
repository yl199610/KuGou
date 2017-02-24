var address=location.href.substring(location.href.indexOf("?"));
$(function() {
	var id=$("#kuserSaveId").val();
	loadDetail(id);
});
function loadDetail(songid){
	$.post("save/findDetail?kuSongId="+songid, function(data) {
		$("#ulAlbums").empty();
		for (i=0; i < data.length; i++) {
			 var jsonarray = eval(data);
			 //歌曲时间   歌词路径(显示歌词)   歌曲路径(播放歌曲)   详细表id(增加点击率 或 跳转到播放器页面 点击播放全部跳转到播放器页面)
			 var song=jsonarray[i].kusong.kuSongName;//歌曲表歌曲名
			 var singer=data[i].kgSavenext;//歌手
			 var path=jsonarray[i].kusong.kuSongAddress;//歌曲路径
			 var spath=jsonarray[i].kusong.kuSongWords;//歌词路径
			 var songSinger=singer+"----"+song;
			 $("#ulAlbums").append('<li style="background-color:#333;" class="s_180691">'+
					 '<span style="margin-left:300px;font-size:20px;color:red">'+songSinger+'</span>'+
					 '<form action="save/download.do" method="post">'+
					 '<input id="fileName" type="hidden" name="fileName" value="'+path+'"/>'+
					 '<input type="submit" value="下载"></form>'+
					 '<a style="color:red;" href="'+address+'">查看歌词</a></li>');
		}
	}, "json");
}
