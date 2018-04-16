<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<HTML>
<HEAD>
<base href="/KuGou/">
<meta charset="UTF-8">
<TITLE>Mp3</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<style type="text/css">
		body {font-size: 12px;}
		#holeLrc li {list-style: none;}
		#holeLrc ul {text-align: center;}
		#marq{font-size: 20px;bankground-color:white;}	
</style>
</head>
<body>
	<header id="header" class="row navbar-fixed-top" style="border-bottom:1px solid #eee;">
    <div class="col-md-1"></div>
    <div class="text-center col-md-9">
        <div class="col-md-4"></div>
        <ul class="nav navbar-nav navbar-right">
            <li>
                <a href="javascript:void(0)" title="Click to change skin" onclick="listShow();" onmouseleave="listHide();">
                    点击换肤&nbsp;<span class="glyphicon glyphicon-triangle-bottom"></span>
                    <div id="SkinList" class="row" style="display:none;position:absolute;width:360px;height:400px;overflow:auto;margin-top:16px;">
                    </div>
                </a>
            </li>
        </ul>
    </div>
    
    <center class="center">	
        <embed id="Player" src="music/6039.mp3"  type="application/x-mplayer2"  width="360" height="64"></embed>
		<label id="playTime"></label> <br>
		<label id="lab" style="font-weight: bold;"></label> <br>
		<div id="lrcContent"></div>
		<div id="holeLrc"style="color: black; text-align: center; width: 500px; height: 500px;">
				<marquee id="marq" loop="1" direction="up" scrolldelay="1"scrollamount="4"  style="color: blue; width: 600px; overflow:hidden;"> </marquee>
		</div>
	</center>
</header>
<br>
<div class="row" style="margin-top:50px;height:540px;">
    <div id="left-box" class="col-md-3" style="height:540px;"></div>
</div>

</body>
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<!-- 加载歌词 -->
<script type="text/javascript" src="js/lrc.js"></script>
<script type="text/javascript" src="js/mp3.js"></script>
</html>