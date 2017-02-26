loadSingerInfo();
function loadSingerInfo() {
	$.post("sing/getAllSing", function(data) {
		$("#list_head").empty();
		$("#chinaSingerContentLi").empty();
		for (i=0; i < data.length; i++) {
			$("#list_head").append('<li class="">'
			+'<a target="_blank" title="'+ data[i].kuSingerName +'" class="pic" href="./singermsg.jsp?singerid='+data[i].kuSingerId+'">'+
			'<img src="'+data[i].kuSingerImg+'" width="68" height="68"><i>'+i+'<em>st</em></i></a><strong>'+
			'<a onclick="sdnClick(12070)" href="./singermsg.jsp" title="'+data[i].kuSingerName+'">'+data[i].kuSingerName+'</a></strong></li>');
			
			$("#chinaSingerContentLi").append('<div class="cpt cptSmall"><a target="_blank" class="singerLink" href="http://www.kugou.com/mvweb/html/">'+
					'<img class="singerImg " src="'+data[i].kuSingerImg+'" width="38" height="38" loading="1">'+
					'<p class="cptBg"></p><div class="cptB"><p class="songListSinger">'+data[i].kuSingerName+'</p></div></a></div>');
		}
	}, "json");
}
