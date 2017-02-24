<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<HTML>
<HEAD>
<base href="/KuGou/">
<meta charset="UTF-8">
<TITLE>Mp3</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
		body {font-size: 12px;}
		#holeLrc li {list-style: none;}
		#holeLrc ul {text-align: center;}
		#marq{font-size: 20px;}
</style>
</head>
<body>
	<center>	
        <embed id="Player" src="music/6039.mp3" type="application/x-mplayer2"  width="360" height="64"></embed>
		<label id="playTime"></label> <br>
		<label id="lab" style="font-weight: bold;"></label> <br>
		<div id="lrcContent"></div>
		<div id="holeLrc"style="background: #3c3c3c; color: #FFF; text-align: center; width: 500px; height: 500px;">
				<marquee id="marq" loop="1" direction="up" scrolldelay="50"scrollamount="1" style="height: 500px;"> </marquee>
		</div>
	</center>
</body>
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<!-- 加载歌词 -->
<script type="text/javascript" src="js/lrc.js"></script>
<script type="text/javascript" src="js/mp3.js"></script>
</html>
