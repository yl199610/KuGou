<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><style type="text/css" id="47577775990"></style><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<base href="/KuGou/">
<title>歌手_乐库频道_酷狗网</title>
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet" href="easyui/themes/default/easyui.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
<meta name="keywords" content="酷狗2013正式版, 薛之谦，薛之谦专辑，薛之谦单曲、薛之谦下载，歌手,明星,音乐,在线音乐,在线听歌,听歌,新专辑,港台,日本,韩国,欧美,英国">
<meta name="description" content="酷狗官方网站是中国最新最全的在线正版音乐网站,提供最新的在线音乐服务、免费音乐下载、最新的音乐播放器下载。">
<link rel="stylesheet" href="./singermsg_files/main.css" type="text/css">
<link href="http://www.kugou.com/yy/static/images/favicon.ico" rel="shortcut icon">
<script src="./singermsg_files/hm.js"></script><script type="text/javascript" src="./singermsg_files/base-min.js"></script>
<script type="text/javascript">
try{
sdnClick(11981);
sdnClick(12085);
}catch(ex){}

    //歌手id
    var singerId = 3060;

    if((singerId === 192419 || singerId === 6335) && document.referrer !== '' && !/^https?:\/\/www\.kugou\.com\//.test(document.referrer)){
        //检测平台
        var system ={win : false, mac : false, xll : false };
        var p = navigator.platform;
        system.win = p.indexOf("Win") == 0;
        system.mac = p.indexOf("Mac") == 0;
        system.x11 = (p == "X11") || (p.indexOf("Linux") == 0);
        //跳转语句
        if(!(system.win||system.mac||system.xll)){
            window.location.href = singerId === 192419 ? "http://huodong.kugou.com/a2016/html/singer4Phone/singer2.html" : "http://huodong.kugou.com/a2016/html/singer4Phone/singer3.html";
        } else {
            window.location.href = singerId === 192419 ? "http://huodong.kugou.com/a2016/html/singer4/singer2.html" : "http://huodong.kugou.com/a2016/html/singer4/singer3.html";
        }
    }


</script>
<script src="./singermsg_files/share.js"></script><link rel="stylesheet" href="./singermsg_files/share_style0_16.css"><link rel="stylesheet" href="./singermsg_files/slide_share.css"></head>
<body>
<link rel="stylesheet" data-embed="" href="./singermsg_files/header.css">
<!--[if IE 6]>
<script type="text/javascript" src="http://www.kugou.com/common/js/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('.icon,.logo');
</script>
<![endif]-->
<div class="header">
    <h1 class="logo"><a href="http://www.kugou.com/"><img src="./singermsg_files/logo.png" alt=""></a></h1>
    <div class="search_wrapper top_search">
        <div class="search_input"><input type="text" placeholder="周杰伦 告白气球"><div class="searh_btn"><i class="search_icon"></i><span>搜索</span></div></div>
        <div class="search_recommend top_search_recommend">

        </div>
        <div class="search_histroy top_search_histroy">
            
        </div>
    </div>
    <div class="topNav fr">
        <ul>
            <li><a target="_blank" href="http://www.kugou.com/shop/help/serviceCenter">客服中心</a></li>
            <li><a target="_blank" href="http://www.kugou.com/job/hr/html/index.html">招贤纳士</a></li>
            <li><a target="_blank" href="http://vip.kugou.com/">会员中心 </a></li>
        </ul>
        <div class="login_area">
            <div id="login_in" class="clearfix"><a class="login_btn" id="login_btn">登录</a><a target="_blank" href="http://www.kugou.com/reg/web/" class="regin_btn" id="regin_btn">注册</a></div>
            <div id="login_out" class="clearfix">
                <img id="user_img" class="user_img" src="">
                <span id="user_name" class="user_name"></span>
            </div>
            <div id="user_menu" class="user_menu">
                    <div class="topArrow1"></div>
                    <div class="topArrow2"></div>
                    <ul>
                        <li><a target="_blank" href="http://www.kugou.com/newuc/user/uc/"><span class="user_icon1"></span>个人帐号</a></li>
                        <li><a href="http://www.kugou.com/newuc/login/outlogin"><span class="user_icon2"></span>退出登录</a></li>
                    </ul>
                </div>
        </div>
    </div>
</div>
<div class="navWrap">
    <div class="nav">
        <ul class="homeNav">
            <li><a class="normal" href="http://www.kugou.com/">首页</a></li>
            <li><a class="normal" href="http://www.kugou.com/yy/html/rank.html">榜单</a></li>
            <li><a class="normal" id="productCenter" href="http://download.kugou.com/">下载客户端</a></li>
            <li class="more" id="more"><a href="" class="icon icon-nav6" id="showMore">更多</a>
            </li>
        </ul>
        <ul class="secondMenu" id="secondMenu" style="display: none;">
            <li><a href="http://www.kugou.com/fmweb/html/index.html">电台</a></li>
            <li><a href="http://www.kugou.com/mvweb/html/">MV</a></li>
            <li><a href="http://www.kugou.com/yy/html/special.html">歌单</a></li>
            <li><a href="http://www.kugou.com/yy/html/singer.html">歌手</a></li>
        </ul>
        <ul class="subNav">
            <li><a target="_blank" href="http://fanxing.kugou.com/?action=spreadIndex&id=3" class="icon icon-nav1">音乐直播</a></li>
            <li><a target="_blank" href="http://live.kugou.com/" class="icon icon-nav2">酷狗LIVE</a></li>
            <li><a target="_blank" href="http://www.kugou.com/imusic/" class="icon icon-nav3">音乐人</a></li>
            <li><a target="_blank" href="http://games.kugou.com/?f=7" class="icon icon-nav4">游戏</a></li>
            <li><a target="_blank" href="http://www.kugou.com/shop" class="icon icon-nav5">商城</a></li>
        </ul>
    </div>
</div>
<script type="text/javascript" src="./singermsg_files/jquery.min.js"></script>
<script type="text/javascript" src="./singermsg_files/lib.js"></script>
<script type="text/javascript" src="./singermsg_files/common_header.min.js"> </script>
<!--歌手内页-->
<div class="wrap clear_fix">
	<!-- banner -->
	<div style="margin:10px 0;display:none;" id="sobanner"><a href="http://fanxing.kugou.com/?action=spreadIndex&id=14" onclick="sdnClick(16862);sdnClick(16863)" title="打开繁星看精彩直播" target="_blank"><img src="./singermsg_files/20130201100550152814.png" width="960" height="115" alt="打开繁星看精彩直播"></a></div>
	<script type="text/javascript">
	//so.com 来源统计
	if(document.referrer.indexOf("music.so.com") != "-1"){
		sdnClick(16858);//歌手
		sdnClick(16859);//全站
		document.getElementById("sobanner").style.display = "block";
	}
	</script>
	<!--/banner -->
	<div class="sng_ins_1">
		<div class="mbx">我的位置 &gt; <a title="歌手" href="http://www.kugou.com/yy/html/singer.html">歌手</a> &gt; <span>薛之谦</span></div>
		<div class="top">
			<img alt="薛之谦" src="images/1.jpg"  height="142" width="142">
			<div class="intro">
				<div class="clear_fix">
					<strong title="薛之谦">薛之谦</strong>
				</div>
				<p></p>
			</div>
	</div>
    <div class="other_singer">
    	<h5>相似歌手</h5>
        <ul class="clear_fix">
        									<li class="f">
					<a title="李玉刚" class="pic" onclick="sdnClick(12087)" hidefocus="true" href="http://www.kugou.com/yy/singer/home/2018.html">
						<img alt="李玉刚" src="./singermsg_files/20140304154338526832.jpg" _src="http://singerimg.kugou.com/uploadpic/pass/softhead/120/20140304/20140304154338526832.jpg" _def="http://www.kugou.com/yy/static/images/default3.jpg" height="68" width="68">
					</a>
					<strong><a onclick="sdnClick(12087)" title="李玉刚" href="http://www.kugou.com/yy/singer/home/2018.html">李玉刚</a></strong>
				</li>
								<li class="s">
					<a title="郁可唯" class="pic" onclick="sdnClick(12087)" hidefocus="true" href="http://www.kugou.com/yy/singer/home/6539.html">
						<img alt="郁可唯" src="./singermsg_files/20170105123749140115.jpg" _src="http://singerimg.kugou.com/uploadpic/pass/softhead/120/20170105/20170105123749140115.jpg" _def="http://www.kugou.com/yy/static/images/default3.jpg" height="68" width="68">
					</a>
					<strong><a onclick="sdnClick(12087)" title="郁可唯" href="http://www.kugou.com/yy/singer/home/6539.html">郁可唯</a></strong>
				</li>
							        </ul>
    </div>
    <div class="clear"></div>
    <div id="text" class="singer_intro" style="opacity: 0; z-index: -1;">
		<div class="bordr_top"></div>
		<div class="bordr_cen">
			<div class="singer_content jspScrollable" id="singer_content" style="height: 240px; overflow: hidden; padding: 0px; width: 300px;" tabindex="0">
				
			<div class="jspContainer" style="width: 300px; height: 240px;"><div class="jspPane" style="padding: 0px; top: 0px; width: 288px;"><p>外文名：Joker 国籍：中国 出生地：上海 职业：歌手、演员、主持人 代表作品：《认真的雪》《演员》《丑八怪》《绅士》 简介：薛之谦，1983年7月17日出生于上海市，中国内地男歌手。 2006年6月9日，薛之谦发行首张个人原创同名专辑《薛之谦》；2007年在中国原创音乐流行榜上凭借《认真的雪》获得内地金曲奖；2008年11月26日发行第三张个人原创专辑《深深爱过你》；12月20日举行首场演唱会“谦年传说”；2012年7月17日发行专辑《几个薛之谦》。2013年11月发行专辑《意外》。 2015年4月1日，薛之谦主演《男人帮·朋友》预告片发布；6月10日正式签约海蝶音乐公司，升为制作人。 从艺历程：2006年6月9日薛之谦发行首张个人原创同名专辑《薛之谦》，他个人包揽了六首曲和五首词的创作，最后的一曲《认真的雪》记录了他第一次深刻的感情经历。 2007年7月31日发行第二张个人原创专辑《你过得好吗》。 2008年3月29日在上海大舞台举行的第十五届东方风云榜颁奖盛典献唱《你过得好吗》；7月推出个人单曲《传说》；11月26日发行第三张个人原创专辑《深深爱过你》；12月20日举行首场演唱会“谦年传说”。 2009年9月21日推出单曲《未完成的歌》，这是薛之谦逾一年的创作，迟迟没有发表是因为一直没有很好的词来配合这首曲，所以他一直等到能让他觉得感动的歌词。 2011年3月14日推出单曲《我终于成了别人的女人》，这首歌曲的编曲由音乐人常石磊编写，音乐录影带由周杰伦的御用导演珍妮花拍摄。 2012年7月17日发行专辑《几个薛之谦》，这张专辑筹备期长达两年半，其间，薛之谦陆续发行《我终于成了别人的女人》《伏笔》《几个你》等多首单曲。 2013年11月发行专辑《意外》，在专辑录制过程中，薛之谦赴新西兰做宣传时赶上入住酒店突发火灾，在泰国拍摄MV时又遭遇车祸；12月，薛之谦在浙江卫视的《我爱记歌词》节目中“金曲K歌王”环节演唱那英的《征服》。 2015年06月08日全创作EP《绅士》正式在线发布，主打歌《演员》曝MV，6月10日在京举行薛之谦《绅士》全亚洲发布会。10月26日薛之谦全新EP同名主打歌《一半》MV正式发布，展现爱之痛。 2015年11月19日薛之谦专辑新曲《Stay Here》MV首发，纪念自己曾经的倔强和已逝去的爱情。同年搭档朴海镇、张亮参演电视剧《男人帮·朋友》。 2016年2月16日薛之谦以固定嘉宾加盟综艺节目《谁是大歌神》。2016年3月薛之谦在酷音乐亚洲盛典颁奖典礼上斩获二个大奖，歌曲《演员》1年播放量目前为止高达将近4亿，并凭借《演员》，《一半》等歌曲获得多个奖项。 5月17日发行全新EP《初学者》，6月1日MV上线，这首歌是薛之谦独自包揽词曲，此次再度与金曲奖最佳音乐录像带奖得主黄中平导演合作拍MV。薛之谦一改深情动人的情歌风格，加入摇滚风充满了征战与挑衅的意味，让人听得热血淋漓，大呼过瘾！ 荣誉记录：东方风云榜 ▪ 2016 第二十三届 十大金曲 《一半》 （获奖） ▪ 2014 第二十一届 最佳唱作人 （获奖） ▪ 2014 第二十一届 十大金曲 《意外》 （获奖） ▪ 2013 第二十届 最具突破创作歌手 （获奖） ▪ 2013 第二十届 二十年至尊金曲 《认真的雪》 （获奖） ▪ 2012 第十九届 年度对唱歌曲 《我们爱过就好》 （获奖） ▪ 2012 第十九届 十大金曲 《我终于成了别人的女人》 （获奖） ▪ 2010 第十七届 最佳年度飞跃 （获奖） ▪ 2009 第十六届 最佳舞台演绎奖 （获奖） ▪ 2008 第十五届 本地最受欢迎歌手 （获奖） ▪ 2007 第十四届 十大金曲 《认真的雪》 （获奖） ▪ 2006 第十三届 新人奖银奖 （获奖） 百事风云榜颁奖盛典 ▪ 2006 内地最受欢迎男歌手五强 （获奖） 雪碧中国原创音乐流行榜 ▪ 2008 第七届 最具潜质歌手奖 《你过得好吗》 （获奖） ▪ 2008 第七届 最具潜质歌手大奖 （获奖） ▪ 2007 第六届 飞跃表现奖 （获奖） ▪ 2007 第六届 内地金曲 《认真的雪》 （获奖） ▪ 2006 第五届 新人奖 （获奖） 全球华语歌曲排行榜 ▪ 2013 第十三届 地区杰出歌手 上海：薛之谦 （获奖） ▪ 2011 第十一届 地区杰出歌手 上海：薛之谦 （获奖） ▪ 2011 第十一届 年度二十大金曲 《我终于成了别人的女人》 （获奖） ▪ 2009 第九届 年度金曲奖 深深爱过你 （获奖） ▪ 2006 第六届 最受欢迎男新人奖 （获奖） 中国风尚大典 ▪ 2006 内地风尚新人奖 （获奖） 第四届特步东南劲爆音乐榜颁奖典礼 ▪ 2006 内地劲爆最受欢迎男歌手奖 （获奖） 星光大典 ▪ 2006 最具人气偶像奖 （获奖） 天地英雄校园群英会 ▪ 2006 天地英雄新人奖 （获奖） 雪碧中国原创音乐流行榜 ▪ 2007 飞跃表现奖 （获奖） 华语榜中榜颁奖礼 ▪ 2016 第二十届 榜中榜最受欢迎唱作歌手 （获奖） ▪ 2007 第十三届 传媒推荐奖 （获奖） Music Radio中国TOP排行榜 ▪ 2016 年度最佳男歌手 （获奖） ▪ 2016 2015年年度金曲 《演员》 （获奖） ▪ 2014 年度传媒推荐男歌手 （获奖） ▪ 2014 年度最佳金曲 《丑八怪》 （获奖） ▪ 2013 MusicRadio音乐之声推荐唱片内地 《几个薛之谦》 （获奖） ▪ 2013 内地最受欢迎男歌手 （提名） ▪ 2013 内地年度传媒推荐男歌手 （提名） ▪ 2009 内地最受欢迎男歌手 《你过得好吗》 （获奖） ▪ 2009 年度最佳舞台演绎奖 （获奖） ▪ 2009 内地最受欢迎男歌手 （提名） ▪ 2009 内地最佳男歌手 （提名） ▪ 2009 内地最佳舞台演绎歌手 （提名） ▪ 2008 内地年度最受欢迎男歌手 （获奖） ▪ 2008 内地年度金曲 《你过得好吗》 （获奖） ▪ 2007 内地校园人气大奖 薛之谦同名专辑 （获奖） 无线音乐盛典 ▪ 2008 第二届 无线音乐最具潜力创作偶像 （获奖） 北京流行音乐典礼 ▪ 2009 年度金曲奖 深深爱过你 （获奖） ▪ 2008 20大金曲 （获奖） 中国原创歌曲榜颁奖礼 ▪ 2009 内地最佳舞台表现奖 （获奖） ▪ 2009 最佳专辑奖 深深爱过你 （获奖） CCTV风云音乐 ▪ 2010 媒体推荐创新实力歌手奖 （获奖） ▪ 2010 年度网络最受欢迎金曲奖 （获奖） 全球中文音乐榜上榜 ▪2015 全球中文音乐榜上榜冠军歌曲 《演员》 （获奖） 酷音乐亚洲盛典 ▪ 2016 年度电视音乐金曲艺人 （获奖） ▪ 2016 年度最受欢迎创作人 （获奖） 音悦v榜 ▪ 2016 第四届 年度全能艺人 （获奖） ▪ 2016 第四届 年度风向艺人 （获奖） ▪ 2014 第二届 内地年度创作歌手 （获奖） 社会活动：2007年，薛之谦作为流行音乐的代表,和其他艺术家一起前往俄罗斯，参加由中华人民共和国文化部和俄罗斯联邦文化电影署联合举办的中国文化节重点项目”沿伏尔加河友谊之旅”，在沿河11个城市作访问演出。 2008年，薛之谦当选火炬手，在河南省郑州市传递火炬。 2013年6月2日参加玫琳凯LOVE.自然.KISS环保时尚音乐会。 2016年3月18日薛之谦暖心支持公益，关爱留守儿童。</p></div><div class="jspVerticalBar"><div class="jspCap jspCapTop"></div><div class="jspTrack" style="height: 240px;"><div class="jspDrag" style="height: 24px;"><div class="jspDragTop"></div><div class="jspDragBottom"></div></div></div><div class="jspCap jspCapBottom"></div></div></div></div>
		</div>
		<div class="bordr_btm"></div>
    </div>
    <ul class="tab clear_fix">
		<li id="song" class="current current">单曲<span></span></li>
<!-- 		<li id="album"class="">专辑<span></span></li>
		<li id="mv">MV<span></span></li> -->
    </ul>
    <div id="content">
		<!--单曲-->
		<div style="display: block;" id="ss">
			<div class="sng_song">
				<h4 class="dq">
					<a class="play" id="aplayAll" href="javascript:void(0)" title="播放" >播放</a>
					<input onclick="clickAll(this)" id="selAll" checked="checked" type="checkbox">全选
				</h4>
				<ul id="song_container">
                    	   <li><a href="javascript:;"hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 演员|57B83EAF673D77EE21009CBD8FD05BD6|261000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">01</span><span class="text"><i>演员</i></span></a></li>
                           <li><a href="javascript:;" focus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 丑八怪|2688ADB1CA449448388270987BDCE6E8|253000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">02</span><span class="text"><i>丑八怪</i></span></a></li>
                           <li><a href="javascript:;" hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 你还要我怎样|0CEDF221CA6AD22E7A18F5043423F967|310000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">03</span><span class="text"><i>你还要我怎样</i></span></a></li>
                           <li><a href="javascript:;" hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 刚刚好|DE241892B9C235A195C145EA1FCAE46E|251000"><span title="分享" class="share"></span><span title="播放" class="listen"></span><span class="num1">04</span><span class="text"><i>刚刚好</i></span></a></li>
                           <li><a href="javascript:;"  hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 绅士|5F4D1E64E3BF890658A60CA8DC34096B|291000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">05</span><span class="text"><i>绅士</i></span></a></li>
                           <li><a href="javascript:;"  hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 认真的雪|5A62C5595EDEB1BF81D82A80DA874870|259000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">06</span><span class="text"><i>认真的雪</i></span></a></li>
                           <li><a href="javascript:;" hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 意外|C726C14611F18C9410C5ED2BEF770DFD|287000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">07</span><span class="text"><i>意外</i></span></a></li>
                           <li><a href="javascript:;"  hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦、欧阳娜娜 - 小幸运(Live)|492AA4220A6011D6CEE7D70D9116D90B|262000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">08</span><span class="text"><i>小幸运(Live)</i></span></a></li>
                           <li><a href="javascript:;"  hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 我好像在哪见过你|BD6F26F9F672453186D55D3118000F04|279000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">09</span><span class="text"><i>我好像在哪见过你</i></span></a></li>
                           <li><a href="javascript:;" hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 方圆几里|D8AB5D79D8D653625EFDC2BB3BFD4B24|263000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">10</span><span class="text"><i>方圆几里</i></span></a></li>
                           <li><a href="javascript:;" hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 我知道你都知道|AA6F0D9647B60E74F2E916A53EA35E86|274000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">11</span><span class="text"><i>我知道你都知道</i></span></a></li>
                           <li><a href="javascript:;"  hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 火星人来过|66345969A7DB1AE75BC02F664B1E5DBA|216000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">12</span><span class="text"><i>火星人来过</i></span></a></li>
                           <li><a href="javascript:;"  hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 一半|1C2DEE3425CDAB8C14291E9088D2EA02|286000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">13</span><span class="text"><i>一半</i></span></a></li>
                           <li><a href="javascript:;"  hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 其实|6DA6FCB5D31295CEB96B8BC07983AAFE|242000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">14</span><span class="text"><i>其实</i></span></a></li>
                           <li><a href="javascript:;"  hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 初学者|EB0F1D9693558A2056FA46D0D431A81A|279000"><span title="分享" class="share"></span><span title="播放" class="listen"></span><span class="num1">15</span><span class="text"><i>初学者</i></span></a></li>
                           <li><a href="javascript:;"  hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦、欧阳娜娜 - 绅士(Live)|27BB377B1A8F68286CAD3C389C063CFC|318000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">16</span><span class="text"><i>绅士(Live)</i></span></a></li>
                           <li><a href="javascript:;"  hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 下雨了|D8089B11DEC7EBB16C6E9A07A5139BE2|305000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">17</span><span class="text"><i>下雨了</i></span></a></li>
                           <li><a href="javascript:;"  hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 几个你|5AAED087D6380CBB09F200CBDED562E8|316000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">18</span><span class="text"><i>几个你</i></span></a></li>
                           <li><a href="javascript:;" hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦、黄龄 - 来日方长【电影《我不是潘金莲》方圆版推广曲】|C4BA9F2F18AB1F233A951F5C2E77B0EA|234000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">19</span><span class="text"><i>来日方长【电影《我不是潘金莲》方圆版推广曲】</i></span></a></li>
                           <li><a href="javascript:;"  hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦、张婉清 - 演员(Live)|5D86BB27B622A4FCF9CEC208E65615B3|212000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">20</span><span class="text"><i>演员(Live)</i></span></a></li>
                           <li><a href="javascript:;" hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 你还要我怎样(Live)|4ABABE91E6A1AA9C560A5939FB783D90|303000"><span title="分享" class="share"></span><span title="播放" class="listen"></span><span class="num1">21</span><span class="text"><i>你还要我怎样(Live)</i></span></a></li>
                           <li><a href="javascript:;" hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 未完成的歌|8762BE80C60A7D9E3C7FD1B0795AE945|260000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">22</span><span class="text"><i>未完成的歌</i></span></a></li>
                           <li><a href="javascript:;"  hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 丑八怪+演员(Live)|B2FDDCD8D95E444F8027505C17989C70|476000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">23</span><span class="text"><i>丑八怪+演员(Live)</i></span></a></li>
                           <li><a href="javascript:;"  hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 为了遇见你|106B21F48375175E522034FA4AB699A2|240000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">24</span><span class="text"><i>为了遇见你</i></span></a></li>
                           <li><a href="javascript:;"  hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 花儿和少年|DDB54E7E55AFC9D0607B8BE74006A864|262000"><span title="分享" class="share"></span><span title="播放" class="listen"></span><span class="num1">25</span><span class="text"><i>花儿和少年</i></span></a></li>
                           <li><a href="javascript:;"  hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦、张信哲 - 信仰+演员+爱如潮水(Live)|991827A53EEE2D5560F919820223AE4A|339000"><span title="分享" class="share"Live)></span><span title="播放" class="listen"></span><span class="num1">26</span><span class="text"><i>信仰+演员+爱如潮水(Live)</i></span></a></li>
                           <li><a href="javascript:;"  hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 我终于成了别人的女人|23D5DF1C04447EE73BEB8133BC9A0B72|306000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">27</span><span class="text"><i>我终于成了别人的女人</i></span></a></li>
                           <li><a href="javascript:;"  hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦、谭晶 - 慢慢(Live)|D63FDEB9B534DB911380A35CCA01F16D|248000"><span title="分享" class="share" ></span><span title="播放" class="listen"></span><span class="num1">28</span><span class="text"><i>慢慢(Live)</i></span></a></li>
                           <li><a href="javascript:;"  hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 深深爱过你 (今生)|69F1627D7F41549548D4621BFA8E4DB1|257000"><span title="分享" class="share"></span><span title="播放" class="listen"></span><span class="num1">29</span><span class="text"><i>深深爱过你 (今生)</i></span></a></li>
                           <li><a href="javascript:;" hidefocus="true"><input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="薛之谦 - 黄色枫叶|2DB7C96945B4DEE98177F428DC1379A1|252000"><span title="分享" class="share"></span><span title="播放" class="listen"></span><span class="num1">30</span><span class="text"><i>黄色枫叶</i></span></a></li>
                 </ul>
				<div id="song_nvg" class="nvg"><span id="mypage"><a style="visibility:hidden" id="page_first" title="首页" class="direct btnPage" href="javascript:void(0)" onclick="GotoNext(1,30);return false;">首页</a><span style="visibility:hidden" class="PrePageSpan"><a id="page_pre_" href="javascript:void(0)" title="上一页" class="direct btnPage" return="" false;"="">上一页</a></span><span id="page_1" class="current">1</span><span style="visibility:hidden" class="NextPageSpan"><a id="page_next_2" href="javascript:void(0)" title="下一页" class="direct btnPage" onclick="GotoNext(2,30);return false;">下一页</a></span><a style="visibility:hidden" id="page_last_" title="尾页" href="javascript:void(0)" class="direct btnPage">尾页</a></span></div>
			</div>
		</div>

		<!--专辑-->
		<div style="display:none">
			<div class="sng_album1">
				<ul id="album_container" class="clear_fix"></ul>
				<div id="album_nvg" class="nvg"></div>
			</div>
		</div>

		<!--MV-->
		<div style="display:none">
			<div class="sng_mv smv">
				<ul id="mv_container"></ul>
				<div class="clear"></div>
				<div id="mv_nvg" class="nvg"></div>
			</div>
		</div>

    </div>
  </div>
</div>
    <!--百度分享-->
  	<div id="share_box" class="bdsharebuttonbox bdshare-button-style0-16" data-tag="share_1" data-bd-bind="1488029399208">
        <a class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>

		<a class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
		<a class="bds_renren" data-cmd="renren" title="分享到人人网"></a>
		<a class="bds_douban" data-cmd="douban" title="分享到豆瓣网"></a>
        <span class="close" title="关闭"> </span>
        <i></i>
	</div>
    <!--/百度分享-->

<!--脚步-->
<link rel="stylesheet" data-embed="" href="./singermsg_files/footer.css">
<div class="footerWrapper">
    <div class="footer">
        <div class="links">
            <a hidefocus="true" href="http://www.kugou.com/about/aboutus.html" target="_blank">关于酷狗</a> | <a hidefocus="true" href="http://www.kugou.com/about/adservice.html" target="_blank">广告服务</a> | <a hidefocus="true" target="_blank" href="http://www.kugou.com/about/copyRightGuide.html">版权指引</a>| <a hidefocus="true" target="_blank" href="http://www.kugou.com/about/protocol.html">用户服务协议</a> | <a hidefocus="true" target="_blank" href="http://www.kugou.com/company/partners.html">推广合作</a> | <a hidefocus="true" target="_blank" href="http://www.kugou.com/imusic/">酷狗音乐人</a> |<a hidefocus="true" target="_blank" href="http://tui.kugou.com/">酷狗音乐推</a> |<a hidefocus="true" href="http://www.kugou.com/job/hr/html/" target="_blank">招聘信息</a> | <a hidefocus="true" href="http://www.kugou.com/shop/help/serviceCenter" target="_blank">客服中心</a> | <a hidefocus="true" href="http://survey.kugou.com/default/index/i=40CD7B8437008E65E67D82D9044C15C99C2E699859F51338" target="_blank">用户体验提升计划</a>
        </div>
        <div class="copyright">
            <p>我们致力于推动网络正版音乐发展，相关版权合作请联系copyrights@kugou.com</p>
            <p>信息网络传播视听节目许可证 1910564 增值电信业务经营许可证粤B2-20060339 &nbsp;&nbsp;&nbsp;<a hidefocus="true" target="_blank" href="http://www.miitbeian.gov.cn/">粤ICP备09017694号-2</a><span class="footerIcon"><a target="_blank" href="http://sq.ccm.gov.cn/ccnt/sczr/service/business/emark/toDetail/E64D2439A71544C7B995FC0A53D8F965">&nbsp;&nbsp;&nbsp;&nbsp;</a></span></p>
            <p>广播电视节目制作经营许可证（粤）字第01270号&nbsp;&nbsp;&nbsp;&nbsp;营业性演出许可证穗天演440106026</p>
            <p>穗公网监备案证第44010650010167&nbsp;&nbsp;&nbsp;&nbsp;互联网药品信息服务资格证编号（粤）-非经营性-2012-0018</p>
            <p>Copyright&nbsp;&nbsp;©&nbsp;&nbsp;2004-2017 KuGou-Inc.All Rights Reserved
                <a hidefocus="true" class="office-verification" href="http://netadreg.gzaic.gov.cn/ntmm/WebSear/WebLogoPub.aspx?logo=440106106022006022000209" target="_blank"></a> 
            </p>
        </div>
    </div>
</div>
<!--百度统计-->
<script>
   var _hmt = _hmt || [];
   (function() {
     var hm = document.createElement("script");
     hm.src = "//hm.baidu.com/hm.js?aedee6983d4cfc62f509129360d6bb3d";
     var s = document.getElementsByTagName("script")[0];
     s.parentNode.insertBefore(hm, s);
   })();
</script>
<script>
  setTimeout(function() {
    var d = document.createElement("script");
    d.src = "http://static.kgimg.com/common/js/min/hijacked-min.js";
    document.body.appendChild(d);
  }, 2000);
</script>


<script type="text/javascript" src="./singermsg_files/Tab-min.js"></script>
<script type="text/javascript" src="./singermsg_files/lazyload-min.js"></script>
<script type="text/javascript" src="./singermsg_files/jquery.jscrollpane.js"></script>
<script type="text/javascript" src="./singermsg_files/jquery.mousewheel.js"></script>
<script type="text/javascript" src="./singermsg_files/playsong-min.js"></script>
<script type="text/javascript">
//单曲页码初始化
Kg.$('song_nvg').innerHTML = new Page(1, 30, 5, 30).GetText();

var shareObj = null;
var shareSongVal = null;
var cIndex = 'all';
var singername = '薛之谦';
var singerID = '3060';
var dataUrl = "http://www.kugou.com/yy/singer/";
var viewUrl = "http://www.kugou.com/yy/static/images/";
var albumUrlpre="http://www.kugou.com/yy/singer/";
var htmlUrl = "http://www.kugou.com/yy/singer/";
var pageSize = 24;
var currentClass = "song";
var DisplayPages = 5;
var RecordCount = 0;
var kg_domain = "http://www.kugou.com/yy/";
var songsSelectAll = 1;


//更多介绍滚动条
var singerDetail =  $('#singer_content'),
    textEle = $("#text"),
    singerDetailHeight = singerDetail.height();
textEle.css({
    opacity:0,
    zIndex:-1
})
$(".more_detail").click(function(e) {
    e.stopPropagation();
    if(textEle.css("opacity")=="1"){
        textEle.css({
            opacity:0,
            zIndex:-1
        })
    }else{
        textEle.css({
            opacity:1,
            zIndex:999 
        })
    }
    sdnClick(12086)
})
$(document).click(function(){
    textEle.css({
        opacity:0,
        zIndex:-1
    })
});
singerDetail.mousedown(function(e){
 e.stopPropagation();
})
textEle.click(function(e){
    e.stopPropagation();
});

if(singerDetailHeight>240){
    singerDetail.height(240)
    singerDetail.jScrollPane({
        hijackInternalLinks: true,
        animateScroll: true,
        autoReinitialise: true
    });
}
//单曲全选按钮初始化
if(songsSelectAll === 0){
    Kg.$('selAll').checked = false;
    Kg.$('selAll').disabled = true;
    Kg.$('aplayAll').className="play disabled";
}else{
    Kg.$('selAll').checked = true;
    Kg.$('selAll').disabled = "";
    Kg.$('aplayAll').className="play";
}

function PlayAllAndCreateList(id){
	var obj = Kg.$C("song_hid", id);
	if(obj.length == 0)
	{
		//alert("没有歌曲可以播放");
		return;
	}	
	var files = [];
	for(var i = 0; i < obj.length; i++)
	{ 
		if(obj[i].type != "hidden" && !obj[i].checked) continue;
		var arr = obj[i].value.split("|");
		var fileName = arr[0];
		var hash = arr[1];
		var time = arr[2];
		var json = {
			"Hash":hash,
			"FileName":fileName,
			"timeLen":time/1000
		};
		files.push(json);
	}
	
	if(files.length <= 0){
		alert("请选择歌曲");
		return;
	}
	KgWebSuperCall.playSongs(Kg.JSON.stringify(files), 'yueku_singer');
};

function playSingle(str){
	var arr = str.split("|");
	var fileName = arr[0];
	var hash = arr[1];
	var time = arr[2];
	var json = [{
		"Hash":hash,
		"FileName":fileName,
		"timeLen":time/1000
	}];
	KgWebSuperCall.playSongs(Kg.JSON.stringify(json), 'yueku_singer');
} 

function openMV(str){
	var arr = str.split("|");
	var fileName = arr[0];
	var hash = arr[1];
	var url = "http://mvfiles.kugou.com/mp4/" + hash.substr(0,2) + "/" + hash.substr(2,2) + "/" + hash + ".mp4";

	var file = '{"filename":"' + fileName + '", "mvurl":"' + url + '"}';

	KgWebSuperCall.playMv(file);
}

function showTab(tabId){
	var els = Kg.$T("li", Kg.$C("tab")[0]);
	if(document.all){
		els[tabId].click();
	} else {
		var e = document.createEvent("MouseEvent");
		e.initEvent("click",true,true);
		els[tabId].dispatchEvent(e);
	}	
}



t1 = new Tab(Kg.$C("tab")[0], "li", Kg.$("content"), "div",{
	callback:function(){
		Kg.$('share_box').style.display = 'none';
	}
});
new Lazyload();

var cid=Request.QueryString('classid');
if((cid=='')||(cid==null)){
	classid=0;
}else{
	classid=cid;
}
var py=Request.QueryString('py');

	


function clickAll(o){
	var els = Kg.$C("cb", "ss");
	if(o.checked == true){
		for(var i = 0; i < els.length; i++){
		        if(!els[i].disabled)
				    els[i].checked = true;	
		}	
	} else {
		for(var i = 0; i < els.length; i++){
			els[i].checked = false;	
		}	
	}
};

/*获取数据*/
function GetData(tclass,tpageSize,tRecordCount)
{	
	currentClass = tclass;
	pageSize = tpageSize;
	RecordCount = tRecordCount;
	GotoNext(1,pageSize);
};

/**/
function GotoNext(pageIndex,pageSize){
	Kg.$("selAll").checked = true;
	Kg.$('share_box').style.display = 'none';
	var url;
	var obj = Kg.$(currentClass +'_container');
	switch(currentClass){
		case "song":
			url = kg_domain + "?r=singer/song&sid=" + singerID + "&p=" + pageIndex + "&t=" + Number(new Date());
			pageSize = 30;
			break;

		case "album":
			url = kg_domain + "?r=singer/album&sid=" + singerID + "&p=" + pageIndex + "&t=" + Number(new Date());
			pageSize = 14;
			break;

		case "mv":
			url = kg_domain + "?r=singer/video&sid=" + singerID + "&p=" + pageIndex + "&t=" + Number(new Date());
			pageSize = 12;
			break;
	}
	/*
	if(RecordCount == 0){
		obj.innerHTML = "<li>暂无记录<li>";
		Kg.$C("play", "ss")[0].className += " disabled"
		return;
	}
	*/
	obj.innerHTML = "<li>正在加载...<li>";
	/*
	if(Math.ceil(RecordCount/pageSize)  > 1)
	{
		Kg.$(currentClass+'_nvg').innerHTML = new Page(pageIndex, RecordCount, DisplayPages, pageSize).GetText();
	}
	*/
	Kg.postJSON(url,{},function(json){
		if(json.status == 1 && json.total != 0){
			Kg.$(currentClass+'_nvg').innerHTML = new Page(pageIndex, json.total, DisplayPages, pageSize).GetText();

			var str = "",
				data = json.data;

	        var nohashCount = 0;
			for(i=0;i<data.length;i++){

				if(currentClass == "mv"){
					var className = (i+1)%4 == 0?"last":"";
					var singerName = data[i].name.replace(/\'/g,'\\&#039;').replace(/\"/g,'\\&quot;');
					var songName = "";

					if(data[i].name){
						songName = data[i].mv_name.replace(/\'/g,'\\&#039;').replace(/\"/g,'\\&quot;');
					}

					className = (i+1)%6 == 0?"last":"";
					var files = singerName +' - '+songName + '|' + data[i].mv_hash;
					var hash = data[i].mv_hash;
					var havaImg = data[i].have_img;
					var imgUrl = data[i].bigpic;
					/*var imgUrl = "/yueku/app/view/images/default2.jpg";
					if(havaImg == "1" && hash != null && hash.length >= 32){
						//imgUrl = "http://image4.kugou.com/mvpic/"+hash.toString().substr(0,2)+"/"+hash.toString().substr(2,2)+"/"+hash.toString()+".jpg";
						imgUrl = "http://imge.kugou.com/mvpic/"+hash.toString().substr(0,2)+"/"+hash.toString().substr(2,2)+"/"+hash.toString()+".jpg";
					}*/
					
					str += '<li class="' + className + '"><a class="pic" hidefocus="true" onclick="sdnClick(12097)" href="http://www.kugou.com/mvweb/html/mv_' +data[i].id+ '.html" target="_blank"><img onerror="this.src=\'' + kg_domain + '/static/images/default4.jpg\'" src="'+imgUrl+'" width="122" height="92" /><i onclick=""></i><b></b></a><span><a onclick="sdnClick(12097)" href="' + 'http://www.kugou.com/mvweb/html/mv_' + data[i].id + '.html' + '" target="_blank" title="'+data[i].name+'">'+data[i].name.intercept(30,"...")+'</a></span></li>';
				}else{
					var className = (i+1)%4 == 0?"last":"";
					var singerName = data[i].singername.replace(/\'/g,'\\&#039;').replace(/\"/g,'\\&quot;');
					var songName = "";
					
					if(data[i].songname){
						songName = data[i].songname.replace(/\'/g,'\\&#039;').replace(/\"/g,'\\&quot;');
					}
					
					if(currentClass == "song"){
					  

					  var index = (pageIndex - 1) * pageSize + i + 1;
					  var files = singerName +' - '+ songName +'|'+data[i].hash+'|'+data[i].duration;

						if(data[i].filesize>0){
						   str += '<li><a href="javascript:;" onclick="playSingle(\'' + files + '\');sdnClick(12093)" hidefocus="true">';
	                       str += '<input onclick="checkClkAll(event)" type="checkbox" checked="checked" class="cb song_hid" value="'+files+'" />';
						   str += '<span title="分享" class="share" ,\'' + files + '\')"></span>';
						   str += '<span title="播放" class="listen" ></span>';
	                       str += '<span class="num1">'+(index<10?'0'+index:index)+'</span><span class="text"><i>'+data[i].songname+'</i></span></a></li>';
	                    }
	                    else{
	                        str += '<li><a href="javascript:;" hidefocus="true"><input type="checkbox" disabled="disabled" class="cb" />';
	                        str += '<span class="num1 disabled_text">'+(index<10?'0'+index:index)+'</span><span class="text"><i class="disabled_text">'+data[i].songname+'</i></span></a></li>';
	                        nohashCount += 1;
	                    }
					}else if(currentClass == "album"){
						className = (i+1)%7 == 0?"last":"";
						var albumUrl = kg_domain + "album/single/" + data[i].albumid + ".html";
						str += '<li class="' + className + '"> <a class="pic" hidefocus="true" href="'+albumUrl+'" onclick="sdnClick(12095)"><img src="'+data[i].img+'" width="100" height="100" onerror="this.src=\'' + kg_domain + '/static/images/default1.jpg\'" /><i onmousemove="this.className=\'hover\'" onmouseout="this.className=\'\'" onclick="listenAlbum(\'' + data[i].albumid + '\');sdnClick(12096);Kg.stopEvent(event);return false"></i><b></b></a> <p><a  href="'+albumUrl+'" onclick="sdnClick(12095)" title="'+data[i].albumname+'">'+data[i].albumname+'</a></p> <span>'+data[i].publish_time.split(' ')[0]+'</span> </li>';
					}
				}
			}
	        if(nohashCount == data.length){
				//将按钮灰化。
				Kg.$('selAll').checked = false;
				Kg.$('selAll').disabled = true;
	            Kg.$('aplayAll').className="play disabled";
			}else{
			    //将按钮亮化。
				Kg.$('selAll').checked = true;
				Kg.$('selAll').disabled = "";
	            Kg.$('aplayAll').className="play";
			}
			obj.innerHTML = str;
		} else {
			obj.innerHTML = "<li>暂无记录<li>";	
			Kg.$(currentClass+'_nvg').innerHTML = "";
		}
		
	},function(){
		obj.innerHTML = "<li>暂无记录<li>";	
		Kg.$(currentClass+'_nvg').innerHTML = "";
	});
};

function checkClkAll(e){
	Kg.stopEvent(e || window.event);
	var els = Kg.$C("cb");
	for(var i = 0; i < els.length; i++){
		if(els[i].checked != true){
			Kg.$("selAll").checked = false;
			return;
		}
	}
	Kg.$("selAll").checked = true;
}

function listenAlbum(id, albumName){
	Kg.postJSON(kg_domain + "album/song/aid=" + id.toString() + "&t=" + Number(new Date()), {}, function(json){
		if(json.status == 1){
			var res = json.data;
			var files = [];
			for(var i = 0; i < res.length;i++){
				var json = {
					"Hash":res[i].hash,
					"FileName":res[i].singername + " - " + res[i].songname,
					"timeLen":res[i].duration
				};
				files.push(json);
			}

			if(files.length > 0){
				try{
					//alert(Kg.JSON.stringify(files));
					KgWebSuperCall.playSongs(Kg.JSON.stringify(files), 'yueku_singer');
				}catch(exp){
					
				}
			}
		}
			

	},null,false);
}

window.onresize = function(){
	if(shareObj != null){
		var pos = Kg.getXY(shareObj);
		var el = Kg.$("share_box");
		el.style.top = pos.top - 38 + "px"; 
		el.style.left = pos.left - 116 + "px"; 
	}
}


</script>

<script>
/*百度分享事件*/
var param_data = [];//声明一个空数组来存储分享数据
function showShare(e, o , files){
	shareObj = o;
	Kg.stopEvent(e || window.event);
	var pos = Kg.getXY(o);
	var el = Kg.$C("bdsharebuttonbox")[0];
	if(o == showShare.currentObj && el.offsetHeight > 0){
			el.style.display = "none";
	} else {
			el.style.display = "block";
			el.style.top = pos.top - 38 + "px"; 
			el.style.left = pos.left - 116 + "px"; 
	}
	showShare.currentObj = o;
	/*生成data数据*/
	if(files != undefined){
		var song_data=files.split("|"),
			song_name=song_data[0],
			hash=song_data[1],
			time=song_data[2];
			param_data['text'] = '分享一首来自酷狗音乐的歌曲:'+song_name+'(分享自@酷狗音乐)';
			param_data['url'] = encodeURI("http://web.kugou.com/?action=single&filename="+song_name+"&hash="+hash+"&issoft=0&bind=0&timelen="+time+"&microblog=1"+"&chl=");
	}else{
		var _parent=o.parentNode.parentNode,
			song_name=_parent.title,
			song_data=_parent.getElementsByTagName("input")[0].value.split("|"),
			hash=song_data[1],
			time=song_data[2];
			param_data['text'] = '分享一首来自酷狗音乐的歌曲:'+song_name+'(分享自@酷狗音乐)';
			param_data['url'] = encodeURI("http://web.kugou.com/?action=single&filename="+song_name+"&hash="+hash+"&issoft=0&bind=0&timelen="+time+"&microblog=1"+"&chl=");
	}
	Kg.$C("close")[0].onclick = function(){//点击关闭按钮时关闭分享框
		Kg.$C("bdsharebuttonbox")[0].style.display = "none";
	}
}
	window._bd_share_config={
		common:{

			bdText:"歌手薛之谦的主页",
			bdDesc:"歌手薛之谦的主页",

			bdPic:"",
			bdUrl:"",
			bdSize:"16",
			onAfterClick:function(cmd){
					switch(cmd){
						case "tsina":
										sdnClick(12598);
										break;
						case "qzone":
										sdnClick(12599);
										break;
						case "tqq":
										sdnClick(12600);
										break;
						case "renren":
										sdnClick(12601);
										break;
						case "douban":
										sdnClick(12602);
										break;
					};
			}
		},
		share:{
			tag : "share_1",

			bdText:"歌手薛之谦的主页",
			bdDesc:"歌手薛之谦的主页",

			bdPic:"",
			bdUrl:"",
			bdSize:"16",
			onBeforeClick:function(cmd,config){
					config['bdText'] = config['bdDesc'] = param_data['text'];
					config['bdUrl'] = param_data['url'] + cmd;
					return config;

			},
			onAfterClick:function(cmd){
					switch(cmd){
						case "tsina":
										sdnClick(12598);
										break;
						case "qzone":
										sdnClick(12599);
										break;
						case "tqq":
										sdnClick(12600);
										break;
						case "renren":
										sdnClick(12601);
										break;
						case "douban":
										sdnClick(12602);
										break;
					};
			}
		},
	    slide : {
	        "type":"slide",
	        "bdImg":"2",
	        "bdPos":"right",
	        "bdTop":"250"
	    }
	};

with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
window.onload=function(){
	if(location.href.indexOf("mv") != -1){
		$("#mv").trigger("click")
	}
}
</script>

<!-- Baidu Button END -->
<script type="text/javascript" src="js/singersong.js"></script>
<div class="bdshare-slide-button-box bdshare-slide-style-r2" style="top: 250px; width: 0px; z-index: 99999; right: 0px;" data-bd-bind="1488029399217"><a href="http://www.kugou.com/yy/singer/home/3060.html#" onclick="return false;" class="bdshare-slide-button" style="left: -24px;"></a><div class="bdshare-slide-list-box" style="width: 0px; display: none;"><div class="bdshare-slide-top">分享到</div><div class="bdshare-slide-list"><ul class="bdshare-slide-list-ul" style="width: 226px;"></ul></div><div class="bdshare-slide-bottom" style="width: 226px;"><a href="http://www.kugou.com/yy/singer/home/3060.html#" onclick="return false;" class="slide-more" data-cmd="more">更多...</a></div></div></div></body></html>