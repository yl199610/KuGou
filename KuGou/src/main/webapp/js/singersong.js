loadSingerSongInfo();
function loadSingerSongInfo() {
	var address=location.href.substring(location.href.indexOf("?"));
	var id=address.substr(10);
	$.post("style/singerSong?sid="+id, function(data) {
		var jsonarray = eval(data);
		$(".mbx").empty();
		$(".top").empty();
		$("#song_container").empty();
		$(".mbx").append('<div class="mbx">我的位置 &gt;<a title="歌手">歌手</a>'+
				'&gt; <span>'+jsonarray[0].kuSinger.kuSingerName+'</span></div>');
		$(".top").append('<img alt="薛之谦" src="'+jsonarray[0].kuSinger.kuSingerImg+'" height="142" width="142">'+
			     '<div class="clear_fix"><strong title="薛之谦">'+jsonarray[0].kuSinger.kuSingerName+'简介</strong>'+jsonarray[0].kuSinger.kuSingerCode+'</div>');
		for (i=0; i < data.length; i++) {
	         var songimage=jsonarray[i].kuSinger.kuSingerImg;//歌曲图片
			 var singer=jsonarray[i].kuSinger.kuSingerName;//歌手表
			 var song=jsonarray[i].kuSong.kuSongName;//歌曲表歌曲名
			 var address=jsonarray[i].kuSong.kuSongAddress;
			 $("#song_container").append('<li style="margin-top:4px;"><a href="javascript:;"hidefocus="true">'+
		     '<input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" '+
		     'value="薛之谦 - 演员|57B83EAF673D77EE21009CBD8FD05BD6|261000"><span title="分享" class="share" >'+
		     '</span><span title="播放" class="listen"></span><span class="num1">'+i+'</span>'+
		     '<span class="text"><i>'+song+'</i></span><audio style="Float:right;" src='+ address+' controls="controls"></audio></a></li>');
		}
	}, "json");
}