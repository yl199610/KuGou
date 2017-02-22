<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="/KuGou/">
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet" href="easyui/themes/default/easyui.css">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<script src="index_files/collect.js"></script>
<script src="index_files/hm.js"></script>
<script type="text/javascript">window.startTime = new Date().getTime();var sendFristFlag = false;</script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<title>音乐 - 音乐总有新玩法</title>
<!-- <meta itemprop="images"
	content="http://static.kgimg.com/public/root/images/logo.png"> -->
<meta name="keywords" content="">
<meta name="description"
	content="酷狗音乐旗下最新最全的在线正版音乐网站，本站为您免费提供最全的在线音乐试听下载，以及全球海量电台和MV播放服务、最新音乐播放器下载。酷狗音乐 和音乐在一起。">
<!-- <link href="http://www.kugou.com/favicon.ico" rel="shortcut icon">
 -->
<link rel="stylesheet" href="index_files/index_5a81b3cb78.css">
<!-- <link rel="alternate" media="only screen and (max-width: 640px)"
	href="http://m.kugou.com/"> -->
<!--[if IE 6]>
    <script type="text/javascript" src="http://static.kgimg.com/public/root/javascripts/jslib/DD_belatedPNG_0.0.8a-min.js"></script>
    <script type="text/javascript">
    DD_belatedPNG.fix('.icon,.logoImg,.icon-play_s,.cptT,.Cover,.sliderPages a,.logo,.office-verification,.footerIcon a,#chinaSingerContent .cptB,.download a');
    </script>
    <![endif]-->
<link type="text/css" rel="stylesheet" href="css/index.css">

<script type="text/javascript" src="index_files/time.js"></script>
<script type="text/javascript" src="index_files/time_002.js"></script>
<script type="text/javascript" src="index_files/time_003.js"></script>
<script type="text/javascript" src="js/index.js"></script>
</head>

<body>
	<div class="mainPage">
		<div class="header">
			<h1 class="logo">
				<img src="index_files/logo.png" alt="">
			</h1>
			<span id="back"><a target="_blank" href="./login.jsp">[后台管理]</a></span>
			<div class="topNav fr">
				<ul>
					<li>
						<form onsubmit="return login()" id="userloginForm">
							<c:choose>
								<c:when test="${loginUser eq null }">
								<span><a target="_blank" href="./reg.jsp">注册</a></span>
									<label> 登录名 </label>
									<input name="kgUserName" required="required"
										placeholder="输入用户名" />
									<label> 密&#160;&#160;码 </label>
									<input type="password"  name="kgUserPwd" 
										required="required" placeholder="输入密码" />
									<input type="submit" class="login_sub" value="登录" />
									<label id="error"></label>
								</c:when>
								<c:otherwise>
									<label>欢迎<span style='color: green;'>${loginUser }</span>使用本网站&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href='javascript:void(0)' onclick='logout()'>注销用户</a>
								</c:otherwise>
							</c:choose>
						</form></li>
					<li><a target="_blank" href="./server.html">客服中心</a></li>
					<li><a target="_blank" href="./join.html">招贤纳士</a></li>
					<li><a target="_blank" href="./VIP.html">会员中心 </a></li>
				</ul>
			</div>
		</div>
		<div class="navWrap">
			<div class="nav">
				<ul class="homeNav">
					<li><a class="normal active" href="./index.html">首页</a></li>
					<li><a class="normal" href="./top.html">榜单</a></li>
					<li><a class="normal" id="productCenter"
						href="./download.html">下载客户端</a></li>
					<li class="more" id="more"><a href="" class="iconMore"
						id="showMore">更多</a></li>
				</ul>
				<ul class="secondMenu" id="secondMenu">
					<li><a href="./FM.html">电台</a></li>
					<li><a href="./MV.html">MV</a></li>
					<li><a href="./playlist.html">歌单</a></li>
					<li><a href="./singer.html">歌手</a></li>
				</ul>
				<ul class="subNav">
					<li><a target="_blank"
						href="http://fanxing.kugou.com/?action=spreadIndex&amp;id=3"
						class="icon icon-nav1">音乐直播</a></li>
					<li><a target="_blank" href="http://live.kugou.com/"
						class="icon icon-nav2">酷狗LIVE</a></li>
					<li><a target="_blank" href="http://www.kugou.com/imusic/"
						class="icon icon-nav3">音乐人</a></li>
					<li><a target="_blank" href="http://games.kugou.com/?f=7"
						class="icon icon-nav4">游戏</a></li>
					<li><a target="_blank" href="http://www.kugou.com/shop"
						class="icon icon-nav5">商城</a></li>

				</ul>
			</div>
		</div>
		<div class="sliderWrap"
			style="overflow: hidden; position: relative; width: 1349px;">
			<div class="banner" style="width: 1349px;">
				<ul>


					<li class="sliderItem" data-show="1"
						style="width: 1349px; position: absolute; display: none;"><a
						target="_blank" href="http://download.kugou.com/download/kugou_pc"
						title="换肤新体验 酷狗英雄主题"
						style="width: 100%; height: 500px; background: url(index_files/bg.png) no-repeat center top"
						data-src="http://imge.kugou.com/commendpic/20160713/20160713154957678313.jpg">

					</a></li>

					<li class="sliderItem" data-show="0"
						style="width: 1349px; position: absolute; display: list-item;">

						<a target="_blank"
						href="http://sdn.kugou.com/link.aspx?id=25058&amp;dl=1"
						title="繁星网 缔造星途神话"
						data-src="http://sdn.kugou.com/link.aspx?id=25058&amp;dl=1"
						style="width: 100%; height: 500px; background: url(index_files/2.jpg) no-repeat center top">

					</a>
					</li>

					<li class="sliderItem" data-show="0"
						style="width: 1349px; position: absolute; display: none;"><a
						target="_blank"
						href="http://sdn.kugou.com/link.aspx?id=42070&amp;dl=1"
						title="酷狗蓝牙耳机，听歌 通话 煲剧10小时"
						data-src="http://sdn.kugou.com/link.aspx?id=42070&amp;dl=1"
						style="width: 100%; height: 500px; background: url(index_files/bg.png) no-repeat center top">

					</a></li>

					<li class="sliderItem" data-show="0"
						style="width: 1349px; position: absolute; display: none;"><a
						target="_blank"
						href="http://tj.kugou.com/front/link.php?id=8012&amp;dl=1"
						title="酷狗Hifi播放器PC客戶端"
						data-src="http://tj.kugou.com/front/link.php?id=8012&amp;dl=1"
						style="width: 100%; height: 500px; background: url(index_files/bg.png) no-repeat center top">

					</a></li>

					<li class="sliderItem" data-show="1"
						style="width: 1349px; position: absolute; display: none;"><a
						target="_blank"
						href="http://sdn.kugou.com/link.aspx?id=45911&amp;dl=1"
						title="个人演唱会众筹"
						data-src="http://sdn.kugou.com/link.aspx?id=45911&amp;dl=1"
						style="width: 100%; height: 500px; background: url(index_files/2.jpg) no-repeat center top">

					</a></li>


				</ul>
			</div>
			<a href="javascript:;" class="icon sliderPrev icon-fouce-l"
				style="display: none;">prev</a><a href="javascript:;"
				class="icon sliderNext icon-fouce-r" style="display: none;">next</a>
			<div class="sliderPages" id="sliderPages">
				<div>
					<a href="javascript:;" class="">1</a><a href="javascript:;"
						class="active">2</a><a href="javascript:;" class="">3</a><a
						href="javascript:;" class="">4</a><a href="javascript:;" class="">5</a>
				</div>
			</div>
		</div>
		<div class="downloadBlur">
			<div class="downloadWrapper" id="downloadWrapper">
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="1349"
					height="500" id="blurred_meuw1qewh" class="bg-blur"
					viewBox="0 0 1349 500" preserveAspectRatio="none">
					<filter id="blur_meuw1qewh">
					<feGaussianBlur in="SourceGraphic" stdDeviation="20"></feGaussianBlur></filter>
					<image x="0" y="0" width="1349" height="500"
						externalResourcesRequired="true"
						style="filter:url(#blur_meuw1qewh)" preserveAspectRatio="none"></image></svg>
			</div>
			<div class="overlayer"></div>
		</div>
		<div class="download">
			<a href="http://download.kugou.com/download/kugou_pc" id="pcDown"
				onclick="_hmt.push(['_trackEvent', 'software', 'download', 'kugounew']);">下载PC版</a>
			<span class="line"></span> <a
				href="http://download.kugou.com/download/kugou_iphone"
				id="iphoneDown"
				onclick="_hmt.push(['_trackEvent', 'software', 'download', 'kugounew']);">下载iPhone版</a>
			<span class="line"></span> <a
				href="http://download.kugou.com/download/kugou_android"
				id="androidDown"
				onclick="_hmt.push(['_trackEvent', 'software', 'download', 'kugounew']);">下载Android版</a>
		</div>
		<div class="content" id="content">
			<div class="subContentM" id="secoundContent">
				<!-- 精选歌单 -->
				<div class="itemM selectSongList">
					<div class="itemTitle">
						<h3>
							<b>精选</b>歌单
						</h3>
						<a target="_blank"
							href="http://www.kugou.com/yy/html/special.html" class="more fr">更多</a>
					</div>
					<div class="itemContent">




						<div class="cpt cptBig">

							<p class="cptT">
								<span class="icon icon-select_icon"></span><span class="num">240.6万</span>
							</p>

							<img src="index_files/20161227172937415116.jpg"
								src="http://imge.kugou.com/soft/collection/480/20161227/20161227172937415116.jpg"
								_def="http://static.kgimg.com/public/root/images/rankdefalut.jpg"
								loading="1" class=" " height="325" width="325">

							<div class="Cover" style="visibility: hidden;">
								<a target="_blank"
									href="http://www.kugou.com/yy/special/single/21492.html"> </a>
								<div class="playBtn icon icon-play_s" data-index="0"
									data-id="21492" style="display: none;">播放</div>
							</div>
							<p class="cptBg"></p>
							<div class="cptB">
								<p class="songListName">这些好听的华语流行歌</p>
								<p class="songListSinger">陌人陌言</p>
							</div>
						</div>


						<div class="cpt cptMid">

							<p class="cptT">
								<span class="icon icon-select_icon"></span><span class="num">91.3万</span>
							</p>

							<img src="index_files/20161219160132618637.jpg"
								src="http://imge.kugou.com/soft/collection/150/20161219/20161219160132618637.jpg"
								_def="http://static.kgimg.com/public/root/images/rankdefalut.jpg"
								loading="1" class=" " height="160" width="160">

							<div class="Cover" style="visibility: hidden;">
								<a target="_blank"
									href="http://www.kugou.com/yy/special/single/121011.html">
								</a>
								<div class="playBtn icon icon-play_s" data-index="1"
									data-id="121011" style="display: none;">播放</div>
							</div>
							<p class="cptBg"></p>
							<div class="cptB">
								<p class="songListName">咕叽咕叽 享受休闲生活</p>
								<p class="songListSinger">东风风神AX5</p>
							</div>
						</div>


						<div class="cpt cptMid">

							<p class="cptT">
								<span class="icon icon-select_icon"></span><span class="num">385.0万</span>
							</p>

							<img src="index_files/20140722093637145016.jpg"
								src="http://imge.kugou.com/soft/collection/150/20140722/20140722093637145016.jpg"
								_def="http://static.kgimg.com/public/root/images/rankdefalut.jpg"
								loading="1" class=" " height="160" width="160">

							<div class="Cover">
								<a target="_blank"
									href="http://www.kugou.com/yy/special/single/19004.html"> </a>
								<div class="playBtn icon icon-play_s" data-index="2"
									data-id="19004">播放</div>
							</div>
							<p class="cptBg"></p>
							<div class="cptB">
								<p class="songListName">经典粤语情歌推荐</p>
								<p class="songListSinger">我是wolf</p>
							</div>
						</div>


						<div class="cpt cptMid">

							<p class="cptT">
								<span class="icon icon-select_icon"></span><span class="num">35.7万</span>
							</p>

							<img src="index_files/20161226152023736609.jpg"
								src="http://imge.kugou.com/soft/collection/150/20161226/20161226152023736609.jpg"
								_def="http://static.kgimg.com/public/root/images/rankdefalut.jpg"
								loading="1" class=" " height="160" width="160">

							<div class="Cover" style="visibility: hidden;">
								<a target="_blank"
									href="http://www.kugou.com/yy/special/single/121322.html">
								</a>
								<div class="playBtn icon icon-play_s" data-index="3"
									data-id="121322" style="display: none;">播放</div>
							</div>
							<p class="cptBg"></p>
							<div class="cptB">
								<p class="songListName">不能错过的网络情歌</p>
								<p class="songListSinger">浅浅</p>
							</div>
						</div>


						<div class="cpt cptMid">

							<p class="cptT">
								<span class="icon icon-select_icon"></span><span class="num">34.8万</span>
							</p>

							<img src="index_files/20141210163316964219.jpg"
								src="http://imge.kugou.com/soft/collection/150/20141210/20141210163316964219.jpg"
								_def="http://static.kgimg.com/public/root/images/rankdefalut.jpg"
								loading="1" class=" " height="160" width="160">

							<div class="Cover">
								<a target="_blank"
									href="http://www.kugou.com/yy/special/single/22463.html"> </a>
								<div class="playBtn icon icon-play_s" data-index="4"
									data-id="22463">播放</div>
							</div>
							<p class="cptBg"></p>
							<div class="cptB">
								<p class="songListName">有些歌词深入人心</p>
								<p class="songListSinger">口香糖</p>
							</div>
						</div>


					</div>
				</div>
				<!-- 精选歌单 -->
				<!-- 热门歌单 -->
				<div class="itemM HotSongList">
					<div class="itemTitle">
						<h3>
							<b>热门</b>榜单
						</h3>
						<a target="_blank" href="http://www.kugou.com/yy/html/rank.html"
							class="more fr">更多</a>
					</div>
					<div class="itemContent">

						<div class="listItem">
							<a href="http://www.kugou.com/yy/rank/home/1-22943.html">
								<div class="Cover">
									<div class="playBtn icon icon-play_s" data-id="22943">播放</div>
								</div> <span class="arrow icon-big_arrow_right"></span> <img
								src="index_files/T1KpY4BgxT1RCvBVdK.jpg"
								src="http://imge.kugou.com/v2/rank_cover/T1KpY4BgxT1RCvBVdK.jpg_240x240.jpg"
								_def="http://static.kgimg.com/public/root/images/rankdefalut.jpg"
								loading="1" class=" " height="98" width="98">
								<div class="list">
									<dl>
										<dt>酷音乐流行风向标</dt>


										<dd>1 . 本兮 - 有心无意</dd>



										<dd>2 . 本兮 - 我梦见我梦见我</dd>





									</dl>
								</div>
							</a>
						</div>

						<div class="listItem">
							<a href="http://www.kugou.com/yy/rank/home/1-6666.html">
								<div class="Cover">
									<div class="playBtn icon icon-play_s" data-id="6666">播放</div>
								</div> <span class="arrow icon-big_arrow_right"></span> <img
								src="index_files/T1M4h4BKKj1RCvBVdK.jpg"
								src="http://imge.kugou.com/v2/rank_cover/T1M4h4BKKj1RCvBVdK.jpg_240x240.jpg"
								_def="http://static.kgimg.com/public/root/images/rankdefalut.jpg"
								loading="1" class=" " height="98" width="98">
								<div class="list">
									<dl>
										<dt>酷狗飙升榜</dt>


										<dd>1 . 本兮 - 我梦见我梦见我</dd>



										<dd>2 . 本兮 - 有心无意</dd>





									</dl>
								</div>
							</a>
						</div>

						<div class="listItem">
							<a href="http://www.kugou.com/yy/rank/home/1-8888.html">
								<div class="Cover">
									<div class="playBtn icon icon-play_s" data-id="8888">播放</div>
								</div> <span class="arrow icon-big_arrow_right"></span> <img
								src="index_files/T1fHd4BXd_1RCvBVdK.jpg"
								src="http://imge.kugou.com/v2/rank_cover/T1fHd4BXd_1RCvBVdK.jpg_240x240.jpg"
								_def="http://static.kgimg.com/public/root/images/rankdefalut.jpg"
								loading="1" class=" " height="98" width="98">
								<div class="list">
									<dl>
										<dt>酷狗TOP500</dt>
										<dd>1 . 金南玲 - 逆流成河</dd>
										<dd>2 . 薛之谦 - 演员</dd>
									</dl>
								</div>
							</a>
						</div>
					</div>
					<!-- 热门歌单 -->
				</div>
			</div>
			<div class="hardWare">
				<a target="_blank"
					href="http://www.kugou.com/shop/product/kugouproduct/index.html">
					<img src="index_files/hardware.jpg" alt="" height="80"
					width="1000;">
				</a>
			</div>
			<div class="subContentM">
				<!-- 新歌首发 -->
				<div class="itemM newSongList">
					<div class="itemTitle hasBorder">
						<h3>
							<b>新歌</b>首发
						</h3>
						<div class="tabT" id="SongtabMenu">
							<!-- <span class="MenuItem" data="0">华语</span>
							<span class="MenuItem" data="1">欧美</span>
							<span class="MenuItem active" data="2">韩国</span>
							<span class="MenuItem" data="3">日本</span> -->
						</div>
					
					<div style=' float:right'><a href="./play.jsp" ><em>全部播放</em></a></div>
							
						
					</div>
					
					
					<div class="itemContent1" style="height: 800px;width: 650px;"><!--修改  -->
						
					</div>
					<div class="pages n">
						<a class="prev">上一页</a>
						<!-- <div class="page">
							<span class="currentPage">3</span>/<span class="allPage">3</span>
						</div> -->
						<a class="next disable">下一页</a>
					</div>
				</div>
				<!-- 新歌首发 -->
				<!-- 推荐Mv -->
				<div class="itemM albumList">
					<div class="itemTitle">
						<h3>
							<b>推荐</b>MV
						</h3>
						<a target="_blank" href="http://www.kugou.com/mvweb/html/"
							class="more fr">更多</a>
					</div>
					<div class="itemContent">



						<div class="cpt cptBigL">

							<a target="_blank"
								href="http://www.kugou.com/mvweb/html/mv_593042.html"> <img
								src="index_files/20161223101646866205.jpg"
								src="http://imge.kugou.com/mvhdpic/400/20161223/20161223101646866205.jpg"
								_def="http://static.kgimg.com/public/root/images/mv_defalut.jpg"
								loading="1" class=" " height="175" width="320">

								<div class="Cover">
									<div class="playBtn icon icon-play_b">播放</div>
								</div>
								<p class="cptBg"></p>
								<div class="cptB">
									<p class="songListName">若只如初见</p>
									<p class="songListSinger">杨紫</p>
								</div>
							</a>
						</div>


						<div class="cpt cptMidL">

							<a target="_blank"
								href="http://www.kugou.com/mvweb/html/mv_593024.html"> <img
								src="index_files/20161221235852242998.jpg"
								src="http://imge.kugou.com/commendpic/20161221/20161221235852242998.jpg"
								_def="http://static.kgimg.com/public/root/images/mv_defalut.jpg"
								loading="1" class=" " height="84" width="154">

								<div class="Cover">
									<div class="playBtn icon icon-play_b">播放</div>
								</div>
								<p class="cptBg"></p>
								<div class="cptB">
									<p class="songListName">琵琶行</p>
									<p class="songListSinger">成龙、魏允熙</p>
								</div>
							</a>
						</div>


						<div class="cpt cptMidL">

							<a target="_blank"
								href="http://www.kugou.com/mvweb/html/mv_593026.html"> <img
								src="index_files/20161221235626567243.jpg"
								src="http://imge.kugou.com/commendpic/20161221/20161221235626567243.jpg"
								_def="http://static.kgimg.com/public/root/images/mv_defalut.jpg"
								loading="1" class=" " height="84" width="154">

								<div class="Cover">
									<div class="playBtn icon icon-play_b">播放</div>
								</div>
								<p class="cptBg"></p>
								<div class="cptB">
									<p class="songListName">让我留在你身边</p>
									<p class="songListSinger">鹿晗</p>
								</div>
							</a>
						</div>


					</div>
				</div>
				<!-- 推荐Mv -->
			</div>
			<div class="forSaleM">
				<!-- <img src="images/ad_default.jpg"> -->
				<iframe scrolling="no" src="index_files/a.htm"
					_isrc="http://p.kugou.com/?id=20" height="100" frameborder="0"
					width="1000"></iframe>
			</div>
			<div class="subContentM limitHeight">
				<!-- 新歌首发 -->
				<div class="itemM HotRadio">
					<div class="itemTitle">
						<h3>
							<b>热门</b>电台
						</h3>
						<a target="_blank"
							href="http://www.kugou.com/fmweb/html/index.html" class="more fr">更多</a>
					</div>
					<div class="itemContent">
						<ul>
							<li><a target="_blank"
								href="http://www.kugou.com/fmweb/html/index.html?chanelId=73">
									<div class="Cover">
										<div class="playBtn icon icon-radio_play"
											style="display: none;"></div>
									</div>
									<div class="radioLogo">
										<img src="index_files/radio_1.jpg" class="  " loading="1"
											height="100" width="100">
									</div>
									<div class="radioKind">KTV必点曲</div>
									<div class="radioName">陈奕迅 - 婚礼的祝福</div>
							</a></li>
							<li><a target="_blank"
								href="http://www.kugou.com/fmweb/html/index.html?chanelId=3">
									<div class="Cover">
										<div class="playBtn icon icon-radio_play"
											style="display: none;"></div>
									</div>
									<div class="radioLogo">
										<img src="index_files/radio_2.jpg"
											src="http://static.kgimg.com/public/root//images/radio_2.jpg"
											class="  " loading="1" height="100" width="100">
									</div>
									<div class="radioKind">中文DJ</div>
									<div class="radioName">李佩玲 - 心有独钟(Live)</div>
							</a></li>
							<li><a target="_blank"
								href="http://www.kugou.com/fmweb/html/index.html?chanelId=1">
									<div class="Cover">
										<div class="playBtn icon icon-radio_play"
											style="display: none;"></div>
									</div>
									<div class="radioLogo">
										<img src="index_files/radio_3.jpg" class="  " loading="1"
											src="http://static.kgimg.com/public/root//images/radio_3.jpg"
											height="100" width="100">
									</div>
									<div class="radioKind">酷狗热歌</div>
									<div class="radioName">那英 - 放爱一条生路</div>
							</a></li>
							<li><a target="_blank"
								href="http://www.kugou.com/fmweb/html/index.html?chanelId=2">
									<div class="Cover">
										<div class="playBtn icon icon-radio_play"
											style="display: none;"></div>
									</div>
									<div class="radioLogo">
										<img src="index_files/radio_4.jpg"
											src="http://static.kgimg.com/public/root//images/radio_4.jpg"
											class="  " loading="1" height="100" width="100">
									</div>
									<div class="radioKind">网络红歌</div>
									<div class="radioName">斯琴高丽 - 情如花</div>
							</a></li>
							<li><a target="_blank"
								href="http://www.kugou.com/fmweb/html/index.html?chanelId=5">
									<div class="Cover">
										<div class="playBtn icon icon-radio_play"
											style="display: none;"></div>
									</div>
									<div class="radioLogo">
										<img src="index_files/radio_5.jpg"
											src="http://static.kgimg.com/public/root//images/radio_5.jpg"
											class="  " loading="1" height="100" width="100">
									</div>
									<div class="radioKind">经典</div>
									<div class="radioName">G.E.M.邓紫棋 - 泡沫 - DJ版</div>
							</a></li>
							<li><a target="_blank"
								href="http://www.kugou.com/fmweb/html/index.html?chanelId=276">
									<div class="Cover">
										<div class="playBtn icon icon-radio_play"
											style="display: none;"></div>
									</div>
									<div class="radioLogo">
										<img src="index_files/radio_6.jpg"
											src="http://static.kgimg.com/public/root//images/radio_6.jpg"
											class="  " loading="1" height="100" width="100">
									</div>
									<div class="radioKind">老情歌</div>
									<div class="radioName">索朗扎西 - 郎啊郎</div>
							</a></li>
							<li><a target="_blank"
								href="http://www.kugou.com/fmweb/html/index.html?chanelId=4">
									<div class="Cover">
										<div class="playBtn icon icon-radio_play"></div>
									</div>
									<div class="radioLogo">
										<img src="index_files/radio_7.jpg"
											src="http://static.kgimg.com/public/root//images/radio_7.jpg"
											class="  " loading="1" height="100" width="100">
									</div>
									<div class="radioKind">新歌</div>
									<div class="radioName">Owl City - Wolf Bite</div>
							</a></li>
							<li><a target="_blank"
								href="http://www.kugou.com/fmweb/html/index.html?chanelId=8">
									<div class="Cover">
										<div class="playBtn icon icon-radio_play"
											style="display: none;"></div>
									</div>
									<div class="radioLogo">
										<img src="index_files/radio_8.jpg"
											src="http://static.kgimg.com/public/root//images/radio_8.jpg"
											class="  " loading="1" height="100" width="100">
									</div>
									<div class="radioKind">动漫</div>
									<div class="radioName">刘若英、黄立行 - 分开旅行</div>
							</a></li>
							<li><a target="_blank"
								href="http://www.kugou.com/fmweb/html/index.html?chanelId=11">
									<div class="Cover">
										<div class="playBtn icon icon-radio_play"
											style="display: none;"></div>
									</div>
									<div class="radioLogo">
										<img src="index_files/radio_9.jpg"
											src="http://static.kgimg.com/public/root//images/radio_9.jpg"
											class="  " loading="1" height="100" width="100">
									</div>
									<div class="radioKind">轻音乐</div>
									<div class="radioName">GALA - 点豆豆</div>
							</a></li>
							<li><a target="_blank"
								href="http://www.kugou.com/fmweb/html/index.html?chanelId=63">
									<div class="Cover">
										<div class="playBtn icon icon-radio_play"
											style="display: none;"></div>
									</div>
									<div class="radioLogo">
										<img src="index_files/radio_10.jpg"
											src="http://static.kgimg.com/public/root//images/radio_10.jpg"
											class="  " loading="1" height="100" width="100">
									</div>
									<div class="radioKind">最爱成名曲</div>
									<div class="radioName">Alicia Keys - 28 Thousand Days</div>
							</a></li>
						</ul>
					</div>
				</div>
				<!-- 新歌首发 -->
				<!-- 推荐Mv -->
				<div class="itemM HotSinger">
					<div class="itemTitle">
						<h3>
							<b>热门</b>歌手
						</h3>
						<div class="tabT" id="tabMenu">
							<span class="active" data="0">华语</span><span data="1">欧美</span><span
								data="2">日韩</span><span data="3"><a class="more"
								href="http://www.kugou.com/yy/html/singer.html">更多</a></span>
						</div>
					</div>
					<div class="itemContent">
						<div>
							<ul class="firstUl clearFix" id="SingertabContent">
								<li class="item">
									<ul class="chinaSinger secondUl clearFix"
										id="chinaSingerContent">
										<li>

											<div class="cpt cptMid">

												<a target="_blank" class="singerLink"
													href="http://www.kugou.com/yy/singer/home/3060.html"> <img
													class="singerImg " src="index_files/20161121115938576.jpg"
													src="http://singerimg.kugou.com/uploadpic/pass/softhead/240/20161121/20161121115938576.jpg"
													_def="http://static.kgimg.com/public/root/images/singdefalut.jpg"
													loading="1">
													<div class="Cover">
														<div class="playBtn icon">播放</div>
													</div>
													<p class="cptBg"></p>
													<div class="cptB">
														<p class="songListSinger">薛之谦</p>
													</div>
												</a>
											</div>


											<div class="cpt cptMid">

												<a target="_blank" class="singerLink"
													href="http://www.kugou.com/yy/singer/home/86281.html">
													<img class="singerImg "
													src="index_files/20161012161017418.jpg"
													src="http://singerimg.kugou.com/uploadpic/pass/softhead/240/20161012/20161012161017418.jpg"
													_def="http://static.kgimg.com/public/root/images/singdefalut.jpg"
													loading="1">
													<div class="Cover">
														<div class="playBtn icon">播放</div>
													</div>
													<p class="cptBg"></p>
													<div class="cptB">
														<p class="songListSinger">庄心妍</p>
													</div>
												</a>
											</div>


											<div class="cpt cptSmall">

												<a target="_blank" class="singerLink"
													href="http://www.kugou.com/yy/singer/home/3520.html"> <img
													class="singerImg " src="index_files/20160929135052342.jpg"
													src="http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160929/20160929135052342.jpg"
													_def="http://static.kgimg.com/public/root/images/singdefalut.jpg"
													loading="1">
													<div class="Cover">
														<div class="playBtn icon">播放</div>
													</div>
													<p class="cptBg"></p>
													<div class="cptB">
														<p class="songListSinger">周杰伦</p>
													</div>
												</a>
											</div>


											<div class="cpt cptSmall">

												<a target="_blank" class="singerLink"
													href="http://www.kugou.com/yy/singer/home/420.html"> <img
													class="singerImg "
													src="index_files/20160923162150990653.jpg"
													src="http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160923/20160923162150990653.jpg"
													_def="http://static.kgimg.com/public/root/images/singdefalut.jpg"
													loading="1">
													<div class="Cover">
														<div class="playBtn icon">播放</div>
													</div>
													<p class="cptBg"></p>
													<div class="cptB">
														<p class="songListSinger">陈奕迅</p>
													</div>
												</a>
											</div>


											<div class="cpt cptSmall">

												<a target="_blank" class="singerLink"
													href="http://www.kugou.com/yy/singer/home/4107.html"> <img
													class="singerImg " src="index_files/20161227160952462.jpg"
													src="http://singerimg.kugou.com/uploadpic/pass/softhead/240/20161227/20161227160952462.jpg"
													_def="http://static.kgimg.com/public/root/images/singdefalut.jpg"
													loading="1">
													<div class="Cover">
														<div class="playBtn icon">播放</div>
													</div>
													<p class="cptBg"></p>
													<div class="cptB">
														<p class="songListSinger">本兮</p>
													</div>
												</a>
											</div>


										</li>
									</ul>
									<div class="tabC" id="subMenu">
										<a class="icon icon-s-dot icon-s_dot_hover" data="0"></a> <a
											class="icon icon-s-dot" data="1"></a> <a
											class="icon icon-s-dot" data="2"></a>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- 推荐Mv -->
			</div>
			<div class="forSaleM">
				<!-- <img src="images/ad_default.jpg"> -->
				<iframe scrolling="no" src="index_files/a_002.htm"
					_isrc="http://p.kugou.com/?id=21" height="100" frameborder="0"
					width="1000"></iframe>
			</div>
			<div class="partner itemM ">
				<div class="itemTitle">
					<h3>
						<b>合作</b>伙伴
					</h3>
				</div>
				<div class="itemContent">
					<div class="hz_logo clear_fix">
						<a href="javascript:;" hidefocus="true" title="" rel="nofollow"><img
							title="" src="index_files/partner01.jpg"
							src="http://static.kgimg.com/public/root//images/logo/partner01.jpg"
							alt="" loading="1" class=" " height="58" width="130"></a><a
							href="javascript:;" hidefocus="true" title="" rel="nofollow"><img
							title="EMI" src="index_files/partner02.jpg"
							src="http://static.kgimg.com/public/root//images/logo/partner02.jpg"
							alt="" loading="1" class=" " height="58" width="130"></a><a
							href="javascript:;" hidefocus="true" title="" rel="nofollow">
							<img title="SONY" src="index_files/partner03.jpg" alt=""
							class=" " height="58" width="130">
						</a><a href="javascript:;" hidefocus="true" title="" rel="nofollow"><img
							title="海蝶" src="index_files/partner04.jpg"
							src="http://static.kgimg.com/public/root//images/logo/partner04.jpg"
							alt="" loading="0" class=" " height="58" width="130"></a><a
							href="javascript:;" hidefocus="true" title="" rel="nofollow"><img
							title="丰华唱片" src="index_files/partner05.jpg"
							src="http://static.kgimg.com/public/root//images/logo/partner05.jpg"
							alt="" loading="111" class=" " height="58" width="130"></a><a
							href="javascript:;" hidefocus="true" title="" rel="nofollow"><img
							title="喜欢音乐" src="index_files/partner06.jpg" alt="" loading="1"
							class=" " height="58" width="130"></a><a href="javascript:;"
							hidefocus="true" title="" rel="nofollow"><img title="种子音乐"
							src="index_files/partner07.jpg" alt="" loading="1" class=" "
							height="58" width="130"></a><a href="javascript:;"
							hidefocus="true" title="" rel="nofollow"><img title="亚神娱乐音乐"
							src="index_files/partner08.jpg" alt="" loading="1" class=" "
							height="58" width="130"></a><a href="javascript:;"
							hidefocus="true" title="" rel="nofollow"><img title="bma"
							src="index_files/partner09.jpg" alt="" loading="1" class=" "
							height="58" width="130"></a><a href="javascript:;"
							hidefocus="true" title="" rel="nofollow"><img title="中唱总公司"
							src="index_files/partner10.jpg" alt="" loading="1" class=" "
							height="58" width="130"></a><a href="javascript:;"
							hidefocus="true" title="" rel="nofollow"><img title="中国好声音"
							src="index_files/partner11.jpg" alt="" loading="1" class=" "
							height="58" width="130"></a><a href="javascript:;"
							hidefocus="true" title="" rel="nofollow"><img title="孔雀唱片"
							src="index_files/partner12.jpg" alt="" loading="1" class=" "
							height="58" width="130"></a><a href="javascript:;"
							hidefocus="true" title="" rel="nofollow"><img title="简单快乐"
							src="index_files/partner13.jpg" alt="" loading="1" class=" "
							height="58" width="130"></a><a href="javascript:;"
							hidefocus="true" title="" rel="nofollow"><img title="鸟人艺术"
							src="index_files/partner14.jpg" alt="" loading="1" class=" "
							height="58" width="130"></a><a href="javascript:;"
							hidefocus="true" title="" rel="nofollow"><img title=""
							src="index_files/partner15.jpg" alt="" loading="1" class=" "
							height="58" width="130"></a><a href="javascript:;"
							hidefocus="true" title=""><img title="极韵文化"
							src="index_files/partner16.jpg" alt="" loading="1" class=" "
							height="58" width="130"></a><a href="javascript:;"
							hidefocus="true" title="" rel="nofollow"><img title="天浩盛世"
							src="index_files/partner17.jpg" alt="" loading="1" class=" "
							height="58" width="130"></a><a href="javascript:;"
							hidefocus="true" title="" rel="nofollow"><img title="太合麦田"
							src="index_files/partner18.jpg" alt="" loading="1" class=" "
							height="58" width="130"></a><a href="javascript:;"
							hidefocus="true" title="" rel="nofollow"><img title="东music"
							src="index_files/partner19.jpg" alt="" loading="1" class=" "
							height="58" width="130"></a><a href="javascript:;"
							hidefocus="true" title="" rel="nofollow"><img title="music"
							src="index_files/partner20.jpg" alt="" loading="1" class=" "
							height="58" width="130"></a><a href="javascript:;"
							hidefocus="true" title="" rel="nofollow"><img title="大国文化"
							src="index_files/partner05.jpg" alt="" loading="1" class=" "
							height="58" width="130"></a>
					</div>
				</div>
			</div>
			<div class="friendLink itemM ">
				<div class="itemTitle">
					<h3>
						<b>友情</b>链接
					</h3>
					<a target="_blank"
						href="http://www.kugou.com/about/friendLink.html" class="more fr">更多</a>
				</div>
				<div class="itemContent">


					<a target="_blank" href="http://www.lady8844.com/" title="爱美网">爱美网</a>

					<a target="_blank" href="http://ent.cntv.cn/" title="央视网综艺频道">央视网综艺频道</a>

					<a target="_blank" href="http://www.warsu.com/" title="华数唱片">华数唱片</a>

					<a target="_blank" href="http://baa.bitauto.com/" title="汽车论坛">汽车论坛</a>

					<a target="_blank" href="http://www.ithome.com/" title="IT之家">IT之家</a>

					<a target="_blank" href="http://www.25pp.com/" title="iPhone游戏">iPhone游戏</a>

					<a target="_blank" href="http://you.ctrip.com/" title="旅游攻略">旅游攻略</a>

					<a target="_blank" href="http://www.yswxcn.com/" title="悦声无限">悦声无限</a>

					<a target="_blank" href="http://www.vmall.com/" title="华为商城">华为商城</a>

					<a target="_blank" href="http://www.yue365.com/" title="365音乐网">365音乐网</a>

					<a target="_blank" href="http://www.xiazaiba.com/" title="软件下载">软件下载</a>

					<a target="_blank" href="http://www.manmankan.com/" title="漫漫看漫画">漫漫看漫画</a>

					<a target="_blank" href="http://www.9game.cn/" title="手机游戏">手机游戏</a>

					<a target="_blank"
						href="http://news.ycwb.com/2016-12/23/content_23854047.htm"
						title="广州安网2016">广州安网2016</a>



				</div>
			</div>
		</div>
		<div class="footerWrapper">
			<div class="footer">
				<div class="links">
					<a hidefocus="true" href="http://www.kugou.com/about/aboutus.html"
						target="_blank">关于酷狗</a> | <a hidefocus="true"
						href="http://www.kugou.com/about/adservice.html" target="_blank">广告服务</a>
					| <a hidefocus="true" target="_blank"
						href="http://www.kugou.com/about/copyRightGuide.html">版权指引</a>| <a
						hidefocus="true" target="_blank"
						href="http://www.kugou.com/about/protocol.html">用户服务协议</a> | <a
						hidefocus="true" target="_blank"
						href="http://www.kugou.com/company/partners.html">推广合作</a> | <a
						hidefocus="true" target="_blank"
						href="http://www.kugou.com/imusic/">酷狗音乐人</a> |<a hidefocus="true"
						target="_blank" href="http://tui.kugou.com/">酷狗音乐推</a> |<a
						hidefocus="true" href="http://www.kugou.com/job/hr/html/"
						target="_blank">招聘信息</a> | <a hidefocus="true"
						href="http://www.kugou.com/shop/help/serviceCenter"
						target="_blank">客服中心</a> | <a hidefocus="true"
						href="http://survey.kugou.com/default/index/i=40CD7B8437008E65E67D82D9044C15C99C2E699859F51338"
						target="_blank">用户体验提升计划</a>
				</div>
				<div class="copyright">
					<p>我们致力于推动网络正版音乐发展，相关版权合作请联系copyrights@kugou.com</p>
					<p>
						信息网络传播视听节目许可证 1910564 增值电信业务经营许可证粤B2-20060339 &nbsp;&nbsp;&nbsp;<a
							hidefocus="true" target="_blank"
							href="http://www.miitbeian.gov.cn/">粤ICP备09017694号-2</a><span
							class="footerIcon"><a target="_blank"
							href="http://sq.ccm.gov.cn/ccnt/sczr/service/business/emark/toDetail/E64D2439A71544C7B995FC0A53D8F965">&nbsp;&nbsp;&nbsp;&nbsp;</a></span>
					</p>
					<p>广播电视节目制作经营许可证（粤）字第01270号&nbsp;&nbsp;&nbsp;&nbsp;营业性演出许可证穗天演440106026&nbsp;&nbsp;&nbsp;&nbsp;穗公网监备案证第44010650010167</p>
					<p>
						Copyright&nbsp;&nbsp;©&nbsp;&nbsp;2004-2016 KuGou-Inc.All Rights
						Reserved <a hidefocus="true" class="office-verification"
							href="http://netadreg.gzaic.gov.cn/ntmm/WebSear/WebLogoPub.aspx?logo=440106106022006022000209"
							target="_blank"></a>
					</p>
				</div>
			</div>
		</div>
		<div class="scrollTop icon-scrollTop"
			style="right: 104px; margin-right: 0px; bottom: 50px; display: none;">
			<a href="#"></a>
		</div>
	</div>
	<script type="text/javascript" src="index_files/jquery_17c98da6fc.js"></script>
	<script type="text/javascript" src="index_files/common_3434cbe8e1.js"></script>
	<script type="text/javascript"
		src="index_files/background-blur_c4240fe81d.js"></script>
	<script type="text/javascript">
    var apmCollectData = apmCollectData || [];
        kugouC = utility.read("KuGoo"),
        kugou_id = kugouC.KugooID;
    var pageLoadedData = {
              "typeId": 10003, //记录id
              "errorMessageId": "",
              "errorMessage": "",
              "requestUrl": location.href,
              "os": 0,
              "timeType": 2,
              "timeLength": new Date().getTime() - window.startTime, //时长
              "userid": kugou_id ||-1
        };
        var domLoaded = [12,pageLoadedData,null,1];
            apmCollectData.push(domLoaded);
            new Image().src = "";
        try{
            newLogCount();
        }catch(ex){}  
    </script>
	<script type="text/javascript">
    var fristLoad={
        fSImgs : [],
        fSImgsCopy :[],
        init:function(){
            var _this = this,
                fs;
            var imgs = document.getElementsByTagName("img"),
                secoundContent = document.getElementById("secoundContent"),
                markImgs = secoundContent.getElementsByTagName("img");
                for(var i = 0, len = markImgs.length; i < len; i++){
                    _this.fSImgs.push(markImgs[i]);
                    _this.fSImgsCopy.push(markImgs[i]);
                }

/*                 for(var i = 0, len = _this.fSImgs.length; i < len; i++){
                    fs = _this.fSImgsCopy[i];
                    if(fs){
                        if(fs.complete){
                            _this.remove(fs);
                        } else {
                             fs.onload = function(){
                                _this.remove(this);
                            } 
                            fs.onerror = function(){
                                _this.remove(this);
                            }
                        }
                    }
                }  */
                
        },
        remove: function (elm){
            var _this = this,
                i, fs;
            for(i = 0; i < _this.fSImgs.length; ){
                fs = _this.fSImgs[i];
                if(fs == elm||fs == null){
                    _this.fSImgs.splice(i,1);//可能存在不明的null
                } else {
                    i++;
                }
            }
            // 确保加载的图片数据全部加载完发送统计
            if(_this.fSImgs.length == 0){
                _this.activeLog();
            }
        },
        activeLog:function(){
            var firstScreenLoadedEndTime = new Date().getTime();
            window.firstScreenLoaded = firstScreenLoadedEndTime - startTime;
            var firstScreenData = {
                "typeId": 10001,
                "errorMessageId": "",
                "errorMessage": "",
                "requestUrl": location.href,
                "os": 0,
                "timeType": 1,
                "timeLength": window.firstScreenLoaded,
                "userid": kugou_id || -1
            };
            var firstScreenLoadedArr = [12, firstScreenData, "", 1];
            apmCollectData.push(firstScreenLoadedArr);
            
            try {
                newLogCount()
            } catch(ex) {}

            /*负数，及超过10分钟数据上报*/
            if(firstScreenLoaded < 0 || firstScreenLoaded > (1000*60*10)){
                var subId = "home_firstScreenLoaded_beyond_10min";
                if(firstScreenLoaded < 0){
                    subId = "home_firstScreenLoaded_negative_num";
                }
                $.post('http://stat.www2.kugou.com/node/weblog/jsloger',{
                    "key" : subId,
                    "startTime" : startTime,
                    "endTime" : firstScreenLoadedEndTime,
                    "sendTime" : new Date().getTime(),
                    "ua" : navigator.userAgent,
                    "kugouid" : kugou_id || -1,
                    "url" : location.href,
                    "referrerUrl" : document.referrer || "null"
                });
            }
        }
    }
    fristLoad.init();
    </script>
	<script type="text/javascript">
            // 精选歌单
        var jsonSelect1 = '[{"Hash":"AC75EED1F632B1B034C97E940D376188","timeLen":232000,"FileName":"鹿晗 - 我们的明天"},{"Hash":"C74565C2EC0431458838931670560B22","timeLen":277000,"FileName":"杨坤 - 空城"},{"Hash":"4978E4B8B403D05A2460ABF8FD707C1D","timeLen":318000,"FileName":"林俊杰 - 她说"},{"Hash":"51BC8A0CA022D8AADCB26227DC5D1E97","timeLen":247000,"FileName":"郁可唯 - 时间煮雨"},{"Hash":"C2E41777303C2491E47B8B70011E1FEC","timeLen":288000,"FileName":"曲婉婷 - 没有什么不同"},{"Hash":"F803478E10F65BF24E9DEC7D4C778848","timeLen":277000,"FileName":"李行亮 - 愿得一人心"},{"Hash":"77D948C2B6FE8EC9A3C3C3A47EDF0EFE","timeLen":286000,"FileName":"陈奕迅 - 浮夸"},{"Hash":"0A62227CAAB66F54D43EC084B4BDD81F","timeLen":223000,"FileName":"周杰伦 - 稻香"},{"Hash":"AF8714B2944BA1A0D6745BBE931E8C22","timeLen":209000,"FileName":"孙燕姿 - 遇见"},{"Hash":"9DF23A4D34884F6212C81BF17812EA06","timeLen":227000,"FileName":"周杰伦 - 夜曲"},{"Hash":"5BDEECAE2BA1FB122E7BC73EB29DB230","timeLen":250000,"FileName":"周杰伦 - 龙卷风"},{"Hash":"5C602E72FF19A1093F79C98301543D8B","timeLen":256000,"FileName":"周杰伦 - 说好的幸福呢"},{"Hash":"08228AF3CB404E8A4E7E9871BF543FF6","timeLen":287000,"FileName":"陈奕迅 - 不要说话"},{"Hash":"BE8CBC6B7F328B76091522FC729301BB","timeLen":237000,"FileName":"周杰伦 - 青花瓷"},{"Hash":"2A9BBE8BA49BEF65E15967B3B1DE393A","timeLen":278000,"FileName":"杨宗纬 - 洋葱"},{"Hash":"D7C92044DFD292F1F4FF6C35AE1EDB7A","timeLen":253000,"FileName":"周杰伦 - 给我一首歌的时间"},{"Hash":"E8B5E26919C4F30812EE7F288BBADBE4","timeLen":263000,"FileName":"周杰伦 - 听妈妈的话"},{"Hash":"2E7B6C8C851DD2CC97DA9EEB13BE9680","timeLen":326000,"FileName":"张惠妹 - 趁早"},{"Hash":"C16D6FF96714E8AD90842F0C24C908F3","timeLen":285000,"FileName":"陈奕迅 - 淘汰"},{"Hash":"92C923A39635642A6D6BE6518074D6F6","timeLen":268000,"FileName":"张敬轩 - 断点"},{"Hash":"2E337E69AC38C35A01BF098E75CBB0EE","timeLen":285000,"FileName":"杨宗纬 - 空白格"},{"Hash":"C7D5B3C1DD01A627FEA86C9D256750DE","timeLen":297000,"FileName":"张惠妹 - 我可以抱你吗"},{"Hash":"702BE77685A9C991150A7011849B8E08","timeLen":299000,"FileName":"周杰伦 - 发如雪"},{"Hash":"081409D6F34F39CA5C89188587C81EA7","timeLen":250000,"FileName":"周杰伦 - 黑色毛衣"},{"Hash":"F2733533CB31E902146089D68B341055","timeLen":275000,"FileName":"周杰伦 - 枫"},{"Hash":"CC0C2FB0AE5BA6C7184D825F297B6552","timeLen":222000,"FileName":"王力宏 - 大城小爱"},{"Hash":"0A049DD07B5DD0AE135894D8ACFAB825","timeLen":243000,"FileName":"周杰伦 - 甜甜的"},{"Hash":"65DAF5758FE523FA1AA8B2DF32AFB267","timeLen":315000,"FileName":"周杰伦 - 东风破"},{"Hash":"2B616F6AB9F8655210FD823B900085CC","timeLen":280000,"FileName":"汪峰 - 春天里"},{"Hash":"9C391B46EB77535189AEB000F1386FFC","timeLen":282000,"FileName":"张靓颖 - 如果这就是爱情"},{"Hash":"3C7F93F91EC0FEF3B1DCDD3DF3CE514C","timeLen":285000,"FileName":"周杰伦 - 开不了口"},{"Hash":"50275C763A5DDCD22EEF8B4A9E751786","timeLen":258000,"FileName":"周杰伦 - 借口"},{"Hash":"BAEA36A340F0F8092EA8CE1C79EF3C3A","timeLen":298000,"FileName":"周杰伦 - 七里香"},{"Hash":"1E4038250D56A1BFAF3BB1ECB6730AAF","timeLen":235000,"FileName":"张敬轩 - 吻得太逼真"},{"Hash":"C8C92AB7B79307D5D12D6DD5D8B079B9","timeLen":301000,"FileName":"张宇 - 趁早"},{"Hash":"177A6F0B42C782B74F47B6D3FB1CF3E1","timeLen":246000,"FileName":"王力宏 - 我们的歌"},{"Hash":"459A2A37C60AC5264F58B568425A9A7D","timeLen":317000,"FileName":"张惠妹 - 听海"},{"Hash":"28F20B32E26F13E3D3F7A9FC6B714E67","timeLen":260000,"FileName":"王菲 - 红豆"},{"Hash":"F17ADEE3D1B3B97FBAB27597D845C650","timeLen":238000,"FileName":"周杰伦 - 搁浅"},{"Hash":"716540D279E37C98739F3D549C893642","timeLen":269000,"FileName":"周杰伦 - 晴天"},{"Hash":"245AF3AFC603160D1D3C97A18D3B0F5F","timeLen":264000,"FileName":"周杰伦 - 花海"},{"Hash":"EC0446CEAF7E5689FC544F691F437601","timeLen":262000,"FileName":"王力宏 - 唯一"},{"Hash":"EDA7F7692BF86649CA95DAFD8A9C4CA8","timeLen":267000,"FileName":"谭咏麟 - 一生中最爱"},{"Hash":"767E3090D918EA139509686637CCF043","timeLen":334000,"FileName":"周杰伦 - 安静"},{"Hash":"B5EF193732CBC02E11756BA308B3C72A","timeLen":262000,"FileName":"周杰伦 - 退后"},{"Hash":"D7E8B8AF9C926B0F63CAD2C05AD4B4C9","timeLen":231000,"FileName":"周杰伦 - 回到过去"},{"Hash":"6C09672F7F6957AABA10872B78BE8931","timeLen":258000,"FileName":"周杰伦 - 明明就"},{"Hash":"CDA3147781C21397295A191EB85AD59A","timeLen":297000,"FileName":"周杰伦 - 菊花台"},{"Hash":"F15D4B7750C52F60D5D534A8B9EEE240","timeLen":257000,"FileName":"周杰伦 - 星晴"},{"Hash":"77632CF070686FB09738173F7BBB9B8E","timeLen":264000,"FileName":"萧敬腾 - 新不了情"},{"Hash":"75FC2131BF29C8B4601B9415E378A25D","timeLen":287000,"FileName":"孙燕姿 - 我怀念的"},{"Hash":"100AE9DD5D3B955610B49214F85E7562","timeLen":288000,"FileName":"萧敬腾 - 会痛的石头"},{"Hash":"C390B8F5AE702D93E06F43A4D58E7A5B","timeLen":266000,"FileName":"关喆 - 想你的夜"},{"Hash":"0FFDB36D721E5A3354E2A232F24253A4","timeLen":297000,"FileName":"周杰伦 - 断了的弦"},{"Hash":"5C03442294365DC2D1D3A632AF1B01E8","timeLen":234000,"FileName":"周杰伦 - 爱在西元前"},{"Hash":"4E346E6D4B440EC06EAA3DE90872B1C4","timeLen":272000,"FileName":"陈奕迅 - 孤独患者"},{"Hash":"3C472DC06BA511300072A4AA99C61313","timeLen":243000,"FileName":"郑中基 - 无赖"},{"Hash":"5B0C912DBDC231184CEF99E28E75171B","timeLen":271000,"FileName":"周杰伦 - 白色风车"},{"Hash":"F95FF8BCD5876B3E1D27EADB62F1210F","timeLen":246000,"FileName":"王力宏 - 依然爱你"},{"Hash":"E5EE2B3DC86D5346AA96840450E408D6","timeLen":262000,"FileName":"李佳薇 - 煎熬"},{"Hash":"CB792DC28FB4ACAB3F5024C080A583C7","timeLen":273000,"FileName":"张信哲 - 从开始到现在"},{"Hash":"A444FCBC6F3003067D83C5CD83DB191B","timeLen":294000,"FileName":"陶喆 - 爱我还是他"},{"Hash":"A5231455590AA7CBAD4CADFB730F7950","timeLen":214000,"FileName":"曲婉婷 - 我的歌声里"},{"Hash":"C51C8D292A4AA87DEFE48C81DB145AF2","timeLen":265000,"FileName":"杨坤 - 无所谓"},{"Hash":"C26F227CD3775EC16879373F7AD4E023","timeLen":313000,"FileName":"张惠妹 - 如果你也听说"},{"Hash":"50D8855EDCFD82E27C8BC24DDD47DED6","timeLen":214000,"FileName":"杨千嬅 - 可惜我是水瓶座"},{"Hash":"1836737A10F2169736EC3024B0B85E53","timeLen":305000,"FileName":"曾一鸣 - 可惜阴晴圆缺"},{"Hash":"2882ED08FAF03BF386D6B9D1E49A3712","timeLen":259000,"FileName":"李代沫 - 我是不是你最疼爱的人"},{"Hash":"60772177F52C98CF641588327921B315","timeLen":252000,"FileName":"王力宏 - 脚本"},{"Hash":"0300C25C35C1242C0686E9140148467A","timeLen":271000,"FileName":"戴佩妮 - 怎样"},{"Hash":"F913E167FD141FF471C98C6C4112E2E3","timeLen":224000,"FileName":"张韶涵 - 隐形的翅膀"},{"Hash":"078D58DBD0B1462C460AC82A85A3BDFD","timeLen":327000,"FileName":"彭佳慧 - 鹿港小镇"},{"Hash":"ECB956D9AD23EC123617F63EC6E90A7F","timeLen":281000,"FileName":"林俊杰 - 醉赤壁"},{"Hash":"C19774C3B4DA7C42ABC795A012664B68","timeLen":322000,"FileName":"孙燕姿 - 我不难过"},{"Hash":"F31183001093A25D5E5B58E4139D6C6F","timeLen":287000,"FileName":"林俊杰 - 修炼爱情"},{"Hash":"E8A7229B2B1C749B3A62A526C04DC681","timeLen":371000,"FileName":"胡夏 - 那些年"},{"Hash":"11618B1B1946EE0A669F878BFDA198FE","timeLen":286000,"FileName":"张惠妹 - 解脱"},{"Hash":"15EB2C3EC1E6BF0A6A599DD590D58334","timeLen":252000,"FileName":"萧敬腾 - 原谅我"},{"Hash":"84047358739B5FD3F78F36E1C529A0E5","timeLen":229000,"FileName":"张惠妹 - 人质"},{"Hash":"DC3FB6F5FA5C9C3216FF3B2702CB032E","timeLen":281000,"FileName":"李代沫 - 到不了"},{"Hash":"28988AE9E0D4273CDA57D01EEB6F04F2","timeLen":306000,"FileName":"苏打绿 - 无与伦比的美丽"},{"Hash":"A8D7F4134F9AFE534F5261430E35706A","timeLen":275000,"FileName":"周杰伦 - 红尘客栈"},{"Hash":"994F6D6F2D53D3AB20055F39BD2ECFB9","timeLen":227000,"FileName":"齐秦 - 大约在冬季"},{"Hash":"F289A8CAC394665BE081D0A4AD5D759B","timeLen":275000,"FileName":"杨坤 - 牧马人"},{"Hash":"060654986BD5460F2E3C53BA5056D7B5","timeLen":284000,"FileName":"齐秦 - 夜夜夜夜"},{"Hash":"2FBD3B7FA71EAD2407237799A8985467","timeLen":252000,"FileName":"张惠妹 - 我要快乐?"},{"Hash":"09EE3DE1A1E09E4DECB1E9A1E32A7259","timeLen":262000,"FileName":"萧敬腾 - 王子的新衣"},{"Hash":"7E958D4D2D905A377CF19FE536FA19FC","timeLen":316000,"FileName":"许嵩 - 如果当时"},{"Hash":"3C325338F09FDFA7B0717BDAA0C55AF0","timeLen":237000,"FileName":"方大同 - 三人游"},{"Hash":"A47B00ACD59E2130D7DEE8DE4CCC260D","timeLen":205000,"FileName":"郑秀文 - 终身美丽"},{"Hash":"53B6C8BBA44F9A3CEF172CBF56348E6D","timeLen":292000,"FileName":"孙燕姿 - 逆光"},{"Hash":"FC8E52C4FA32E83F629ECA769AB25CD0","timeLen":193000,"FileName":"王菲 - 致青春"},{"Hash":"3622F61A3C439A2FAA5DA2817DDC5252","timeLen":354000,"FileName":"游鸿明 - 下沙"},{"Hash":"FC12A9171B001941BE98DDD5F17854D1","timeLen":250000,"FileName":"李玖哲 - 我会好好过"},{"Hash":"762CC01DF3EAE29B052DA09218B39BF2","timeLen":253000,"FileName":"南拳妈妈 - 下雨天"},{"Hash":"7C5ABA0C883C1A67266B9DFAE6FF7248","timeLen":245000,"FileName":"李健 - 贝加尔湖畔"},{"Hash":"4BF0412126AF6617E6865A54C8818400","timeLen":259000,"FileName":"方大同 - 特别的人"},{"Hash":"4150DC2A2163D634670508FC09E2171A","timeLen":300000,"FileName":"曾一鸣 - 慢"},{"Hash":"77A6E241528F650AAD338CB9F9B87E89","timeLen":277000,"FileName":"沙宝亮 - 暗香"},{"Hash":"104806FEC3B5AA2CCF4CD6A20278EE8B","timeLen":199000,"FileName":"许飞 - 夏天的味道"},{"Hash":"A8826CC802FDAFD4534C729F29225021","timeLen":223000,"FileName":"薛凯琪 - Better Me"},{"Hash":"9645F08C204FDCD7B3272FC179AAD6DC","timeLen":199000,"FileName":"许嵩 - 南山忆"},{"Hash":"53E62238FFCE9117D7F132CEF21A4475","timeLen":326000,"FileName":"周杰伦 - 轨迹"},{"Hash":"E1E78F03BAECE31F94F88789C1695A6C","timeLen":287000,"FileName":"林俊杰 - 记得"},{"Hash":"82A1E2ED54A07B173CDEAFD38DF63C4F","timeLen":236000,"FileName":"周杰伦 - 最长的电影"},{"Hash":"B17349ACAA6B236EE93F9FDA4BD71564","timeLen":283000,"FileName":"周杰伦 - 黑色幽默"},{"Hash":"96EB9F48AD913CEB3B5CECDC24F2E262","timeLen":220000,"FileName":"张国荣 - 我"},{"Hash":"29DC65D859A8986FE5EBD6A6C87A5491","timeLen":263000,"FileName":"周杰伦 - 彩虹"},{"Hash":"346CE6705AC1B28A4693718BCAD8ECE3","timeLen":330000,"FileName":"许茹芸 - 如果云知道"},{"Hash":"21B19491125751EBD65B79B0DE030A5A","timeLen":233000,"FileName":"孙燕姿 - 天黑黑"},{"Hash":"6E93BFFA9135D7E080FA96243A46DCAE","timeLen":293000,"FileName":"王力宏 - Forever Love"},{"Hash":"3980BC1BCC51F854EC7C15440BC97734","timeLen":254000,"FileName":"周杰伦 - 兰亭序"},{"Hash":"5F6F9FE0586447C808150CCE194395A7","timeLen":220000,"FileName":"陶喆 - 心乱飞"},{"Hash":"01B931EAC058E066CB2E5473D6C06741","timeLen":277000,"FileName":"王菲 - 流年"},{"Hash":"BF124F5ED4A96416AD987CF3846F1D50","timeLen":255000,"FileName":"陶喆 - 普通朋友"},{"Hash":"41DA4F6F72BA44E96F3CEE11C047452A","timeLen":233000,"FileName":"杨宗纬 - 初爱"},{"Hash":"B81F7FD18A3716AC3CDEA70A1E8244C6","timeLen":221000,"FileName":"杨宗纬 - 鸽子"},{"Hash":"1747556E18C2B8D998B7DDBC7D103088","timeLen":262000,"FileName":"张栋梁 - 北极星的眼泪"},{"Hash":"5CFDBA7F9B7ED6A12EFAB22A6BD2A095","timeLen":238000,"FileName":"薛凯琪 - 慕容雪"},{"Hash":"A94718E2C81D11A20B23CA65AB34A7B6","timeLen":263000,"FileName":"周杰伦 - 烟花易冷"},{"Hash":"256A5B72F4CEB5963DF92AA4E4DE9B35","timeLen":304000,"FileName":"周杰伦 - 印第安老斑鸠"},{"Hash":"E7DCBF10966529ADB0950045A560FD62","timeLen":256000,"FileName":"周杰伦 - 雨下一整晚"},{"Hash":"0CEDF221CA6AD22E7A18F5043423F967","timeLen":310000,"FileName":"薛之谦 - 你还要我怎样"},{"Hash":"6D00E9BEA5967F178864B18BBE1B6318","timeLen":288000,"FileName":"林俊杰 - 不流泪的机场"},{"Hash":"E5A1D331E87C36704E2AAA1E8AD38BBF","timeLen":244000,"FileName":"戴佩妮 - 你要的爱"},{"Hash":"CD404C02EBBAF1BED390E21323920892","timeLen":264000,"FileName":"蔡依林 - 我知道你很难过"},{"Hash":"8A5280FF92B4765023B0197EEEBEB005","timeLen":271000,"FileName":"黄义达 - 那女孩对我说"},{"Hash":"4EF352E36ECEA24EA08E929A05091F8C","timeLen":397000,"FileName":"张学友 - 秋意浓"},{"Hash":"5BA2BF1BE0E08F2DB0B5816A9D0E4742","timeLen":323000,"FileName":"范玮琪 - 那些花儿"},{"Hash":"6595D52167B767C6DF7C6AD0F914BEE5","timeLen":302000,"FileName":"朴树 - 那些花儿"},{"Hash":"B8CEA2115EC175E8F5DBCA2EAF87FECB","timeLen":248000,"FileName":"关喆 - 欲言又止"},{"Hash":"D84A3134A97CB5842E1B90C991344ACE","timeLen":316000,"FileName":"王力宏 - 落叶归根"},{"Hash":"6A90AC225974084B6EF1F442F48ECBBF","timeLen":217000,"FileName":"陶喆 - 寂寞的季节"},{"Hash":"FE063E4DADD968C2E6FFAD3923CC4BEB","timeLen":238000,"FileName":"陈奕迅 - 你的背包"},{"Hash":"9D7FE385F6C1A340E73F12CCE8A7390C","timeLen":271000,"FileName":"张玮 - 伤"},{"Hash":"7B7C8E80F6500A8E9BAB5839F6B27018","timeLen":321000,"FileName":"华晨宇 - 烟火里的尘埃"},{"Hash":"F310A0CB67D4122D2797F9E853D5A628","timeLen":316000,"FileName":"张信哲 - 宽容"},{"Hash":"C41717DF345AD9F6A30A39126CCC8719","timeLen":301000,"FileName":"刘畊宏 - 彩虹天堂"},{"Hash":"E67269E67FA2AAF0D6704A6D0D994029","timeLen":281000,"FileName":"周杰伦 - 爱你没差"},{"Hash":"F246C95BEFE402460E0F4635885B7485","timeLen":261000,"FileName":"王菲 - 天空"},{"Hash":"3CEA61EB3D5B2D706A91949068A67D51","timeLen":279000,"FileName":"王菲 - 矜持"},{"Hash":"5049F0E29B7EBB59F6B2816A38B0F3AE","timeLen":296000,"FileName":"王菲 - 传奇"},{"Hash":"38E67FCB1DA819E9ACB67A2D36FCF170","timeLen":274000,"FileName":"王菲 - 幽兰操"},{"Hash":"120C16F6FD5547D30417F330D9B7B356","timeLen":185000,"FileName":"王菲 - 南海姑娘"},{"Hash":"F3E0ADBDFE8B6035E9AEC490BC9CEB5E","timeLen":189000,"FileName":"王菲 - 打错了"},{"Hash":"374CEF3B7D5D94A0557819587F59FA11","timeLen":233000,"FileName":"刘欢 - 离不开你"},{"Hash":"406E0C046450D778D15883D6B3C93BC1","timeLen":205000,"FileName":"杨千嬅 - 假如让我说下去"},{"Hash":"5D0828B392EBE09420B8C740C802EB63","timeLen":204000,"FileName":"杨千嬅 - 大城大事"},{"Hash":"3B8484027F7FAC3C608FCEAFCD7D211C","timeLen":201000,"FileName":"王菲 - 光之翼"},{"Hash":"2A31B619E4746315635C2843EC12F508","timeLen":300000,"FileName":"曾一鸣 - 笙歌"},{"Hash":"040430EB04DFA4A07BAA7AD1705D91A9","timeLen":268000,"FileName":"王菲 - 约定"},{"Hash":"2C7BC673FEF5714A7C407A536ADB598F","timeLen":240000,"FileName":"王菲 - 美错"},{"Hash":"A39A90B0131BF74CFC1C33F53DADF06B","timeLen":231000,"FileName":"王菲 - 当时的月亮"},{"Hash":"448830FF16E3F770B503D54F842DE9B1","timeLen":283000,"FileName":"张敬轩 - 不吐不快"},{"Hash":"791901A13297AF1C6E1B842BC204B7C4","timeLen":250000,"FileName":"王菲 - 扫兴"},{"Hash":"BCBA6D1DF315B3D5200A6A573C5317C6","timeLen":243000,"FileName":"王菲 - 分裂"},{"Hash":"D755481E8AD9649A45CA12572473315C","timeLen":235000,"FileName":"王菲 - 末日"},{"Hash":"EAADE77405DF0DEE5842354B037CE730","timeLen":223000,"FileName":"王菲 - 堕落"},{"Hash":"B82441ED6512A5C30CE13F1E903DFD02","timeLen":153000,"FileName":"王菲 - 无常"},{"Hash":"EC7FCFA93A37B4828578705BD43E1F90","timeLen":215000,"FileName":"王菀之 - 我真的受伤了"},{"Hash":"834547CEABC6E788FF4555ED5BB77101","timeLen":279000,"FileName":"王力宏 - 你不知道的事"},{"Hash":"6100900FCFDB742CFF7242E81AB32390","timeLen":299000,"FileName":"纪如璟 - 一江水"},{"Hash":"6B13437501DCA51E290035EE2E92986C","timeLen":259000,"FileName":"曾一鸣 - 把你还给我"},{"Hash":"EDA86812C9A0CBAD66627CDF08DC1243","timeLen":336000,"FileName":"曾一鸣 - 爱与不爱之间"},{"Hash":"A7FD8CA70E13647FD0481989CE47420C","timeLen":290000,"FileName":"曾一鸣 - 神通"},{"Hash":"F5D44BA07B051BFC701FB99C1B9D48C6","timeLen":265000,"FileName":"蔡健雅 - 路口"},{"Hash":"A2DBF36818E97DFBA21F9AF7A8D52A92","timeLen":297000,"FileName":"陶喆 - 暗恋"},{"Hash":"67A498CC5C2F9D83F663751530A57E86","timeLen":253000,"FileName":"曲婉婷 - 我为你歌唱"},{"Hash":"8FB11B46BBE1ED6AA271F9742DC13467","timeLen":294000,"FileName":"陶喆 - 小镇姑娘"},{"Hash":"A7AFDBEBE1ACC1350B1EA1282CB407DB","timeLen":241000,"FileName":"张学友 - 定风波"},{"Hash":"548C1065CB68216DFD52DB508072A392","timeLen":352000,"FileName":"姜育恒 - 跟往事干杯"},{"Hash":"BF14B187D1F87C9D6F472D2E42F9F41B","timeLen":224000,"FileName":"曾一鸣 - 当爱已成往事"},{"Hash":"4157AA85978941CABED1C9A3F686B0A6","timeLen":169000,"FileName":"叶蓓 - B小调雨后"},{"Hash":"F8B1C6A6EC43BAFA729621769AB8C276","timeLen":267000,"FileName":"林志炫 - 输了你赢了世界又如何"},{"Hash":"CD971BF6EBDDB6879EE0CEDDC9C02C13","timeLen":272000,"FileName":"江美琪 - 那年的情书"},{"Hash":"3AC3950629AE37C4E68E7FD2240F1C09","timeLen":314000,"FileName":"罗大佑 - 恋曲1990"},{"Hash":"2F4FD11A0D693BF657B8D3731C8F937A","timeLen":277000,"FileName":"李代沫 - 简单的事"},{"Hash":"D13D0A4BC46C110CB15A4A26D6187041","timeLen":223000,"FileName":"萧敬腾 - 寂寞还是你"},{"Hash":"4902C02A8C0C488DEB71E6726206F566","timeLen":265000,"FileName":"萧敬腾 - 爱过了头"},{"Hash":"E25F802A8E8ABBB368C8A92D5808F911","timeLen":240000,"FileName":"萧敬腾 - 海芋恋"},{"Hash":"223C5591C8C8E494730C55FB504BFF5E","timeLen":273000,"FileName":"苏打绿 - 小情歌"},{"Hash":"91B99F9AEB1F9B479B29EEC8463977B6","timeLen":263000,"FileName":"苏打绿 - 喜欢寂寞"},{"Hash":"AC3574F662F35B16E882CC22B2824681","timeLen":274000,"FileName":"苏打绿 - 你在烦恼什么"},{"Hash":"F7FA8DF503A2F66962016C29DAB29768","timeLen":304000,"FileName":"苏打绿 - 他夏了夏天"},{"Hash":"6947BCD7791FFE1B179D5CF15C91A6E1","timeLen":284000,"FileName":"苏打绿 - 当我们一起走过"},{"Hash":"33052004B1C629B70EC4913DE027F7D9","timeLen":343000,"FileName":"杨宗纬 - 矜持"},{"Hash":"D6A4E806EE95FCA3590129CF56858CCA","timeLen":286000,"FileName":"黄龄 - High歌"},{"Hash":"CC1CE74EC62EB841792DBDD566ADAAAA","timeLen":228000,"FileName":"黄龄 - 痒"},{"Hash":"142CA9A2C60FB91A2934387BDEF73E5F","timeLen":291000,"FileName":"黄龄 - 一个人想你"},{"Hash":"B1C034DDB17495A2ED79DE920B0273FC","timeLen":249000,"FileName":"黄龄 - 红眼睛"},{"Hash":"1DF41739A900142E1DECD2C8162AE894","timeLen":354000,"FileName":"黄龄 - 夜来香"},{"Hash":"2187F7FBF972F8115A168CAB10C12FCC","timeLen":294000,"FileName":"李健 - 传奇"},{"Hash":"5988F4E9E1B60A3715F5FF7712E99143","timeLen":260000,"FileName":"李治廷 - 岁月轻狂"},{"Hash":"1783F37D386414358AD3806B9719BE67","timeLen":295000,"FileName":"林志炫 - 离人"},{"Hash":"88FE5588C887FCC0A74B6121C7C46CD2","timeLen":237000,"FileName":"南拳妈妈 - 牡丹江"},{"Hash":"7BAB85180E340B4AA101B91F3BE572DC","timeLen":212000,"FileName":"南拳妈妈 - 橘子汽水"},{"Hash":"C1D342D4FC14F3DF41A81B243849CD3B","timeLen":257000,"FileName":"南拳妈妈 - 人鱼的眼泪"},{"Hash":"EF9E74341BA2FA7AD8819053779440EE","timeLen":257000,"FileName":"彭佳慧 - 月儿弯"},{"Hash":"CB5A6385229455AB230D0A8BB02EA3F4","timeLen":233000,"FileName":"齐秦 - 张三的歌"},{"Hash":"81D855ABCD51515406311B2FFFADB015","timeLen":293000,"FileName":"齐秦 - 悬崖"},{"Hash":"C88D1637F21797E4D530022926384E1E","timeLen":276000,"FileName":"孙燕姿 - 比较幸福"},{"Hash":"18ACBF7FE81B4574A69940CDB49C695D","timeLen":201000,"FileName":"太阳部落 - 大凉山"},{"Hash":"317705B51D03ECD0255924EABD043E96","timeLen":250000,"FileName":"太阳部落 - 带我到山顶"},{"Hash":"CF39494F46FDF23E80063F2CB8FE7DE0","timeLen":264000,"FileName":"太阳部落 - 一朵云"},{"Hash":"986CBB5BD88A5F737903844EE267E98F","timeLen":261000,"FileName":"陶喆 - Susan说"},{"Hash":"4623435037717CE4386F31D7A0830706","timeLen":255000,"FileName":"陶喆 - 黑色柳丁"},{"Hash":"8DEEBDB6CEB1CEF0B2E3AAE6F05AB7FF","timeLen":181000,"FileName":"王菲 - 浮躁"},{"Hash":"A414AE8C2B5D5C459689AC4EBF7467E5","timeLen":227000,"FileName":"朴树 - 白桦林"},{"Hash":"1528ABDEC92C8C552317F38F7AEEF875","timeLen":294000,"FileName":"朴树 - 生如夏花"},{"Hash":"2A881F667833556173876B3F8933962A","timeLen":223000,"FileName":"朴树 - 且听风吟"},{"Hash":"2AEF069C4B7ED055B75CC271DEE6D900","timeLen":202000,"FileName":"朴树 - 在希望的田野上"},{"Hash":"D83C0ACEC4D6ED8F165AE10AB3818DB5","timeLen":339000,"FileName":"朴树 - 火车开往冬天"},{"Hash":"3D720F53CA5D2F875A232A89FE2B86D3","timeLen":321000,"FileName":"许美静 - 城里的月光"},{"Hash":"105CDBCE75F180D5588565993C055483","timeLen":319000,"FileName":"杨坤 - 今夜二十岁"},{"Hash":"BA03180E3728F923C9DBF1457739E5BA","timeLen":251000,"FileName":"庾澄庆 - 静静的"},{"Hash":"4631001AE96917B6F68A474814182F41","timeLen":284000,"FileName":"张惠妹 - 我最亲爱的"},{"Hash":"8EBBF075C9D883EB276E1F414278CBA9","timeLen":303000,"FileName":"张惠妹 - 也许明天"},{"Hash":"39E07A2E8391801C4BBE96F851B5C8F4","timeLen":432000,"FileName":"张靓颖 - 画心"},{"Hash":"E78DD99E44382EB869EE6655301C271C","timeLen":299000,"FileName":"张学友 - 吻别"},{"Hash":"6DC76A8E46E89CFECBA55BB0E8914FD0","timeLen":274000,"FileName":"张靓颖 - G大调的悲伤"},{"Hash":"DE5E88E534AF0BCDBBD5A6116073A67E","timeLen":296000,"FileName":"郑钧 - 花儿为什么这样红"},{"Hash":"F5C3625DB4C2DA4CC3809D39E0601439","timeLen":269000,"FileName":"萧风 - 贝多芬的悲伤"},{"Hash":"0DD8BAED2939D8F2B301C25F05DDFA01","timeLen":271000,"FileName":"许飞 - 左半边翅膀"},{"Hash":"F45C9F4E855709A4C63190E10103F3E2","timeLen":258000,"FileName":"许飞 - 那年夏天"}]',
            DataSelect1 = JSON.parse(jsonSelect1),

            jsonSelect2 = '[{"Hash":"8C5A30FBC37FA9847EDCDE907544F76B","timeLen":254000,"FileName":"孙燕姿 - 第一天"},{"Hash":"A5A39394D622B12DE4767C290C647443","timeLen":271000,"FileName":"孙燕姿 - 咕叽咕叽"},{"Hash":"75C3BF7DD99785D031473E62DFD8858B","timeLen":296000,"FileName":"苏打绿 - 简单生活"},{"Hash":"72021361D55E3684BB6509FCDCA41E98","timeLen":228000,"FileName":"韦礼安 - 好天气"},{"Hash":"886C25FB64BB099DF8544F093B8A3963","timeLen":261000,"FileName":"张韶涵 - 乐园"},{"Hash":"74D0F4E954EDF825BE67736492DF3441","timeLen":239000,"FileName":"郭静 - 在树上唱歌"},{"Hash":"3C3D93A5615FB42486CAB22024945264","timeLen":216000,"FileName":"周杰伦 - 告白气球"},{"Hash":"F4D2ABCE042EB5CC6F5A4250A455C0DC","timeLen":263000,"FileName":"孙燕姿 - Honey Honey"},{"Hash":"CAD70AD12A6C15F93BF753B2A8B04C51","timeLen":216000,"FileName":"陈绮贞 - 静静的生活"},{"Hash":"9ABE674BF23709AD61D7D3E6B54C27EC","timeLen":225000,"FileName":"蔡健雅 - 便利贴"},{"Hash":"C150F5398A217103A01103069763F51C","timeLen":180000,"FileName":"苏打绿 - 日光"},{"Hash":"954F116B7C729E1618C095267B4BDC8D","timeLen":200000,"FileName":"弦子 - 幸福乐活"},{"Hash":"50DA06CD1376BB1F665607716B351043","timeLen":247000,"FileName":"黄雅莉 - 蝴蝶泉边"},{"Hash":"BBD634F955840FF412E3A2D380F975D3","timeLen":284000,"FileName":"徐佳莹 - 在旅行的路上"},{"Hash":"E4B8DD197921711771D770C106863E0E","timeLen":212000,"FileName":"孙燕姿 - 直来直往"}]',
            DataSelect2 = JSON.parse(jsonSelect2);

            jsonSelect3 = '[{"Hash":"2B43C0CA270EC4363D81DEC6C73C3150","timeLen":204000,"FileName":"陈奕迅 - 明年今日"},{"Hash":"C8527895321D9C0268B00F8514BADCF3","timeLen":250000,"FileName":"张学友、汤宝如 - 相思风雨中"},{"Hash":"5DB6939DD434B34F8F5AE6ECFAF02641","timeLen":261000,"FileName":"王菲 - 容易受伤的女人"},{"Hash":"3C472DC06BA511300072A4AA99C61313","timeLen":243000,"FileName":"郑中基 - 无赖"},{"Hash":"5FB22F0FF023A669B7DB53C5F2A074EC","timeLen":215000,"FileName":"陈百强 - 偏偏喜欢你"},{"Hash":"E79DEE119E682C43668B782DEE5E5F88","timeLen":237000,"FileName":"陈奕迅 - 一丝不挂"},{"Hash":"508789AF3F2DC9A382444876634F95F3","timeLen":259000,"FileName":"梁汉文 - 七友"},{"Hash":"18D0121B19A92488DBA7425331831E35","timeLen":276000,"FileName":"张学友 - 饿狼传说"},{"Hash":"D799AF7F7689FA45C8EAF94582D8374F","timeLen":259000,"FileName":"陈奕迅 - 富士山下"},{"Hash":"DC2D3196098CBA9DF33C9F6A7D34B2EC","timeLen":182000,"FileName":"卢巧音、王力宏 - 好心分手"},{"Hash":"50D8855EDCFD82E27C8BC24DDD47DED6","timeLen":214000,"FileName":"杨千嬅 - 可惜我是水瓶座"},{"Hash":"4E20AC63C80149CE52FDF8513CC8ACC6","timeLen":276000,"FileName":"谢安琪 - 钟无艳"},{"Hash":"435B50137E16526DFF5BB10DA13A2A4D","timeLen":267000,"FileName":"张学友 - 旧情绵绵"},{"Hash":"E98CCF873CAD42D850FDBC72C71255C6","timeLen":181000,"FileName":"汪明荃 - 万水千山总是情"},{"Hash":"FD2E0859A5A07DBA880027D62B7A906A","timeLen":234000,"FileName":"张敬轩 - 酷爱"},{"Hash":"A47B00ACD59E2130D7DEE8DE4CCC260D","timeLen":205000,"FileName":"郑秀文 - 终身美丽"},{"Hash":"3D2A49AC0B885D7DFD28C8546895A06C","timeLen":207000,"FileName":"杨千嬅 - 小城大事"},{"Hash":"10C9D9E841C05655FDAA43B906BAB4CA","timeLen":172000,"FileName":"草蜢 - 失恋"},{"Hash":"3DDD0B5ED1D4F48BBB2FAAF8C018157E","timeLen":252000,"FileName":"黎明 - 今夜你会不会来"},{"Hash":"80F9AC76FEEC588F4B6C7C29CDF18FD3","timeLen":199000,"FileName":"许志安 - 烂泥"},{"Hash":"2A543DE2A29BC053E619917866123A0E","timeLen":218000,"FileName":"侧田 - 命硬"},{"Hash":"3B1966DBF4A736BBDD2E19D2F6E034A4","timeLen":252000,"FileName":"陈慧娴 - 红茶馆"},{"Hash":"FDE142E4C3B0B97F345BC3AD2D79183D","timeLen":267000,"FileName":"周慧敏 - 最爱"},{"Hash":"A8F413A792FD72D76CF9AF572D8080D7","timeLen":228000,"FileName":"Boy z、Twins - 死性不改"},{"Hash":"D29F3A7AB4871A1697701E81C426103E","timeLen":243000,"FileName":"张智霖 - 十指紧扣"},{"Hash":"BF354CC5A07EC95B0C184AE8B42424EC","timeLen":234000,"FileName":"古巨基、周慧敏 - 爱得太迟"},{"Hash":"712F66EC05F211DA6D2DCEE3842BC3A2","timeLen":228000,"FileName":"陈百强 - 今宵多珍重"},{"Hash":"3BC5C0A966B571AEEBE6F17049A05DCC","timeLen":244000,"FileName":"苏永康 - 越吻越伤心"},{"Hash":"435788F1B9D0A4C68C584C1338054C11","timeLen":272000,"FileName":"叶倩文 - 情人知己"},{"Hash":"2560BE567E046CFECA721DC3D583B1B1","timeLen":259000,"FileName":"周慧敏 - 痴心换情深"},{"Hash":"E68E18C72C1E01761CEE998EC01B549E","timeLen":234000,"FileName":"谭咏麟 - 爱情陷阱"},{"Hash":"297BBEB76F6EBF745BDE6FFBC880FF38","timeLen":295000,"FileName":"张学友 - 爱得比你深"},{"Hash":"FE119FF0D287B60FC1A3CC281BB33F6D","timeLen":194000,"FileName":"张国荣 - 无心睡眠"},{"Hash":"1F5131CF9131A73913B26F8C4C85C06B","timeLen":190000,"FileName":"李克勤 - 合久必婚"},{"Hash":"9EA9AF1C9B6298143F9B70F8443F18D3","timeLen":300000,"FileName":"陈慧娴 - 千千阙歌"},{"Hash":"B7FD64F2493AFC9A7FCF8F063BE61E0C","timeLen":235000,"FileName":"叶倩文 - 祝福"},{"Hash":"D31723EB0E546E884CE1FE16EE88475C","timeLen":251000,"FileName":"谭咏麟 - 爱多一次 痛多一次"},{"Hash":"08E3C251998B9F4D3D553888CDCB3E96","timeLen":301000,"FileName":"林子祥 - 敢爱敢做"},{"Hash":"2A73DB6C72AC625E0D2711FB57DC22BD","timeLen":266000,"FileName":"陈小春 - 献世"},{"Hash":"7F697705CE4990A818E5F25EB4E96C2B","timeLen":232000,"FileName":"袁凤瑛 - 天若有情"},{"Hash":"E529B1477B0F121FCC7E3C08B4040B63","timeLen":227000,"FileName":"Twins - 恋爱大过天"},{"Hash":"406E0C046450D778D15883D6B3C93BC1","timeLen":205000,"FileName":"杨千嬅 - 假如让我说下去"},{"Hash":"8000D4E3C31AA030656D0BD494335590","timeLen":187000,"FileName":"陈淑桦 - 流光飞舞"},{"Hash":"91B023D1FF9C519535A250983A19192A","timeLen":222000,"FileName":"黎明 - 情深说话未曾讲"},{"Hash":"124FA8EFFD76292A318425ADE8009BA3","timeLen":272000,"FileName":"叶倩文 - 秋去秋来"},{"Hash":"938377B002F8ED9316968E0C5DE8901D","timeLen":195000,"FileName":"周慧敏 - 天荒爱未老"},{"Hash":"8CDAC4668C4C15122466CC2E7E57045E","timeLen":190000,"FileName":"Twins - 多谢失恋"},{"Hash":"EA14DDBF3CD9FE7E9A3420B5C9829C15","timeLen":260000,"FileName":"林忆莲 - 激情"}]',
            DataSelect3 = JSON.parse(jsonSelect3),

            jsonSelect4 = '[{"Hash":"0B9C825DAC0EB1066DC74D06CC0D201F","timeLen":234000,"FileName":"晨熙 - 爱是你给我的毒"},{"Hash":"CE625C5198B37F3EC07E319E6A6F41C1","timeLen":227000,"FileName":"许嵩 - 断桥残雪"},{"Hash":"1BF46CD4D37D05B7E25B9D5173161BF6","timeLen":252000,"FileName":"孙露 - 怕什么孤单"},{"Hash":"D6405F678CCB000C8D685F2B9AFFDCB0","timeLen":227000,"FileName":"蒋蒋 - 谈何悲伤"},{"Hash":"C6D9C4D957B78E6F1E96CE0AF8154BD4","timeLen":209000,"FileName":"胜屿 - 和回忆生活"},{"Hash":"105EBC6FF4CE9B6FD85392D04BF18E45","timeLen":171000,"FileName":"阿悄 - 残忍的温柔"},{"Hash":"72A781BA3FF3250B9DF97365B48A13AA","timeLen":252000,"FileName":"星弟 - 亲爱的"},{"Hash":"F9A1225AC4ACE960625C8DD65E1CDCF5","timeLen":258000,"FileName":"刘丹萌、徐良 - 抽离"},{"Hash":"743581F0D485BD13C6C1FFEF3FD42D6E","timeLen":223000,"FileName":"冷漠、帅霖 - 两败俱伤"},{"Hash":"9478A0DF322C7092AE056334DC26639A","timeLen":262000,"FileName":"赖伟锋 - 一日七失"},{"Hash":"BCB2577A2F54065F78EA5A81A38B6C5C","timeLen":300000,"FileName":"郑源 - 爱情码头"},{"Hash":"CA2DD09CAFBEB75CE345435486ADA8D0","timeLen":279000,"FileName":"庄心妍 - 越笑越难过"},{"Hash":"79A5A9B65409DFE86471074B5D60D323","timeLen":248000,"FileName":"高安 - 我是否也在你心中"},{"Hash":"74FC8DED314296E9229EB261254F925A","timeLen":264000,"FileName":"曹越 - 你的眼角流着我的泪"},{"Hash":"590F395A4DCA7B12141F366A3756A2B9","timeLen":283000,"FileName":"孙露 - 伤了心的女人怎么了"},{"Hash":"1AE0646530A9EFB9663DF1D7A383F4A6","timeLen":239000,"FileName":"杨雪晴 - 对你的爱已戒不掉"},{"Hash":"FD39DBC1CEE03868DD3E355AA34961D5","timeLen":247000,"FileName":"郑源 - 爱过不后悔"},{"Hash":"4A195F73140C4A93BA3F641C58A06EA0","timeLen":246000,"FileName":"雷婷 - 别哭我最爱的人"},{"Hash":"F8AB79BA4F417F83F6FF63B6ECBC4582","timeLen":239000,"FileName":"徐一鸣 - 为你单身"},{"Hash":"4873C9DC07422591E8693C255E82C6B4","timeLen":258000,"FileName":"轲然 - 别让爱着你的女人哭"},{"Hash":"9176ECA4A617E73A68A80D2D6AC78ED5","timeLen":213000,"FileName":"叶贝文 - 情人鹤顶红"},{"Hash":"D9E5EA7DF5DF4CCA37D83CD06E31FA04","timeLen":271000,"FileName":"马小倩 - 黄昏"},{"Hash":"B0B741479BC983CBFF7088E702926E37","timeLen":252000,"FileName":"周艳泓 - 当爱情经过的时候"},{"Hash":"8E9F13D10FC49517F9D94A6955A29547","timeLen":237000,"FileName":"浩轩 - 醉醉醉"},{"Hash":"C889E408C3CCC50035BCBF51DDFC807D","timeLen":243000,"FileName":"曹龙 - 女人肿么了"},{"Hash":"BE68C3799C5C6B126CF3E570E1452488","timeLen":212000,"FileName":"庄妮 - 为爱付出"},{"Hash":"AA82860C9E0A49B10BE7DC1FE7FF15DF","timeLen":264000,"FileName":"任盈盈 - 没了心的爱"},{"Hash":"76BB98BBCF330B098F2BBBA4403A8BEE","timeLen":289000,"FileName":"冷漠、云菲菲 - 爱的血泪史"},{"Hash":"24C9A778FE3EB06B375B29D4D0829819","timeLen":217000,"FileName":"安东阳 - 忘不了的温柔"},{"Hash":"BADE8FAA5700FB0D0B9A482049FAA58E","timeLen":313000,"FileName":"孙露 - 沙漠情歌"},{"Hash":"6C8374DC1BFC365F59E12F5C9361C58D","timeLen":203000,"FileName":"常艾非 - 情歌还是伤的好"},{"Hash":"267200E0DFDA18245080AFC8AAB723EC","timeLen":184000,"FileName":"郑东、郑源 - 秋天的风"},{"Hash":"E30F3B6A00A9329C59D42A084168504A","timeLen":212000,"FileName":"采凤翔 - 被爱套牢"},{"Hash":"621B65195C1EB48F0DFEBC229333619D","timeLen":253000,"FileName":"曹越、门丽 - 今生无缘来生再聚"},{"Hash":"221F305E4EBE1DD9E203FC4256299226","timeLen":307000,"FileName":"孙露 - 我终于失去了你"}]',
            DataSelect4 = JSON.parse(jsonSelect4),

            jsonSelect5 = '[{"Hash":"E79DEE119E682C43668B782DEE5E5F88","timeLen":237000,"FileName":"陈奕迅 - 一丝不挂"},{"Hash":"B5EF193732CBC02E11756BA308B3C72A","timeLen":262000,"FileName":"周杰伦 - 退后"},{"Hash":"A15FAEB760006A3BC962409CB6E6C3D3","timeLen":239000,"FileName":"温岚 - 我全都相信"},{"Hash":"F4115D1BA7F9DE6E1DA96CE81403FD02","timeLen":273000,"FileName":"朱婧 - 寂寞烟火"},{"Hash":"EAFABDE6F43E6161BF6A7A7884C1E2DB","timeLen":258000,"FileName":"杨宗纬 - 这一路走来"},{"Hash":"458FC65C9FA3A03E24F11AC1D45D2068","timeLen":258000,"FileName":"孙燕姿 - 我也很想他"},{"Hash":"088DBC9ED1DE9DDA36292DC6682E5AA6","timeLen":252000,"FileName":"温岚 - 刺猬"},{"Hash":"42E5CDD9BD656A5C61C1A1138D75A88E","timeLen":254000,"FileName":"王祖蓝 - 跌落凡间的天使"},{"Hash":"96EB9F48AD913CEB3B5CECDC24F2E262","timeLen":220000,"FileName":"张国荣 - 我"},{"Hash":"7990DAF0E5F5A28F49AC15D9D65A54BC","timeLen":235000,"FileName":"吴雨霏 - 座右铭"},{"Hash":"309FEFBD54729638A8C9AC64D706359B","timeLen":284000,"FileName":"洪佩瑜 - 踮起脚尖爱"},{"Hash":"D6E9DE7C0AC7E317003966B66217E5BF","timeLen":220000,"FileName":"金莎 - 我知道我们不会有结果"},{"Hash":"DEC2256A4287AB1FE64A36C03F07069B","timeLen":283000,"FileName":"金海心 - 阳光下的星星"},{"Hash":"A8EC3668D5AE818A8DA6BE5020E51E82","timeLen":236000,"FileName":"韦雄 - 根本你不懂得爱我"},{"Hash":"E539ABA00BC7633F69A5CC1F7B98DAC8","timeLen":240000,"FileName":"李佳薇 - 离场"},{"Hash":"249CAF605F8511ED1CAD1955C6F1C791","timeLen":219000,"FileName":"唐禹哲 - 只欠一句 我爱你"},{"Hash":"1526B03CF1903E01A8A6D4ACCE4A6D6E","timeLen":290000,"FileName":"江美琪 - 路人"},{"Hash":"F51C156E88C84366C2B1EF322E0A55E1","timeLen":226000,"FileName":"卢巧音 - 垃圾"},{"Hash":"7375384AD97A32DB4B2B7613B60C7A41","timeLen":244000,"FileName":"泳儿 - 原来爱情那么难"},{"Hash":"0FFCFB4DC93F1A88DCF800FA48A47807","timeLen":338000,"FileName":"张悬 - 南国的孩子"},{"Hash":"93D485D849A7AF2159E114FDB334B294","timeLen":270000,"FileName":"李健 - 矜持"},{"Hash":"AF83513969F5806087DC20DA82D60401","timeLen":259000,"FileName":"梁咏琪 - 原来爱情这么伤"},{"Hash":"074E2890D64B3037267EC94FC1AFB16C","timeLen":275000,"FileName":"张惠妹 - 真实"},{"Hash":"C0695AC428488B65754E32BA9D5B6271","timeLen":240000,"FileName":"陶喆 - 流沙"},{"Hash":"3FB3A20F34DD7B7619F621C3BBA74F7B","timeLen":246000,"FileName":"郭静 - 我不想忘记你"},{"Hash":"F45C9F4E855709A4C63190E10103F3E2","timeLen":258000,"FileName":"许飞 - 那年夏天"},{"Hash":"6FAE0B0BB0235321306B7922076F2DC6","timeLen":264000,"FileName":"黄龄 - 原谅"},{"Hash":"FB01B7EB8F06A27EDD76722506B5AC11","timeLen":232000,"FileName":"刘惜君 - 那时候的我"},{"Hash":"FD6114ED45EBF7BBE1B37C044E4CB6FB","timeLen":230000,"FileName":"陈洁仪 - 心动"},{"Hash":"039CBA2B441D5098436D589D1385C338","timeLen":174000,"FileName":"王铮亮 - 默认"},{"Hash":"414E3FD9AB81D92E341C2DEE485AC885","timeLen":239000,"FileName":"陶喆 - 沙滩"},{"Hash":"5339F70E0296C9DB5905AC356B7B101A","timeLen":240000,"FileName":"杨丞琳 - 孤独是一种安全感"},{"Hash":"DEE63A6E394F913D9D7C97890483E71E","timeLen":303000,"FileName":"邓养天 - 狼狈"},{"Hash":"76798B2FB0D4B944347CF560F4D7ACE3","timeLen":249000,"FileName":"林育群 - 存在"},{"Hash":"5882FC1CDE7339BA3C7E504544A0C9F2","timeLen":252000,"FileName":"信乐团 - 活该"},{"Hash":"F68566F6B636395F460A5F26311F5335","timeLen":258000,"FileName":"许茹芸 - 最难的是相遇"}]',
            DataSelect5 = JSON.parse(jsonSelect5),
            // 热门榜单
            jsonhot1 = '[{"Hash":"0299FB4CB547E1B3D09F56F21F51E955","timeLen":222000,"FileName":"本兮 - 有心无意"},{"Hash":"C56B0AA19C1E6F7FC09C2DBD5EA02EB0","timeLen":280000,"FileName":"本兮 - 我梦见我梦见我"},{"Hash":"20AB36EC6C8C7840084B123DCF25D038","timeLen":277000,"FileName":"本兮 - 安静的夜"},{"Hash":"96FFD39F1479B49904D19697BC321F60","timeLen":185000,"FileName":"本兮 - 别闹"},{"Hash":"3C45E9ED2939658AB86FF0B7DAF96E81","timeLen":260000,"FileName":"本兮 - 下雪的季节"},{"Hash":"4FFF04E4C721C145A920F62FAB5661A9","timeLen":237000,"FileName":"简弘亦 - 魔鬼中的天使"},{"Hash":"5A2A2B20CB9004FDB049C1F4BD5ADA0F","timeLen":217000,"FileName":"李毓芬 - 是我不够好"},{"Hash":"2B5DF0554625C8C15181645A16C49498","timeLen":253000,"FileName":"袁野 - 对不起【偏偏喜欢你片尾曲】"},{"Hash":"EAE90593B0A950B3E89AF7CA6DAF0906","timeLen":267000,"FileName":"谭维维 - 爱到底【偏偏喜欢你主题曲】"},{"Hash":"32E277A517F2A82FFA27BAF8EF9630E3","timeLen":288000,"FileName":"赵雷 - 无法长大"},{"Hash":"74162ACDA5B36703651FDC782BCF26AE","timeLen":269000,"FileName":"Beyond - 喜欢你【摆渡人插曲】"},{"Hash":"5B93A012D2CE3DA78F263B26F44B3324","timeLen":184000,"FileName":"Jason Chen - 告白气球"},{"Hash":"AEF6C39CC463F6B75081B91896CF528A","timeLen":262000,"FileName":"王凯、王大陆、丁晟、桑平、吴永伦 - 大哥【铁道飞虎宣传推广曲】"},{"Hash":"1FC25317391E29F29BA65D815A9CE6B4","timeLen":154000,"FileName":"任素汐 - 我要你【驴得水主题曲】"},{"Hash":"BCC045ECA9C0989B507BF5B2AB9FA776","timeLen":271000,"FileName":"后弦 - 下完这场雨"},{"Hash":"8D6C5EFEB211F11FBA781DEE086F8949","timeLen":235000,"FileName":"华晨宇 - 我的滑板鞋2016"},{"Hash":"27EA122313B36C4599692796580FA861","timeLen":134000,"FileName":"李溪芮 - 你就是我最爱的宝宝【极品家丁片尾曲】"},{"Hash":"95DA88AF052915649B74242A8FBF2CAE","timeLen":276000,"FileName":"孙露 - 愿做菩萨那朵莲"},{"Hash":"F29FEDEE6115E40E102D8589322BCDFC","timeLen":161000,"FileName":"Alan Walker - Alone"},{"Hash":"3145A6171816031662D7CD588BFB532A","timeLen":241000,"FileName":"董贞 - 彼岸【兰陵王妃片头曲】"},{"Hash":"8B588F10793A6BD8938BAAE98A7EA9FF","timeLen":123000,"FileName":"BLACKPINK - BOOMBAYAH"},{"Hash":"73CB4222F9C5572AD976CF6E848C7BC2","timeLen":262000,"FileName":"蒋敦豪 - 傻瓜(Live)"},{"Hash":"FBA126417DA2788EF569BC674E09BDB3","timeLen":198000,"FileName":"杨美娜 - 春泥(Live)"},{"Hash":"7402A316F18F1479CAD9853683158B8A","timeLen":269000,"FileName":"望海高歌 - 夜深人静更想你"},{"Hash":"0BFAD7557B14D211656D1B9B7F479140","timeLen":249000,"FileName":"徐歌阳 - 异类(Live)"},{"Hash":"CB7EE97F4CC11C4EA7A1FA4B516A5D97","timeLen":199000,"FileName":"李玉刚 - 刚好遇见你"},{"Hash":"F0710665BF128890477A4454763162FB","timeLen":276000,"FileName":"低调组合 - 夜空中最亮的星(Live)"},{"Hash":"98548AA124669FE1BAC3AE4EE9938347","timeLen":292000,"FileName":"孙露 - 怎样遇见你"},{"Hash":"11A59F5DAD309C4905B09A2621542C1A","timeLen":229000,"FileName":"梦然 - 最孤独的人"},{"Hash":"699DF48DEBFCCD44EC99838A93E56CD5","timeLen":233000,"FileName":"罗云熙 - 屏里狐【屏里狐片尾曲】"}]';
            Datahot1 = JSON.parse(jsonhot1),

            jsonhot2 = '[{"Hash":"C56B0AA19C1E6F7FC09C2DBD5EA02EB0","timeLen":280000,"FileName":"本兮 - 我梦见我梦见我"},{"Hash":"0299FB4CB547E1B3D09F56F21F51E955","timeLen":222000,"FileName":"本兮 - 有心无意"},{"Hash":"20AB36EC6C8C7840084B123DCF25D038","timeLen":277000,"FileName":"本兮 - 安静的夜"},{"Hash":"5966C84210F8E179D8E88EC9BEDF093C","timeLen":164000,"FileName":"成龙、MIC男团 - 美丽的神话【功夫瑜伽主题曲】"},{"Hash":"B5B37DDA2DB7CEBDD7D5411AAFB8D4B7","timeLen":238000,"FileName":"许鹤缤 - 一首回忆的歌【我的岳父会武术片头曲】"},{"Hash":"1FEC01E1E0A9EB32DAB1DEAA0007D405","timeLen":263000,"FileName":"魏晨 - 不变"},{"Hash":"68E8F3A20E9058C19BE61DA653FF8DD0","timeLen":243000,"FileName":"唐古、贺一航 - 爱情天堂"},{"Hash":"110D83A8A49CF276CC550BFE891E6251","timeLen":248000,"FileName":"徐佳莹 - 是日救星"},{"Hash":"96FFD39F1479B49904D19697BC321F60","timeLen":185000,"FileName":"本兮 - 别闹"},{"Hash":"CA0710061BD1ECE42AA024F3FCEB4827","timeLen":293000,"FileName":"金志文 - It s Time To Play"},{"Hash":"936D74C8E9E1DCB7C8C22C6DECBAADA9","timeLen":280000,"FileName":"简弘亦 - 你就不要想起我"},{"Hash":"6C103549FD55DD08F0DE89C269C7DC04","timeLen":289000,"FileName":"丽江小倩 - 我会想起你"},{"Hash":"B6E0F72BEC5EB96AA2D1FC2577DCF010","timeLen":247000,"FileName":"郭静 - 我们曾相爱"},{"Hash":"EB091DD562C5D3691D36A6DB59DC2086","timeLen":255000,"FileName":"蒙面哥 - 麻辣火歌"},{"Hash":"BF8B78FDE09D3177C9795E676BA50A89","timeLen":197000,"FileName":"童可可 - 少女心"},{"Hash":"87F469571E3CD850ABA52EF1A8F290A2","timeLen":281000,"FileName":"田馥甄 - 演员(Live)"},{"Hash":"A86D8976562954B8F993DBF707B10207","timeLen":245000,"FileName":"羽·泉 - 我可以抱你吗(Live)"},{"Hash":"CA44705141C2AC54F5653F881EE32AE9","timeLen":225000,"FileName":"马旭东 - 我爱你 你爱他"},{"Hash":"A3FF63018FE9490F58F2ECF810B2CA9A","timeLen":229000,"FileName":"张惠妹 - 快让我在这雪地上撒点野(Live)"},{"Hash":"56806A28B5CC718AF6DC27223238FF31","timeLen":203000,"FileName":"许一鸣 - 修炼爱情(Live)"},{"Hash":"38404A1B8996E1632AF11808197A3D91","timeLen":167000,"FileName":"Alan Walker、David Whistle - Routine"},{"Hash":"99C48E71C277FBEE65638C7A1AFC1DF5","timeLen":177000,"FileName":"张小七 - 无用(Live)"},{"Hash":"1D44F118B1D8AD353498F758EEBF2A39","timeLen":187000,"FileName":"杨炅翰 - 一想到你呀(Live)"},{"Hash":"E1AA572D2BD8A0460787912224BF2259","timeLen":283000,"FileName":"林俊杰 - 精舞门(Live)"},{"Hash":"8EFD8BACE39178C41EDB6BB130AC18C9","timeLen":178000,"FileName":"权赫&朴美罗 - 摩天轮(Live)"},{"Hash":"EAE248D0F8A8A60B88FDA9B886A98C1E","timeLen":233000,"FileName":"王力宏 - 列王的纷争【 列王的纷争主题曲】"},{"Hash":"4EB270FE65D53AC493F109FAF98B61C5","timeLen":185000,"FileName":"权赫&朴美罗 - 最美(Live)"},{"Hash":"A9BF2EB89C7CDE6FC49B486AAFB3B330","timeLen":259000,"FileName":"邰正宵 - 爱在当下"},{"Hash":"4B9145B0CABCB2952AD577FA6A3BBFDB","timeLen":229000,"FileName":"陈翔 - 死結"},{"Hash":"4BEF622A46354C208C7B7417E4A3F1D5","timeLen":157000,"FileName":"张小七 - 单眼皮女生(Live)"}]',
            Datahot2 = JSON.parse(jsonhot2);

            jsonhot3 = '[{"Hash":"3C8D3AD5B55D7F9E6CF410E618AAE11D","timeLen":125000,"FileName":"金南玲 - 逆流成河"},{"Hash":"57B83EAF673D77EE21009CBD8FD05BD6","timeLen":261000,"FileName":"薛之谦 - 演员"},{"Hash":"413371D139EE58E1ABAFBA01DE17F1E1","timeLen":284000,"FileName":"梦然 - 没有你陪伴真的好孤单"},{"Hash":"EA3C81D87E3690BA5F5291F163A92F52","timeLen":268000,"FileName":"庄心妍 - 走着走着就散了"},{"Hash":"0CEDF221CA6AD22E7A18F5043423F967","timeLen":310000,"FileName":"薛之谦 - 你还要我怎样"},{"Hash":"147323237684DD2930096F43DC1D69D5","timeLen":234000,"FileName":"苏勒亚其其格 - 歌在飞"},{"Hash":"EC948599250F456506F328C8F75969C1","timeLen":249000,"FileName":"韩安旭 - 多幸运"},{"Hash":"3C3D93A5615FB42486CAB22024945264","timeLen":216000,"FileName":"周杰伦 - 告白气球"},{"Hash":"A35D4B31FA86896F3FD55941D1EC1C4E","timeLen":325000,"FileName":"那英 - 默"},{"Hash":"8EE9148F4056C49D9E02C7AD654B1443","timeLen":298000,"FileName":"庄心妍 - 以后的以后"},{"Hash":"DE241892B9C235A195C145EA1FCAE46E","timeLen":251000,"FileName":"薛之谦 - 刚刚好"},{"Hash":"396090D23F283EBAD546D136E5F89CD6","timeLen":301000,"FileName":"朴树 - 平凡之路"},{"Hash":"A146C9368D819BF4C71C27D92E9EC458","timeLen":228000,"FileName":"齐晨 - 咱们结婚吧"},{"Hash":"5F4D1E64E3BF890658A60CA8DC34096B","timeLen":291000,"FileName":"薛之谦 - 绅士"},{"Hash":"47D0A723E415123CFE7E9EF2DC25B817","timeLen":232000,"FileName":"葛林 - 林中鸟"},{"Hash":"0E21484E530E62CB1517A4AD2107181D","timeLen":208000,"FileName":"魏新雨 - 恋人心"},{"Hash":"5DD8F4B0FB68415472136D961232421B","timeLen":213000,"FileName":"Alan Walker - Faded"},{"Hash":"FCD49446E26461D95433E9EEA5C7A790","timeLen":211000,"FileName":"筷子兄弟 - 小苹果"},{"Hash":"E90A2B871A917FF066509FCDAB120048","timeLen":301000,"FileName":"Beyond - 光辉岁月"},{"Hash":"2688ADB1CA449448388270987BDCE6E8","timeLen":253000,"FileName":"薛之谦 - 丑八怪"},{"Hash":"018551D54490C272B54D064D92663826","timeLen":266000,"FileName":"杨宗纬 - 一次就好"},{"Hash":"B507808B800A5413C0E8C165AC52DE68","timeLen":252000,"FileName":"庄心妍 - 再见只是陌生人"},{"Hash":"41C2E4AB5660EAE04021C5893E055F50","timeLen":239000,"FileName":"G.E.M.邓紫棋 - 喜欢你"},{"Hash":"BB0EEE762F44B9F2C4EBE056CAE3744C","timeLen":285000,"FileName":"齐一 - 这个年纪"},{"Hash":"130864FF46AFD34C33DFA9E45308664A","timeLen":226000,"FileName":"张赫宣 - 我们不该这样的"},{"Hash":"0B464599DB574F6BD1D9730135970DF8","timeLen":235000,"FileName":"汪苏泷、By2 - 有点甜"},{"Hash":"CCFEE4473BB3EDC61E77E2E2632BE5E7","timeLen":205000,"FileName":"杨洋 - 微微一笑很倾城"},{"Hash":"70D5F11FAFF35E9639118A5C8E1F41E8","timeLen":293000,"FileName":"李克勤 - 月半小夜曲"},{"Hash":"C311822B9DD8F6F37D650AAA63A3922A","timeLen":204000,"FileName":"夏天Alex - 不再联系"},{"Hash":"F9124F45F673EE3736E195E918F83E94","timeLen":252000,"FileName":"逃跑计划 - 夜空中最亮的星"}]',
            Datahot3 = JSON.parse(jsonhot3),

            // 中国新歌 
            jsonChina = '[{"first":0,"Hash":"C56B0AA19C1E6F7FC09C2DBD5EA02EB0","time":"04:40","timeLen":280000,"Filename":"本兮 - 我梦见我梦见我"},{"first":1,"Hash":"DB7B29E52B735CEB82F6CAD9A0DF00AE","time":"04:07","timeLen":247000,"Filename":"孙露 - 两个朋友"},{"first":1,"Hash":"68E8F3A20E9058C19BE61DA653FF8DD0","time":"04:03","timeLen":243000,"Filename":"唐古、贺一航 - 爱情天堂"},{"first":1,"Hash":"5966C84210F8E179D8E88EC9BEDF093C","time":"02:44","timeLen":164000,"Filename":"成龙、MIC男团 - 美丽的神话【功夫瑜伽主题曲】"},{"first":1,"Hash":"CA0710061BD1ECE42AA024F3FCEB4827","time":"04:53","timeLen":293000,"Filename":"金志文 - It s Time To Play"},{"first":1,"Hash":"5940C4632DDFAE9559266DF6BAED2E1F","time":"03:09","timeLen":189000,"Filename":"李熙郁、陈艾森 - 发歌【广州城市宣传曲】"},{"first":0,"Hash":"1FEC01E1E0A9EB32DAB1DEAA0007D405","time":"04:23","timeLen":263000,"Filename":"魏晨 - 不变"},{"first":1,"Hash":"905DAFCE86945D422F970317003E3BF7","time":"05:00","timeLen":300000,"Filename":"玖月奇迹 - 两根筷子"},{"first":1,"Hash":"BF8B78FDE09D3177C9795E676BA50A89","time":"03:17","timeLen":197000,"Filename":"童可可 - 少女心"},{"first":1,"Hash":"753F88E81ADBAA89E2955BB8882BF3F6","time":"03:52","timeLen":232000,"Filename":"谈莉娜 - 吸引"},{"first":1,"Hash":"3C2DF55C14A09E088C28143A48479972","time":"04:04","timeLen":244000,"Filename":"丽江小倩 - 我们的歌"},{"first":1,"Hash":"936D74C8E9E1DCB7C8C22C6DECBAADA9","time":"04:40","timeLen":280000,"Filename":"简弘亦 - 你就不要想起我"},{"first":1,"Hash":"98A83E36744F7EA05058E11C2EBACC6C","time":"03:44","timeLen":224000,"Filename":"孟佳 - Who s That Girl"},{"first":0,"Hash":"110D83A8A49CF276CC550BFE891E6251","time":"04:08","timeLen":248000,"Filename":"徐佳莹 - 是日救星"},{"first":0,"Hash":"09BAEF78C2107DC6C5F39D03902C7272","time":"04:38","timeLen":278000,"Filename":"肖央 - 不想上班【情圣主题曲】"},{"first":1,"Hash":"E1AA572D2BD8A0460787912224BF2259","time":"04:43","timeLen":283000,"Filename":"林俊杰 - 精舞门(Live)"},{"first":1,"Hash":"5CC5CD23C2593A2BEB94CA9271C91BB1","time":"03:53","timeLen":233000,"Filename":"朱婧汐 - 寂寞烟火(太平洋对岸版)"},{"first":0,"Hash":"3F12F295ED775EB938B8D7715557F364","time":"04:27","timeLen":267000,"Filename":"潘玮柏、关晓彤 - 漫动作"},{"first":1,"Hash":"A9BF2EB89C7CDE6FC49B486AAFB3B330","time":"04:19","timeLen":259000,"Filename":"邰正宵 - 爱在当下"},{"first":1,"Hash":"90574CD3866B58F2B4219EF1089BC14E","time":"03:48","timeLen":228000,"Filename":"陈乔恩 - Yes I Do【放弃我,抓紧我插曲】"},{"first":0,"Hash":"ACD7084A6F7BA59413697DED942284BD","time":"03:13","timeLen":193000,"Filename":"何静 - 火锅舞"},{"first":1,"Hash":"EAE248D0F8A8A60B88FDA9B886A98C1E","time":"03:53","timeLen":233000,"Filename":"王力宏 - 列王的纷争【列王的纷争主题曲】"},{"first":0,"Hash":"BA9603986162592B57C7744372D1B080","time":"03:29","timeLen":209000,"Filename":"何晟铭 - 北极光"},{"first":1,"Hash":"F046654F74243F0599329BB69AF73927","time":"04:12","timeLen":252000,"Filename":"梁朝伟、李宇春 - 十年【摆渡人岁月版主题曲】"}]';
            DataChina = JSON.parse(jsonChina),
            // 欧美新歌 
            jsonEurope = '[{"first":0,"Hash":"8F1B5211E6D2A05107C6090696B939B8","time":"04:26","timeLen":266000,"Filename":"Bon Jovi - New Year s Day"},{"first":0,"Hash":"6D2F19B68B32452B3BC30EB425B5B69F","time":"04:15","timeLen":255000,"Filename":"Greyson Chance - London"},{"first":0,"Hash":"AAD04C2366B4FEB19F2BE8760EB9C1C8","time":"03:26","timeLen":206000,"Filename":"Mario - Let Me Help You"},{"first":0,"Hash":"3C5FFAC386778A0633ADC50D7F088968","time":"03:17","timeLen":197000,"Filename":"Galantis - Pillow Fight"},{"first":0,"Hash":"28EF7D9EBC0CAC98DAB7B6D7310B01C7","time":"03:36","timeLen":216000,"Filename":"Pentatonix - O Come, All Ye Faithful"},{"first":0,"Hash":"9873D9F9E1E0652A912BD9272D4DFB48","time":"02:43","timeLen":163000,"Filename":"blink-182 - She s Out of Her Mind"},{"first":0,"Hash":"884CEDDB91435E5B2519966F59B71084","time":"03:33","timeLen":213000,"Filename":"Little Mix - Touch"},{"first":0,"Hash":"386388819A1E3FC526411E854C61323B","time":"04:49","timeLen":289000,"Filename":"Years & Years - Both Sides Now (Torch Songs)"},{"first":0,"Hash":"EF5FA3DAA886914B44513411A3D72635","time":"03:27","timeLen":207000,"Filename":"DJ Snake、Zedd、Justin Bieber - Let Me Love You (Zedd Remix)"},{"first":0,"Hash":"D46E8E1D827CCCDCD596CBC5BCD010DA","time":"02:41","timeLen":161000,"Filename":"Stevie Wonder、Ariana Grande - Faith【欢乐好声音主题曲】"},{"first":0,"Hash":"83EA5125A214AA5D929615E14D6CD6E8","time":"03:40","timeLen":220000,"Filename":"Chris Brown、Gucci Mane、Usher - Party"},{"first":0,"Hash":"520FAEA5AED100A4AA218BDEDED5A581","time":"03:44","timeLen":224000,"Filename":"Pia Mia - We Should Be Together"},{"first":0,"Hash":"64926B19ED600004C6B2314079A91920","time":"03:50","timeLen":230000,"Filename":"Fergie - Life Goes On"},{"first":0,"Hash":"E56F92B07C55FC00F4148B86D47E44A1","time":"03:33","timeLen":213000,"Filename":"Alessia Cara - Seventeen"},{"first":0,"Hash":"A84FAA8C40BFF37ACA3EFE8DB67E45AB","time":"04:02","timeLen":242000,"Filename":"Olly Murs - Years & Years"},{"first":0,"Hash":"322425F13A310A657B15574466C02AAA","time":"03:28","timeLen":208000,"Filename":"Robbie Williams - Love My Life"},{"first":0,"Hash":"65A0875F1AB987950DA8ED37EC5C074E","time":"03:25","timeLen":205000,"Filename":"Lady Gaga - Million Reasons"},{"first":0,"Hash":"B896B8915EF90071ECCFF45173C59805","time":"04:06","timeLen":246000,"Filename":"Kings of Leon - Find Me"},{"first":0,"Hash":"1F2A4463BA590F0234E1BE6B80FC2909","time":"04:11","timeLen":251000,"Filename":"Trey Songz - Comin Home"},{"first":0,"Hash":"1AE96AEE3DC74251B97EF8F42ADED445","time":"02:28","timeLen":148000,"Filename":"Pentatonix - Coldest Winter"},{"first":0,"Hash":"97930016C4F7F9C93FAD35EAFB5D532C","time":"02:55","timeLen":175000,"Filename":"Bastille - Blame"},{"first":0,"Hash":"2087A90DC7D3C4A1EFB3349722FF8D07","time":"02:30","timeLen":150000,"Filename":"Emma Stone、Ryan Gosling - City of Stars【爱乐之城主题曲】"},{"first":0,"Hash":"203E68A61394ACB5A11D6DB1DFE9D223","time":"03:25","timeLen":205000,"Filename":"Far East Movement、Tiffany、KING CHAIN - Don t Speak"},{"first":0,"Hash":"39DD3F7254B683B90EE06D50B9F4CB04","time":"03:07","timeLen":187000,"Filename":"Krewella - Team"}]',
            DataEurope = JSON.parse(jsonEurope),
            // 韩国新歌 
            jsonKorea = '[{"first":0,"Hash":"151C35347D76C6BDA53878E61D584200","time":"03:20","timeLen":200000,"Filename":"Hanhae、郑恩地 - 夏天,冰淇淋"},{"first":0,"Hash":"6DF09D4F294653B819DDA0E9A98A79C9","time":"03:59","timeLen":239000,"Filename":"GRAY、Hoody - Summer Night(Remix)"},{"first":0,"Hash":"E7E56030D876F3B5A881BEF48C98E5A6","time":"03:43","timeLen":223000,"Filename":"宇宙少女 - Secret"},{"first":0,"Hash":"E298858D4162D864AFC4DEAA16413F8D","time":"03:33","timeLen":213000,"Filename":"金所炫 - 梦【打架吧鬼神 OST】"},{"first":0,"Hash":"8E4BD4BE6A93D92674295227AFA41D32","time":"03:29","timeLen":209000,"Filename":"VIXX - Fantasy"},{"first":0,"Hash":"83C1D5B2878E6C1322A00D360DB70EAA","time":"04:09","timeLen":249000,"Filename":"Basick、Inkii - 幻想中的你【W-两个世界 OST】"},{"first":0,"Hash":"F3192377FF3E83372784243250DC0F1B","time":"03:32","timeLen":212000,"Filename":"BLACKPINK - WHISTLE"},{"first":0,"Hash":"EFE10AAB702D9C304381165E20FD2151","time":"04:22","timeLen":262000,"Filename":"Cjamm、BewhY - puzzle"},{"first":0,"Hash":"F9EC3770A500E315EDB61BD626755520","time":"03:14","timeLen":194000,"Filename":"I.O.I - Whatta Man(Good man)"},{"first":1,"Hash":"C7736E568D39ED21385CEC049397BF6B","time":"03:58","timeLen":238000,"Filename":"JUN. K - THINK ABOUT YOU"},{"first":0,"Hash":"D0C29436664C470919DA0E6933705496","time":"03:16","timeLen":196000,"Filename":"B.A.P - That s My Jam"},{"first":0,"Hash":"11AFB7CF84553F9FB84A52577CEBD115","time":"03:27","timeLen":207000,"Filename":"BTOB - 想去旅行"},{"first":0,"Hash":"D30AEF377B05245409D3EAD3192717FD","time":"03:06","timeLen":186000,"Filename":"Y TEEN - Do Better"},{"first":0,"Hash":"A6A3A36276CDF0F7C61F56C5AC6028C9","time":"03:33","timeLen":213000,"Filename":"朴宝蓝 - Please say something, even though it is a lie【W-两个世界 OST】"},{"first":0,"Hash":"D87BAC2C92BA914B9E791D0B47EA9D02","time":"03:02","timeLen":182000,"Filename":"9MUSES A - Lip 2 Lip"},{"first":0,"Hash":"8BBE3F4D7CCAA8000FDD8A40D8009C48","time":"03:19","timeLen":199000,"Filename":"泫雅 - 怎样?"},{"first":0,"Hash":"109114490E29C0C6452DF3DFDA27FBED","time":"03:31","timeLen":211000,"Filename":"OH MY GIRL、SKULL、Haha - 听我说(A-ing)"},{"first":0,"Hash":"B42B345D18D7E2E97A1E304EA02F2B9B","time":"03:27","timeLen":207000,"Filename":"曹承衍Luizy、Flowsik - RECIPE"},{"first":0,"Hash":"3E91F8C50F1C9B9F76656A964225D848","time":"04:19","timeLen":259000,"Filename":"郑俊英 - 无论是我向你而去，还是你朝我而来(Where Are U)【W-两个世界 OST】"},{"first":1,"Hash":"15B6E0291A501557227FEB1B8D58AAA9","time":"04:20","timeLen":260000,"Filename":"JUN. K、白娥娟 - Don t Leave Me"},{"first":0,"Hash":"A42BD92DCF659D669639BE2A45D4691F","time":"03:13","timeLen":193000,"Filename":"Pia - MIDNIGHT RUN【打架吧鬼神 OST】"},{"first":0,"Hash":"3E483FD335EB78A48CC76A9B3B1861C1","time":"02:58","timeLen":178000,"Filename":"智妍、俊亨、Yoon yo - 望着你 怦然心动"},{"first":0,"Hash":"19669EA0AE8BC86B11A517C506F5CFA0","time":"03:28","timeLen":208000,"Filename":"许阁、郑恩地 - 大海"},{"first":1,"Hash":"6B816016ACF7552260791C760B8C3482","time":"03:26","timeLen":206000,"Filename":"王霏霏 - Fantasy"}]',
            DataKorea = JSON.parse(jsonKorea),
            // 日本新歌 
            jsonJapan= '[{"first":0,"Hash":"9CF5D5168D93220278DF3F7BB07BCE87","time":"04:35","timeLen":275000,"Filename":"Aqours - Daydream Warrior"},{"first":0,"Hash":"DF86A8960C16C645F587972F23A28FD9","time":"03:52","timeLen":232000,"Filename":"NMB48 - 僕以外の誰か"},{"first":0,"Hash":"AD5A455004BDC79765666E7D544198BF","time":"04:05","timeLen":245000,"Filename":"中村悠一、内山昂輝、小野賢章 - 無重力フィーバー【WWW.迷糊餐厅 ED】"},{"first":0,"Hash":"02465A917AE05D1934ECD129253CB666","time":"03:18","timeLen":198000,"Filename":"戸松遥、日笠陽子、雨宮天 - Eyecatch! Too much!【WWW.迷糊餐厅 OP】"},{"first":0,"Hash":"2F321FBFD7A66EABF070AAE0D3202937","time":"03:34","timeLen":214000,"Filename":"Apink - My First Love"},{"first":0,"Hash":"C622B9ABE693AB1538B4445630F8F701","time":"04:21","timeLen":261000,"Filename":"L Arc〜en〜Ciel - Don t be Afraid【生化危机：终章 日配版TM】"},{"first":0,"Hash":"7008F33939DF7BB9F807D17DA0D58D37","time":"05:19","timeLen":319000,"Filename":"BUMP OF CHICKEN - アンサー【三月的狮子 OP】"},{"first":0,"Hash":"758B6A34E6E2709BDF0DBF21EF0C755E","time":"03:50","timeLen":230000,"Filename":"飯田里穂 - 青い炎シンドローム【数码兽宇宙：应用怪兽 ED】"},{"first":0,"Hash":"B85054FBB19E56667B070553C05C4126","time":"03:29","timeLen":209000,"Filename":"MONKEY MAJIK - A.I. am Human【CYBORG 009 CALL OF JUSTICE TM】"},{"first":0,"Hash":"349CFB8F35947E53BF8BD4CCE213A596","time":"04:45","timeLen":285000,"Filename":"Hey! Say! JUMP - Give Me Love【该隐与亚伯 TM】"},{"first":0,"Hash":"B515F54802387AAB23ED6C0D96343FBC","time":"04:08","timeLen":248000,"Filename":"SHINee - Winter Wonderland"},{"first":0,"Hash":"8130E0CB4B699B8FB63ED5879D81B984","time":"04:26","timeLen":266000,"Filename":"三月のパンタシア - 群青世界【斩首循环 蓝色学者与戏言跟班 OP】"},{"first":0,"Hash":"F64D33C630C52F6E8518445EB56334D4","time":"04:33","timeLen":273000,"Filename":"関ジャニ∞ - NOROSHI【鼹鼠之歌2：香港狂骚曲 TM】"},{"first":0,"Hash":"1C756E3E127B251ADF87128F2702C5DD","time":"03:44","timeLen":224000,"Filename":"岡崎体育 - 潮風【编舟记 OP】"},{"first":0,"Hash":"9985854C77516D818C7C0CE80212A150","time":"06:07","timeLen":367000,"Filename":"さユり - フラレガイガール"},{"first":0,"Hash":"2D25E1C8166F1DD5FFA6F4DAF270D7D7","time":"05:01","timeLen":301000,"Filename":"加藤ミリヤ - 最高なしあわせ"},{"first":0,"Hash":"956BE5C7A127AFEC037C103AE1C1F2BB","time":"03:50","timeLen":230000,"Filename":"篠崎愛 - TRUE LOVE【时间飞船24 ED】"},{"first":0,"Hash":"3C5ED68F7FF6FE49BADDACFB52568442","time":"04:19","timeLen":259000,"Filename":"プラズマジカ - プラズマism【SHOW BY ROCK!!# IN】"},{"first":0,"Hash":"F89F41529E808CDE0554DCA6D773D5DE","time":"04:08","timeLen":248000,"Filename":"Nico Touches the Walls - マシ・マシ【排球少年！！第三季 ED】"},{"first":0,"Hash":"3ABC8124DE5BF96E5F980A9C471C1F35","time":"03:41","timeLen":221000,"Filename":"彩音 - SOUL BUSTER【侍灵演武：将星乱 日版OP】"},{"first":0,"Hash":"ED985CF01BAA147BCA7281ADF127ACD9","time":"04:09","timeLen":249000,"Filename":"スキマスイッチ - 全力少年 produced by 奥田民生【ALL OUT!! ED】"},{"first":0,"Hash":"EFD556F9FDC814F6BBFD30096F0950E8","time":"04:26","timeLen":266000,"Filename":"花澤香菜 - ざらざら"},{"first":0,"Hash":"846C45797E874CD60446A6EF7E816E47","time":"04:48","timeLen":288000,"Filename":"欅坂46 - 二人セゾン"},{"first":0,"Hash":"AB085169A507D3519BC21CF472552244","time":"03:51","timeLen":231000,"Filename":"EGOIST - Welcome to the *fam"}]',
            DataJapan = JSON.parse(jsonJapan),

            // 中国
            jsonSingerChina1= '[{"play_times":19086413,"author_id":3060,"sort_offset":0,"cindex":"X","heat_offset":0,"avatar":"20161121115938576.jpg","author_name":"薛之谦","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20161121/20161121115938576.jpg"},{"play_times":15851950,"author_id":86281,"sort_offset":-1,"cindex":"Z","heat_offset":0,"avatar":"20161012161017418.jpg","author_name":"庄心妍","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20161012/20161012161017418.jpg"},{"play_times":13093506,"author_id":3520,"sort_offset":4,"cindex":"Z","heat_offset":0,"avatar":"20160929135052342.jpg","author_name":"周杰伦","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160929/20160929135052342.jpg"},{"play_times":11675249,"author_id":420,"sort_offset":-5,"cindex":"C","heat_offset":0,"avatar":"20160923162150990653.jpg","author_name":"陈奕迅","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160923/20160923162150990653.jpg"},{"play_times":11248820,"author_id":4107,"sort_offset":5,"cindex":"B","heat_offset":94,"avatar":"20161227160952462.jpg","author_name":"本兮","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20161227/20161227160952462.jpg"}]',
            DataSingerChina1 = JSON.parse(jsonSingerChina1),

            jsonSingerChina2= '[{"play_times":11051948,"author_id":1900,"sort_offset":1,"cindex":"L","heat_offset":-1,"avatar":"20160422165257968614.jpg","author_name":"冷漠","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160422/20160422165257968614.jpg"},{"play_times":9630352,"author_id":3521,"sort_offset":-1,"cindex":"Z","heat_offset":-1,"avatar":"20140527095042283066.jpg","author_name":"张学友","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20140527/20140527095042283066.jpg"},{"play_times":9466939,"author_id":1574,"sort_offset":12,"cindex":"L","heat_offset":-1,"avatar":"20161209164303152140.jpg","author_name":"林俊杰","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20161209/20161209164303152140.jpg"},{"play_times":7745359,"author_id":7249,"sort_offset":2,"cindex":"B","heat_offset":-1,"avatar":"20160418100531196.jpg","author_name":"Beyond","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160418/20160418100531196.jpg"},{"play_times":7616356,"author_id":5838,"sort_offset":-6,"cindex":"S","heat_offset":-1,"avatar":"20161118120530896.jpg","author_name":"孙露","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20161118/20161118120530896.jpg"}]',
            DataSingerChina2 = JSON.parse(jsonSingerChina2),

            jsonSingerChina3= '[{"play_times":6756061,"author_id":4490,"sort_offset":-1,"cindex":"D","heat_offset":-1,"avatar":"20161206150644553.jpg","author_name":"G.E.M.邓紫棋","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20161206/20161206150644553.jpg"},{"play_times":5913348,"author_id":3047,"sort_offset":28,"cindex":"X","heat_offset":0,"avatar":"20150108174616117572.jpg","author_name":"许嵩","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20150108/20150108174616117572.jpg"},{"play_times":5782609,"author_id":3539,"sort_offset":-7,"cindex":"Z","heat_offset":-2,"avatar":"20160425102353574359.jpg","author_name":"张杰","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160425/20160425102353574359.jpg"},{"play_times":5647394,"author_id":3538,"sort_offset":3,"cindex":"Z","heat_offset":-1,"avatar":"20160418100508296.jpg","author_name":"郑源","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160418/20160418100508296.jpg"},{"play_times":5372443,"author_id":1573,"sort_offset":8,"cindex":"L","heat_offset":-1,"avatar":"20140218175057634765.jpg","author_name":"刘德华","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20140218/20140218175057634765.jpg"}]',
            DataSingerChina3 = JSON.parse(jsonSingerChina3),
            // 欧美
            jsonSingerEurope1= '[{"play_times":2828636,"author_id":178240,"sort_offset":78,"cindex":"A","heat_offset":-1,"avatar":"20160829115138251468.jpg","author_name":"Alan Walker","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160829/20160829115138251468.jpg"},{"play_times":2033177,"author_id":84607,"sort_offset":-11,"cindex":"M","heat_offset":0,"avatar":"20161123150652251875.jpg","author_name":"Maroon 5","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20161123/20161123150652251875.jpg"},{"play_times":1883485,"author_id":27108,"sort_offset":-3,"cindex":"J","heat_offset":-2,"avatar":"20161109155400970766.jpg","author_name":"Justin Bieber","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20161109/20161109155400970766.jpg"},{"play_times":1192450,"author_id":60024,"sort_offset":2,"cindex":"R","heat_offset":0,"avatar":"20160419164602544498.jpg","author_name":"Rihanna","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160419/20160419164602544498.jpg"},{"play_times":1159233,"author_id":87865,"sort_offset":-19,"cindex":"C","heat_offset":-2,"avatar":"20161109154057167022.jpg","author_name":"Charlie Puth","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20161109/20161109154057167022.jpg"}]',
            DataSingerEurope1 = JSON.parse(jsonSingerEurope1),

            jsonSingerEurope2= '[{"play_times":1049222,"author_id":69862,"sort_offset":27,"cindex":"B","heat_offset":0,"avatar":"20140331182805428418.jpg","author_name":"Bandari","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20140331/20140331182805428418.jpg"},{"play_times":1015734,"author_id":73526,"sort_offset":-22,"cindex":"G","heat_offset":0,"avatar":"20160429120501103.jpg","author_name":"Groove Coverage","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160429/20160429120501103.jpg"},{"play_times":1005523,"author_id":36365,"sort_offset":8,"cindex":"A","heat_offset":0,"avatar":"20151217115138862788.jpg","author_name":"Adele","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20151217/20151217115138862788.jpg"},{"play_times":914781,"author_id":83823,"sort_offset":-26,"cindex":"W","heat_offset":-1,"avatar":"20161109160316706340.jpg","author_name":"Wiz Khalifa","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20161109/20161109160316706340.jpg"},{"play_times":866735,"author_id":35808,"sort_offset":3716,"cindex":"W","heat_offset":0,"avatar":"20140403171832528255.jpg","author_name":"Westlife","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20140403/20140403171832528255.jpg"}]',
            DataSingerEurope2 = JSON.parse(jsonSingerEurope2),

            jsonSingerEurope3= '[{"play_times":809581,"author_id":84672,"sort_offset":-25,"cindex":"C","heat_offset":2,"avatar":"20160429120523986.jpg","author_name":"Carly Rae Jepsen","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160429/20160429120523986.jpg"},{"play_times":797883,"author_id":22043,"sort_offset":-6,"cindex":"B","heat_offset":1,"avatar":"20161109160818377591.jpg","author_name":"Bruno Mars","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20161109/20161109160818377591.jpg"},{"play_times":677869,"author_id":29985,"sort_offset":-6,"cindex":"M","heat_offset":2,"avatar":"20140409145904650908.jpg","author_name":"Michael Jackson","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20140409/20140409145904650908.jpg"},{"play_times":666426,"author_id":36363,"sort_offset":-12,"cindex":"A","heat_offset":4,"avatar":"20160915174853517.jpg","author_name":"Avril Lavigne","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160915/20160915174853517.jpg"},{"play_times":643635,"author_id":83709,"sort_offset":-5,"cindex":"L","heat_offset":-1,"avatar":"20160909155300175.jpg","author_name":"Lady Gaga","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160909/20160909155300175.jpg"}]',
            DataSingerEurope3 = JSON.parse(jsonSingerEurope3),

            // 日韩
            jsonSingerKorea1= '[{"play_times":6201855,"author_id":84161,"sort_offset":1,"cindex":"B","heat_offset":-1,"avatar":"20161213183633540.jpg","author_name":"BIGBANG","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20161213/20161213183633540.jpg"},{"play_times":1596310,"author_id":16542,"sort_offset":-19,"cindex":"Q","heat_offset":0,"avatar":"20161214154117755.jpg","author_name":"权志龙","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20161214/20161214154117755.jpg"},{"play_times":1031914,"author_id":19507,"sort_offset":-7,"cindex":"T","heat_offset":-1,"avatar":"20140303154019930332.jpg","author_name":"T-ara","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20140303/20140303154019930332.jpg"},{"play_times":936467,"author_id":84195,"sort_offset":-116,"cindex":"E","heat_offset":7,"avatar":"20161219112538266.jpg","author_name":"EXO","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20161219/20161219112538266.jpg"},{"play_times":726164,"author_id":17169,"sort_offset":-13,"cindex":"P","heat_offset":-1,"avatar":"20160429120225741.jpg","author_name":"PSY","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160429/20160429120225741.jpg"}]',
            DataSingerKorea1 = JSON.parse(jsonSingerKorea1),

            jsonSingerKorea2= '[{"play_times":643388,"author_id":18815,"sort_offset":-2287,"cindex":"S","heat_offset":1,"avatar":"20160418100501854.jpg","author_name":"少女时代","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160418/20160418100501854.jpg"},{"play_times":587318,"author_id":18201,"sort_offset":10,"cindex":"S","heat_offset":1,"avatar":"20140213165111325756.jpg","author_name":"Sara","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20140213/20140213165111325756.jpg"},{"play_times":522250,"author_id":17391,"sort_offset":-42,"cindex":"T","heat_offset":2,"avatar":"20160428141501284208.jpg","author_name":"太阳","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160428/20160428141501284208.jpg"},{"play_times":495010,"author_id":90573,"sort_offset":-16,"cindex":"F","heat_offset":3,"avatar":"20160425104751503.jpg","author_name":"防弹少年团","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160425/20160425104751503.jpg"},{"play_times":479597,"author_id":192419,"sort_offset":2,"cindex":"H","heat_offset":1,"avatar":"20161011114942779.jpg","author_name":"黄致列","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20161011/20161011114942779.jpg"}]',
            DataSingerKorea2 = JSON.parse(jsonSingerKorea2),

            jsonSingerKorea3= '[{"play_times":455504,"author_id":84465,"sort_offset":-5,"cindex":"A","heat_offset":1,"avatar":"20161215184233903.jpg","author_name":"Apink","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20161215/20161215184233903.jpg"},{"play_times":401465,"author_id":177486,"sort_offset":-89,"cindex":"G","heat_offset":5,"avatar":"20141121094748661857.jpg","author_name":"GD X TAEYANG","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20141121/20141121094748661857.jpg"},{"play_times":347623,"author_id":18967,"sort_offset":2,"cindex":"J","heat_offset":4,"avatar":"20160905104458149.jpg","author_name":"July","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160905/20160905104458149.jpg"},{"play_times":344916,"author_id":85137,"sort_offset":-14,"cindex":"A","heat_offset":10,"avatar":"20160516144648737671.jpg","author_name":"AOA","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160516/20160516144648737671.jpg"},{"play_times":339008,"author_id":17658,"sort_offset":16,"cindex":"B","heat_offset":6,"avatar":"20150324152438788516.jpg","author_name":"白智英","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20150324/20150324152438788516.jpg"}]',
            DataSingerKorea3 = JSON.parse(jsonSingerKorea3),

            // 其他
            jsonSingerOther1= '[{"play_times":2530721,"author_id":83684,"sort_offset":-17,"cindex":"Q","heat_offset":-3,"avatar":"20151216113949674305.jpg","author_name":"群星","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20151216/20151216113949674305.jpg"},{"play_times":160951,"author_id":194139,"sort_offset":63,"cindex":"T","heat_offset":2,"avatar":"20150714141909764174.jpg","author_name":"Ten","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20150714/20150714141909764174.jpg"},{"play_times":107500,"author_id":29962,"sort_offset":150,"cindex":"L","heat_offset":-5,"avatar":"20140218093900627425.jpg","author_name":"Ludwig van Beethoven","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20140218/20140218093900627425.jpg"},{"play_times":100111,"author_id":89171,"sort_offset":178,"cindex":"W","heat_offset":-5,"avatar":"20140522115348826933.jpg","author_name":"王程明","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20140522/20140522115348826933.jpg"},{"play_times":85283,"author_id":86431,"sort_offset":-47,"cindex":"H","heat_offset":3,"avatar":"20140515111045784578.jpg","author_name":"HKT","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20140515/20140515111045784578.jpg"}]',
            DataSingerOther1 = JSON.parse(jsonSingerOther1),

            jsonSingerOther2= '[{"play_times":79998,"author_id":175747,"sort_offset":225,"cindex":"B","heat_offset":-3,"avatar":"20150716101612406088.jpg","author_name":"般禅梵唱妙音组","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20150716/20150716101612406088.jpg"},{"play_times":76844,"author_id":158207,"sort_offset":118,"cindex":"S","heat_offset":6,"avatar":"20161117145023270.jpg","author_name":"Sara Nusara Poongprasert","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20161117/20161117145023270.jpg"},{"play_times":74603,"author_id":85887,"sort_offset":-45,"cindex":"N","heat_offset":13,"avatar":"20160613184236123214.jpg","author_name":"Nicoleta Matei","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160613/20160613184236123214.jpg"},{"play_times":47684,"author_id":98995,"sort_offset":130,"cindex":"#","heat_offset":-31,"avatar":"20160918003820219.jpg","author_name":"Lata Mangeshkar","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160918/20160918003820219.jpg"},{"play_times":46769,"author_id":87943,"sort_offset":-681,"cindex":"C","heat_offset":-115,"avatar":"20130531162619140.jpg","author_name":"Crazy Frog","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20130531/20130531162619140.jpg"}]',
            DataSingerOther2 = JSON.parse(jsonSingerOther2),

            jsonSingerOther3= '[{"play_times":44255,"author_id":173839,"sort_offset":111,"cindex":"P","heat_offset":6,"avatar":"20150123162124655106.jpg","author_name":"Punch","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20150123/20150123162124655106.jpg"},{"play_times":43305,"author_id":89115,"sort_offset":20,"cindex":"M","heat_offset":-16,"avatar":"20130531163023326.jpg","author_name":"MC佳瑶","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20130531/20130531163023326.jpg"},{"play_times":41287,"author_id":89292,"sort_offset":149,"cindex":"A","heat_offset":18,"avatar":"20130531163207542.jpg","author_name":"Arash","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20130531/20130531163207542.jpg"},{"play_times":38228,"author_id":153855,"sort_offset":-81,"cindex":"M","heat_offset":21,"avatar":"20160328181557338549.jpg","author_name":"Mike.D.Angelo","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160328/20160328181557338549.jpg"},{"play_times":37900,"author_id":559054,"sort_offset":-404,"cindex":"L","heat_offset":-32,"avatar":"20160825102220967.jpg","author_name":"罗锟","imgurl":"http://singerimg.kugou.com/uploadpic/pass/softhead/240/20160825/20160825102220967.jpg"}]',
            DataSingerOther3 = JSON.parse(jsonSingerOther3);

    </script>
	<script type="text/javascript" src="index_files/index_77651c415d.js"></script>
	<script type="text/javascript">
        (function(){
            //监控上报
            var jsErrorData = [],
            jsLogerTimeout = null;
            window.onerror = function (msg, url, lineNo, columnNo, error) {
                var errorData = {
                        msg: msg,
                        url: url,
                        crUrl : location.href,
                        lineNo: lineNo,
                        columnNo: columnNo,
                        error: error,
                        ua: navigator.userAgent, 
                        kugouid : window.kugou_id || 'null'
                    };
                    jsErrorData.push(errorData);
                    clearTimeout(jsLogerTimeout);
                    jsLogerTimeout = setTimeout(function(){
                        if(jsErrorData.length){
                            $.post('http://stat.www2.kugou.com/node/weblog/jsloger',{"key":"home_jserror","data":jsErrorData});
                            jsErrorData = [];//3.5秒内只发送一次
                        }
                    },8000);
                return false;
            };
        })();
        
    </script>
	<script type="text/javascript">
        // 百度统计 
        var _hmt = _hmt || [];
        (function() {
          var hm = document.createElement("script");
          hm.src = "//hm.baidu.com/hm.js?aedee6983d4cfc62f509129360d6bb3d";
          var s = document.getElementsByTagName("script")[0]; 
          s.parentNode.insertBefore(hm, s);
        })();

        // apm统计
        (function() {
          var apm = document.createElement("script");
          apm.src = "/root/javascripts/jslib/collect.js?appid=1010";
          var s = document.getElementsByTagName("script")[0]; 
          s.parentNode.insertBefore(apm, s);
        })();
    </script>
<!-- 	<script src="index_files/hijacked-min.js"></script>
 -->	<!-- Wed Dec 28 2016 18:39:00 GMT+0800 (CST) -->
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
</body>
</html>
