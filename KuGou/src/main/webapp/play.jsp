<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
<base href="/KuGou/">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="stylesheet" href="src/css/smusic.css"/>
<title>音乐播放页面</title>
</head>
<body>
<div class="grid-music-container f-usn">
    <div class="m-music-play-wrap">
        <div class="u-cover"></div>
        <div class="m-now-info">
            <h1 class="u-music-title"><strong>标题</strong><small>歌手</small></h1>
            <div class="m-now-controls">
                <div class="u-control u-process">
                    <span class="buffer-process"></span>
                    <span class="current-process"></span>
                </div>
                <div class="u-control u-time">00:00/00:00</div>
                <div class="u-control u-volume">
                    <div class="volume-process" data-volume="0.50">
                        <span class="volume-current"></span>
                        <span class="volume-bar"></span>
                        <span class="volume-event"></span>
                    </div>
                    <a class="volume-control"></a>
                </div>
            </div>
            <div class="m-play-controls">
                <a class="u-play-btn prev" title="上一曲"></a>
                <a class="u-play-btn ctrl-play play" title="暂停"></a>
                <a class="u-play-btn next" title="下一曲"></a>
                <a class="u-play-btn mode mode-list current" title="列表循环"></a>
                <a class="u-play-btn mode mode-random" title="随机播放"></a>
                <a class="u-play-btn mode mode-single" title="单曲循环"></a>
            </div>
        </div>
    </div>
    <div class="f-cb">&nbsp;</div>
    <div class="m-music-list-wrap"></div>
</div>
<script src="src/js/smusic.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
<script>
	
	$.get("style/findAllStyle", function(data) {
		var keytitle = 'title';
		var keysinger='singer';
		var keycover='cover';
		var keysrc='src';
		//alert(11);
		 //var jsonarray = eval(data);
		 //var singer=jsonarray[1].kuSinger.kuSingerName;
		// alert(singer)
		//alert(data[1].address+"data2222");
		//alert(data[1].kuSongName+"data[i][KuSong]");
		/* //歌手表的歌曲名 */
		 for(var i=0;i<data.length;i++){
			data[i][keytitle]=data[i].kuSong.kuSongName;
			data[i][keysinger]=data[i].kuSinger.kuSingerName;
			data[i][keycover]=data[i].kuSong.kuSongImg;
			data[i][keysrc]=data[i].address;
			delete data[i]['songplay'];
			delete data[i]['kunext'];
			delete data[i]['kusecond'];
			delete data[i]['detailtime'];
			
		} 
	
		new SMusic({
			musicList:data
		});
		
		
	}, "json");

 var  musicList = [
	
];

</script>


<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>
</html>
