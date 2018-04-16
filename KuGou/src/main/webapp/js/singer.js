loadSingerInfo();
//前台的歌曲  mv显示
function loadSingerInfo() {
	$.post("sing/getAllSing", function(data) {
		$("#list_head").empty();
		$("#chinaSingerContentLi").empty();
		for (i=0; i < data.length; i++) {
			$("#list_head").append('<li class=""><a target="_blank" title="'+ data[i].kuSingerName +'" class="pic" href="./singermsg.jsp?singerid='+data[i].kuSingerId+'">'+
			'<img src="'+data[i].kuSingerImg+'" width="68" height="68"><i>'+i+'<em>st</em></i></a><strong>'+
			'<a onclick="sdnClick(12070)" href="./singermsg.jsp" title="'+data[i].kuSingerName+'">'+data[i].kuSingerName+'</a></strong></li>');
			
			$("#chinaSingerContentLi").append('<div class="cpt cptSmall"><a target="_blank" class="singerLink" href="./singermsg.jsp?singerid='+data[i].kuSingerId+'">'+
					'<img class="singerImg " src="'+data[i].kuSingerImg+'" width="38" height="38" loading="1">'+
					'<p class="cptBg"></p><div class="cptB"><p class="songListSinger">'+data[i].kuSingerName+'</p></div></a></div>');
		}
		
		for(i=0; i < 1; i++){
			$("#bigpic").append('<div class="cpt cptBig" style="float:right"> <p class="cptT"><span class="icon icon-select_icon"></span><span class="num">240.6万</span></p>'+
				'<img src="'+data[0].kuSingerImg+'" loading="1" class=" " height="325" width="325">'+
				'<div class="Cover" style="visibility: hidden;"><a target="_blank" href="http://www.kugou.com/yy/special/single/21492.html"> </a>'+
				'<div class="playBtn icon icon-play_s" data-index="0" data-id="21492" style="display: none;">播放</div></div>'+
				'<p class="cptBg"></p><div class="cptB"> <p class="songListName">这些好听的华语流行歌</p> <p class="songListSinger">陌人陌言</p></div> </div>'); 
		}		
		for(i=1; i < 3; i++){
			$("#mypic").append('<div class="cpt cptMid" style="margin-left:30px;"> <p class="cptT"><span class="icon icon-select_icon"></span><span class="num">240.6万</span></p>'+
				'<img src="'+data[i].kuSingerImg+'" loading="1" class=" " height="100" width="100">'+
				'<div class="Cover" style="visibility: hidden;"><a target="_blank" href="http://www.kugou.com/yy/special/single/21492.html"> </a>'+
				'<div class="playBtn icon icon-play_s" data-index="0" data-id="21492" style="display: none;">播放</div></div>'+
				'<p class="cptBg"></p><div class="cptB"> <p class="songListName">这些好听的华语流行歌</p> <p class="songListSinger">陌人陌言</p></div> </div>'); 
		}
	}, "json");
}
