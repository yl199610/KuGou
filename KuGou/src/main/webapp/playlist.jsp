<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html>
<html><head>
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet" href="easyui/themes/default/easyui.css">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>我的收藏</title>
<meta name="keywords" content="酷狗2013正式版,精选集,精选集歌曲下载,歌手,明星,音乐,在线音乐,在线听歌,听歌,新专辑,港台,日本,韩国,欧美,英国">
<meta name="description" content="酷狗官方网站是中国最新最全的在线正版音乐网站,提供最新的在线音乐服务、免费音乐下载、最新的音乐播放器下载。">
<link rel="stylesheet" href="playlist_files/main_002.css" type="text/css">
<link rel="stylesheet" href="playlist_files/main.css" type="text/css">
<link href="http://www.kugou.com/yy/static/images/favicon.ico" rel="shortcut icon">
<script src="playlist_files/hm.js"></script><script type="text/javascript" src="playlist_files/base-min.js"></script>
<script type="text/javascript">
    sdnClick(12128);
</script>
<script src="playlist_files/share.js"></script><link rel="stylesheet" href="playlist_files/share_style0_16.css"><link rel="stylesheet" href="playlist_files/slide_share.css"></head>

<body>
<link rel="stylesheet" data-embed="" href="playlist_files/header.css">
<script type="text/javascript" src="playlist_files/jquery.js"></script>
<!--[if IE 6]>
<script type="text/javascript" src="http://www.kugou.com/common/js/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('.icon,.logo');
</script>
<![endif]-->
<div class="header">
    <h1 class="logo">酷狗音乐</h1>
    <div class="topNav fr">
        <ul>
<!--             <li><a target="_blank" href="./emailReg.html">注册</a></li>
            <li><a href="" class="kuLogin" id="kuLogin">登录</a><a hidefocus="true" href="http://www.kugou.com/newuc/login/outlogin" class="logout" id="logout">退出登录</a></li>
  -->           <li><a target="_blank" href="./server.html">客服中心</a></li>
            <li><a target="_blank" href="./join.html">招贤纳士</a></li>
            <li><a target="_blank" href="http://vip.kugou.com/">会员中心 </a></li>
        </ul>
    </div>
</div>
<div class="navWrap">
    <div class="nav">
        <ul class="homeNav">
            <li><a class="normal" href="./index.html">首页</a></li>
            <li><a class="normal" href="./top.html">榜单</a></li>
            <li><a class="normal" id="productCenter" href="./download.html">下载客户端</a></li>
            <li class="more" id="moreLi"><a href="http://www.kugou.com/yy/special/index/2-0-1.html#" class="icon icon-nav6" id="showMore">更多</a>
            </li>
        </ul>
        <ul class="secondMenu" id="more-subnav">
            <li><a href="./FM.html">电台</a></li>
            <li><a href="./MV.html">MV</a></li>
            <li><a href="./playlist.html">歌单</a></li>
            <li><a href="./singer.html">歌手</a></li>
        </ul>
        <ul class="subNav">
            <li><a target="_blank" href="http://fanxing.kugou.com/?action=spreadIndex&amp;id=3" class="icon icon-nav1">音乐直播</a></li>
            <li><a target="_blank" href="http://live.kugou.com/" class="icon icon-nav2">酷狗LIVE</a></li>
            <li><a target="_blank" href="http://www.kugou.com/imusic/" class="icon icon-nav3">音乐人</a></li>
            <li><a target="_blank" href="http://games.kugou.com/?f=7" class="icon icon-nav4">游戏</a></li>
            <li><a target="_blank" href="http://www.kugou.com/shop" class="icon icon-nav5">商城</a></li>
        </ul>
    </div>
</div>
<script type="text/javascript">
    function read(name, key) {
        var cookieValue = "";
        var search = name + "=";
        if (document.cookie.split("").length > 0) {
            offset = document.cookie.indexOf(search);
            if (offset != -1) {
                offset += search.length;
                end = document.cookie.indexOf(";", offset);
                if (end == -1) {
                    end = document.cookie.split("").length;
                }
                cookieValue = document.cookie.substring(offset, end);
            }

        }
        var a = cookieValue.split("&");
        var o = {};
        var haveVal = false; 
        for (var i = 0, l = a.length; i < l; i++) {
            var k = a[i].split("=");
            if(k[0]!=""){
                o[k[0]] = k[1];
                haveVal = true; 
            } 
        }
        return haveVal ? o : false;
    }
    var jq=$.noConflict();
    jq(document).ready(function(){

        var loginUtility = {
            loadScript:function (option) {
                var url = option.url,
                    callback = option.callback;
                var script = document.createElement("script");
                script.type = 'text/javascript';
                if (script.readyState) {
                    script.onreadystatechange = function() {
                        if (this.readyState == "complete" || this.readyState == "loaded") {
                            callback && callback();
                            script.onreadystatechange = script = callback = null;
                        }
                    }
                } else {
                    script.onload = function() {
                        callback && callback();
                        script.onload = script = callback = null;
                    };
                }

                script.src = url;
                document.getElementsByTagName("head")[0].appendChild(script);
            },
            initLogin:function(){
                var _this = this;
                if (!_this.islogined()) {
                    loginUtility.loadScript({
                        url: "http://static.kgimg.com/common/js/min/popuplogin-min.js?" + Math.round(new Date().getTime() / 1000),
                        callback: function() {
                            UsLogin();
                        }
                    })
                    return false;
                } else {
                    return true;
                }
            },
            islogined:function () {
                var loginInfo = read("KuGoo");
                return loginInfo == "" || loginInfo.toString() == "undefined" || loginInfo === false ? false : true;
            },
            clearEventBubble:function (evt) {
                try{
                    if (evt.stopPropagation){

                        evt.stopPropagation();
                    }else{
                        evt.cancelBubble = true;
                    }

                    if (evt.preventDefault){
                        evt.preventDefault();
                    }else{
                        return false;
                        evt.returnValue = false;
                    }
                }catch(ex){
                    
                }
            }
        }
        var kuLogin = document.getElementById("kuLogin");
        var kuLogOut = document.getElementById("logout");
        var more = document.getElementById("moreLi");
        var showMore = document.getElementById("showMore");
        var subUl = document.getElementById("more-subnav");
        var t = null;

        // 获取登录信息
        var kugouC = read("KuGoo"),
            user_name = kugouC.NickName,
            user;
            if(user_name){
                user_name = user_name.replace(/%/g, "\\"),
                user = eval("'" + user_name + "'");
                kuLogOut.style.display = "inline-block";
                kuLogin.href = "http://www.kugou.com/newuc/user/uc/?"+Math.round(new Date().getTime() / 1000);
                kuLogin.innerHTML = user;
                kuLogin.parentNode.parentNode.getElementsByTagName("li")[0].style.display = "none";
            }

       jq("#kuLogin").click(function(e){
            e.preventDefault();
            if(jq("#kuLogin").attr("href").length>5){
                window.open(jq(this).attr("href"))
            }else{
                loginUtility.initLogin()
            }
     
        });
        showMore.onclick=function(e){
            return false;
        }
        more.onmouseover=function(){
            more.setAttribute("class","more hover")
            showMore.setAttribute("class","iconMore hover");
            subUl.style.cssText = "display:block;";
        }

        more.onmouseleave=function(){
            more.setAttribute("class","more")
            showMore.setAttribute("class","iconMore");
            t = setTimeout(function(){
                subUl.style.display = "none"
            },300)
        }
        subUl.onmouseover=function(){
            clearTimeout(t)
            more.setAttribute("class","more hover");
            showMore.setAttribute("class","iconMore hover");
            subUl.style.cssText = "display:block;";
        }

        subUl.onmouseleave=function(){
            more.setAttribute("class","more");
            showMore.setAttribute("class","iconMore");
           subUl.style.cssText = "display:none;";
        }
        
    })
</script>
<!--精选集-->
<div class="wrap album spe clear_fix">
    <div class="r">
        <div class="head" style="background-color: #333">
            <strong id="album_title">全部精选集</strong>
            <input type="hidden" value="${loginUserId}" id="kuserSaveId" name="kuserSaveId">
        </div>

        <ul id="ulAlbums" style="align:center;">
         </ul>

        <div class="nvg" id="nvg">
        </div>
    </div>
</div>

	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/playlist.js"></script>

<!--脚步-->
<link rel="stylesheet" data-embed="" href="playlist_files/footer.css">
<div class="footerWrapper">
    <div class="footer">
        <div class="links">
            <a hidefocus="true" href="http://www.kugou.com/about/aboutus.html" target="_blank">关于酷狗</a> | <a hidefocus="true" href="http://www.kugou.com/about/adservice.html" target="_blank">广告服务</a> | <a hidefocus="true" target="_blank" href="http://www.kugou.com/about/copyRightGuide.html">版权指引</a>| <a hidefocus="true" target="_blank" href="http://www.kugou.com/about/protocol.html">用户服务协议</a> | <a hidefocus="true" target="_blank" href="http://www.kugou.com/company/partners.html">推广合作</a> | <a hidefocus="true" target="_blank" href="http://www.kugou.com/imusic/">酷狗音乐人</a> |<a hidefocus="true" target="_blank" href="http://tui.kugou.com/">酷狗音乐推</a> |<a hidefocus="true" href="http://www.kugou.com/job/hr/html/" target="_blank">招聘信息</a> | <a hidefocus="true" href="http://www.kugou.com/shop/help/serviceCenter" target="_blank">客服中心</a> | <a hidefocus="true" href="http://survey.kugou.com/default/index/i=40CD7B8437008E65E67D82D9044C15C99C2E699859F51338" target="_blank">用户体验提升计划</a>
        </div>
        <div class="copyright">
            <p>我们致力于推动网络正版音乐发展，相关版权合作请联系copyrights@kugou.com</p>
            <p>信息网络传播视听节目许可证 1910564 增值电信业务经营许可证粤B2-20060339 &nbsp;&nbsp;&nbsp;<a hidefocus="true" target="_blank" href="http://www.miitbeian.gov.cn/">粤ICP备09017694号-2</a><span class="footerIcon"><a target="_blank" href="http://sq.ccm.gov.cn/ccnt/sczr/service/business/emark/toDetail/E64D2439A71544C7B995FC0A53D8F965">&nbsp;&nbsp;&nbsp;&nbsp;</a></span></p>
            <p>广播电视节目制作经营许可证（粤）字第01270号&nbsp;&nbsp;&nbsp;&nbsp;营业性演出许可证穗天演440106026&nbsp;&nbsp;&nbsp;&nbsp;穗公网监备案证第44010650010167</p>
            <p>Copyright&nbsp;&nbsp;©&nbsp;&nbsp;2004-2016 KuGou-Inc.All Rights Reserved
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


<script type="text/javascript" src="playlist_files/playsong-min.js"></script>
<script type="text/javascript" src="playlist_files/lazyload-min.js"></script>
<script type="text/javascript">
//定义域
var kg_special_domain = "http://www.kugou.com/yy";
//当前类别
var currentType = "0";

/**
 * 切换浏览方式
 * @name selectChange
 */

function selectChange(){
    var sort = document.getElementById("px").value;
    location.href = kg_special_domain+"/special/index/1-"+sort+"-"+currentType+".html";
}

/**
 * 分享
 * @name shareAlbum
 * @param { String } 分享渠道
 * @param { Number } 精选辑id
 */
function shareAlbum(chl, id){
    var el = Kg.$C("s_" + id)[0];
    var name = Kg.$T("a", el)[0].title;
    var img = Kg.$T("img", el)[0].getAttribute("src");
    var intro = Kg.$C("text",el)[0].innerHTML;
    img = img.match(/\b\d+\.\w+$/);
    openShareAlbum(chl, name, id, img, "special", intro);
}


/**
 * 播放专辑
 * @name play
 * @param { Number} 精选辑ID
 * @param { Object } 当前专辑DOM对象
 */
function play(cid, obj){
    sdnClick(12134);
    Kg.postJSON(kg_special_domain+"/special/song/sid=" + cid, "", function(res){
        if(res.status == 1){
            var files = [];
            for(var i = 0; i < res.data.length;i++){
                var fn = res["data"][i].singername + " - " + res["data"][i].songname;
                if(fn.indexOf("】") > -1 && fn.trim().indexOf("】") != fn.trim().length-1){
                    fn = fn.substring(fn.indexOf("】")+1);
                }
                var json = {
                    Hash:res["data"][i].hash, 
                    FileName:fn,
                    timeLen:res["data"][i].duration/1000
                };
                files.push(json);
            }
            if(files.length > 0){
                KgWebSuperCall.playSongs(Kg.JSON.stringify(files), 'yueku_omnibus');
            }
        }
    },null,false);
}

/**
 * 页面初始化入口
 */
function init(){
	new Lazyload();
}

init();
</script>

<!-- Baidu Button BEGIN -->
<script type="text/javascript">

    var data = [{"specialname":"\u6211\u4eec\u7ed3\u5a5a\u4e86 \u751c\u871c\u5927\u653e\u9001","nickname":"\u534e\u4e3d\u7684\u843d\u6cea","grade_int":"7","intro":"\u6709\u4e00\u79cd\u4fca\u7537\u7f8e\u5973\u7684\u642d\u914d\uff0c\u53eb\u5e7b\u60f3\u592b\u5987\uff1b\u6709\u4e00\u79cd\u7231\u60c5\uff0c\u80fd\u8de8\u8d8a\u8bed\u8a00\u7684\u969c\u788d\uff1b\u6709\u4e00\u79cd\u751c\u871c\uff0c\u53eb\u6211\u4eec\u7ed3\u5a5a\u4e86\u3002\u5728\u8fd9\u4e2a\u708e\u70ed\u7684\u590f\u5929\uff0c\u4e3a\u5927\u5bb6\u9001\u4e0a\u3010\u6211\u4eec\u7ed3\u5a5a\u4e86 \u751c\u871c\u5927\u653e\u9001\u3011\uff0c\u8ba9\u6211\u4eec\u542c\u7740\u97f3\u4e50\uff0c\u53bb\u5bfb\u627e\u7231\u60c5\u3002","grade_float":"6","grade":7.6,"publish_time":"2013-07-01","song_count":0,"version":0,"specialid":18069,"img":"http:\/\/imge.kugou.com\/soft\/collection\/150\/20130701\/20130701174513957545.jpg","quality":0,"author":""},{"specialname":"\u9152\u5427\u6b4c\u624b\u4e5f\u6709\u6625\u5929","nickname":"\u6211\u662fwolf","grade_int":"6","intro":"\u8bb8\u591a\u70ed\u7231\u5531\u6b4c\u7684\u4eba\u4e00\u76f4\u5728\u7528\u5404\u79cd\u65b9\u5f0f\u8ffd\u6c42\u7740\u81ea\u5df1\u7684\u97f3\u4e50\u68a6\u60f3\uff0c\u5728\u9152\u5427\u9a7b\u5531\u4e5f\u662f\u5176\u4e2d\u4e00\u79cd\u3002\u8bb8\u591a\u4eba\u6216\u8bb8\u4f1a\u56e0\u4e3a\u662f\u9152\u5427\u6b4c\u624b\u5c31\u8f7b\u89c6\u8fd9\u4e9b\u8ffd\u9010\u68a6\u60f3\u7684\u4eba\uff0c\u4f46\u5176\u5b9e\u4ed6\u4eec\u90fd\u662f\u503c\u5f97\u5c0a\u91cd\u7684\uff0c\u56e0\u4e3a\u6bcf\u4e00\u4e2a\u52aa\u529b\u7684\u4eba\uff0c\u90fd\u662f\u9760\u81ea\u5df1\u53bb\u4e89\u53d6\u673a\u4f1a\uff0c\u7559\u4e0b\u6765\u594b\u6597\u7684\u6c57\u6c34\uff0c\u624d\u6210\u4e3a\u90a3\u9897\u95ea\u8000\u7684\u660e\u661f\u3002","grade_float":"6","grade":6.6,"publish_time":"2013-07-10","song_count":0,"version":0,"specialid":18086,"img":"http:\/\/imge.kugou.com\/soft\/collection\/150\/20130710\/20130710173944930114.jpg","quality":0,"author":""},{"specialname":"\u70ed\u95e8\u7535\u89c6\u5267\u534a\u5e74\u5927\u96c6\u5408","nickname":"\u6211\u662fwolf","grade_int":"7","intro":"2013\u4e0a\u534a\u5e74\u70ed\u95e8\u7535\u89c6\u5267\u6b4c\u5355\u5927\u96c6\u5408\uff0c\u6bcf\u6b21\u5728\u8ffd\u7535\u89c6\u5267\u7684\u65f6\u5019\uff0c\u6700\u5370\u8c61\u6df1\u523b\u7684\u5c31\u662f\u91cc\u9762\u7684\u6b4c\u66f2\uff0c\u6bcf\u5f53\u542c\u8d77\u8fd9\u4e9b\u6b4c\u66f2\uff0c\u8111\u6d77\u5c31\u4f1a\u60f3\u8d77\u4e00\u4e9b\u5267\u60c5\u548c\u753b\u9762\uff0c\u8fd9\u91cc\u9762\u7684\u6b4c\u66f2\uff0c\u6709\u4f60\u8ffd\u8fc7\u7684\u7535\u89c6\u5267\u5417\uff1f\u63a8\u8350\u66f2\u76ee\uff1a\u66fe\u6c9b\u6148- \u7231\u60c5\u600e\u4e48\u558a\u505c  \u82cf\u76c8\u4e4b - \u4e0d\u5e94\u8be5\u52c7\u6562\u3002","grade_float":"5","grade":7.5,"publish_time":"2013-07-09","song_count":0,"version":0,"specialid":18082,"img":"http:\/\/imge.kugou.com\/soft\/collection\/150\/20130709\/20130709143539668456.jpg","quality":0,"author":""},{"specialname":"\u6bd5\u4e1a\u4e86\uff0c\u4f60\u4eec\u8fd8\u5728\u4e00\u8d77\u5417","nickname":"MR.Q","grade_int":"8","intro":"\u4e0d\u77e5\u9053\u8fd8\u4f1a\u4e0d\u4f1a\u5728\u5fae\u98ce\u5439\u62c2\u7684\u6821\u9053\u91cc\u4e00\u8d77\u80cc\u5355\u8bcd\uff0c\u8fd8\u4f1a\u4e0d\u4f1a\u624b\u62c9\u624b\u8fc7\u9a6c\u8def\uff0c\u8fd8\u4f1a\u4e0d\u4f1a\u5e76\u5750\u5728\u957f\u677f\u51f3\u4e0a\u4e00\u8fb9\u5403\u51b0\u68cd\u4e00\u8fb9\u54af\u54af\u5730\u7b11\u3002\u66fe\u7ecf\u7684\u6d77\u8a93\u5c71\u76df\uff0c\u5982\u4eca\u7684\u4e0d\u582a\u4e00\u51fb\uff0c\u662f\u8c01\u7834\u574f\u4e86\u6211\u4eec\u7684\u7231\uff1f\u6bd5\u4e1a\u4e86\uff0c\u5206\u624b\u4e86\uff0c\u662f\u6211\u4eec\u53d8\u5f97\u73b0\u5b9e\u4e86\u8fd8\u662f\u6211\u4eec\u7684\u611f\u60c5\u6839\u672c\u7ecf\u4e0d\u8d77\u73b0\u5b9e\u7684\u8003\u9a8c\u3002","grade_float":"6","grade":8.6,"publish_time":"2013-05-24","song_count":0,"version":0,"specialid":18011,"img":"http:\/\/imge.kugou.com\/soft\/collection\/150\/20130524\/20130524172455628408.jpg","quality":0,"author":""},{"specialname":"\u6700\u503c\u5f97\u6536\u85cf\u7684\u80cc\u666f\u97f3\u4e50","nickname":"\u597d\u5996\u5a06\u7684\u60b2\u4f24","grade_int":"7","intro":"\u6709\u4e00\u79cd\u65cb\u5f8b\u603b\u662f\u5f98\u5f8a\u5728\u6211\u4eec\u8033\u8fb9\uff0c\u5728\u6211\u4eec\u7684\u751f\u6d3b\u91cc\u3002\u542c\u5e7f\u64ad\u65f6\uff0c\u770b\u7535\u89c6\u65f6\u51fa\u73b0\u5438\u5f15\u4eba\u7684\u66f2\u5b50\uff0c\u4e0d\u7981\u8ba9\u4eba\u60f3\u8981\u8ffd\u5bfb\u5176\u66f2\u76ee\u7684\u6839\u6e90\u3002\u5c0f\u7f16\u63a8\u8350\u6700\u503c\u5f97\u6536\u85cf\u7684\u80cc\u666f\u97f3\u4e50\u7cbe\u9009\u96c6\uff0c\u8fd9\u4e9b\uff0c\u4f1a\u662f\u4f60\u4e00\u76f4\u5728\u5bfb\u627e\u7684\u80cc\u666f\u97f3\u4e50\u5417\uff1f","grade_float":"4","grade":7.4,"publish_time":"2013-07-05","song_count":0,"version":0,"specialid":18077,"img":"http:\/\/imge.kugou.com\/soft\/collection\/150\/20130705\/20130705104555627674.jpg","quality":0,"author":""},{"specialname":"\u79d2\u6740\u5404\u699c\u5355\u7684\u97e9\u56fd\u821e\u66f2","nickname":"\u9519\u4f4d\u7684\u68a6\u60f3","grade_int":"6","intro":"\u3000\u30002013\u5e74\uff0c\u5728\u97e9\u56fd\u65b0\u4eba\u5982\u96e8\u540e\u6625\u7b0b\u822c\u5c42\u51fa\u4e0d\u7a77\u7684\u5e74\u4ee3\uff0c\u5728\u9e1f\u53d4\u6d17\u8111\u795e\u66f2\u9886\u8854\u7684\u65f6\u4ee3\uff0c\u4e0d\u8bba\u662f\u75af\u72c2\u7684G-Dragon\uff0c\u8fd8\u662f\u72fc\u65cf\u5c11\u5e74EXO\uff0c\u6291\u6216\u662f\u4e0d\u706d\u4eba\u6c14\u7684\u5c11\u5973\u65f6\u4ee3\uff0c\u90fd\u7528\u8ba9\u4eba\u4e2d\u6bd2\u7684\u821e\u66f2\u5ba3\u544a\u81ea\u5df1\u7684\u56de\u5f52\uff0c\u4e00\u8d77\u6765\u611f\u53d7\u90a3\u4e9b\u8ba9\u4eba\u72c2\u70ed\u7684\u8282\u594f\u5427\uff01","grade_float":"9","grade":6.9,"publish_time":"2013-07-05","song_count":0,"version":0,"specialid":18079,"img":"http:\/\/imge.kugou.com\/soft\/collection\/150\/20130705\/20130705185757190864.jpg","quality":0,"author":""},{"specialname":"\u7231\u795e\u542c\u5230\u90fd\u4f1a\u6d41\u6cea\u7684\u6b4c","nickname":"\u6211\u662fwolf","grade_int":"6","intro":"\u6bcf\u9996\u4f24\u5fc3\u7684\u6b4c\uff0c\u80cc\u540e\u90fd\u6709\u4e00\u4e2a\u8ba9\u4eba\u751f\u75bc\u7684\u6545\u4e8b\uff0c\u4e5f\u8bb8\u5b83\u80fd\u52fe\u8d77\u4f60\u52aa\u529b\u5fd8\u8bb0\u7684\u56de\u5fc6\uff0c\u6bcf\u542c\u5230\u52a8\u60c5\u4e4b\u5904\u65f6\uff0c\u5fc3\u75db\u7684\u611f\u89c9\u8ba9\u773c\u6cea\u968f\u4e4b\u843d\u4e0b\u3002\u8d70\u8fc7\u8bf8\u591a\u76f8\u4f3c\u7684\u98ce\u666f\uff0c\u76f8\u540c\u7684\u5730\u70b9\uff0c\u8eab\u8fb9\u5374\u65e9\u5df2\u7ecf\u6362\u4e86\u522b\u4eba\uff0c\u5982\u4eca\u4e5f\u53ea\u80fd\u65e0\u53ef\u5948\u4f55\u5730\u6000\u5ff5\u7740\u90a3\u4e9b\u7269\u662f\u4eba\u975e\u3002","grade_float":"8","grade":6.8,"publish_time":"2013-07-10","song_count":0,"version":0,"specialid":18085,"img":"http:\/\/imge.kugou.com\/soft\/collection\/150\/20130710\/20130710144447835083.jpg","quality":0,"author":""},{"specialname":"iTunes\u7684\u90a3\u4e9b\u590f\u65e5high\u6b4c","nickname":"\u5fae\u51c9","grade_int":"5","intro":"\u708e\u708e\u590f\u5929\uff0c\u6709\u4e86\u7a7a\u8c03\u5c31\u53ef\u4ee5\u544a\u522b\u708e\u70ed\uff1f\u6709\u4e86\u897f\u74dc\u5c31\u53ef\u4ee5\u8131\u79bb\u5e72\u6e34\uff1f\u6765\u70b9high\u6b4c\u600e\u4e48\u6837\uff01\uff1f\u6c99\u6ee9\u3001\u6bd4\u57fa\u5c3c\u3001\u70ed\u88e4\uff0ciTunes\u590f\u65e5high\u6b4c\uff0c\u8981\u4f60\u523a\u6fc0\uff0c\u8981\u4f60\u723d\u3002\u6b63\u5982iTunes\u7684\u5b97\u65e8\u201c\u5a31\u4e50\u4ece\u672a\u5982\u6b64\u7b80\u5355\u201d\u3002","grade_float":"8","grade":5.8,"publish_time":"2013-07-11","song_count":0,"version":0,"specialid":18087,"img":"http:\/\/imge.kugou.com\/soft\/collection\/150\/20130711\/20130711204209314838.jpg","quality":0,"author":""},{"specialname":"\u6ca7\u6851\u5fc3\u4e8b\uff0c\u719f\u7537\u60c5\u6b4c","nickname":"MR.Q","grade_int":"6","intro":"\u66fe\u7ecf\u7684\u5e7c\u7a1a\u9752\u6da9\u65e9\u5df2\u892a\u53bb\uff0c\u7ecf\u5386\u4e86\u4e16\u4e8b\u7684\u78e8\u7ec3\u6108\u53d1\u9187\u539a\uff0c\u6210\u719f\u7537\u5b50\u7684\u5fc3\u601d\u5c31\u50cf\u7f8e\u9152\uff0c\u6108\u4e45\u5f25\u9999\u3002\u542c\u7740\u6b4c\u624b\u7684\u4f4e\u541f\u6d45\u5531\uff0c\u4f60\uff0c\u662f\u5426\u60f3\u8d77\u4e86\u4ee5\u524d\u7684\u70b9\u70b9\u6ef4\u6ef4\uff1f","grade_float":"9","grade":6.9,"publish_time":"2013-05-23","song_count":0,"version":0,"specialid":18007,"img":"http:\/\/imge.kugou.com\/soft\/collection\/150\/20130523\/20130523165419586759.jpg","quality":0,"author":""},{"specialname":"\u6211\u4eec\u662f\u8367\u5e55\u60c5\u4fa3","nickname":"\u5a49\u8f6c\u7684\u5355\u7eaf","grade_int":"6","intro":"\u300a\u9646\u8d1e\u4f20\u5947\u300b\u706b\u7206\u8367\u5c4f\u3002\u9648\u6653\u8d75\u4e3d\u9896\u7684\u201c\u8d1e\u6e5b\u604b\u201d\u7275\u52a8\u89c2\u4f17\u7684\u5fc3\u3002\u8fd8\u8bb0\u5f97\u90a3\u4e9b\u5e74\uff0c\u6211\u4eec\u4e00\u8d77\u8ffd\u8fc7\u7684\u5267\u5417\uff1f\u6e2f\u53f0\u5267\u3001\u5927\u9646\u5267\u3001\u65e5\u5267\u3001\u97e9\u5267\u2026\u2026\u5728\u5267\u91cc\uff0c\u8367\u5e55\u60c5\u4fa3\u4eec\u76f8\u8bc6\u3001\u76f8\u77e5\u3001\u76f8\u604b\uff0c\u8fc7\u7a0b\u6216\u6b22\u4e50\uff0c\u6216\u6e29\u99a8\uff0c\u6216\u60b2\u4f24\u2026\u2026\u770b\u8fc7\u300a\u4e00\u8d77\u6765\u770b\u6d41\u661f\u96e8\u300b\uff0c\u5c31\u89c9\u5f97\u5f20\u7ff0\u90d1\u723d\u7b80\u76f4\u5c31\u662f\u5929\u751f\u4e00\u5bf9\uff1b\u770b\u8fc7\u300a\u60f3\u4f60\u300b\uff0c\u4f1a\u89c9\u5f97\u6734\u6709\u5929\u548c\u5c39\u6069\u60e0\u6f14\u6280\u9ad8\u8d85\u5f97\u592a\u5408\u62cd\uff1b\u770b\u8fc7\u300a\u5bab\u9501\u5fc3\u7389\u300b\uff0c\u5c31\u627e\u4e0d\u5230\u6bd4\u6768\u5e42\u548c\u51af\u7ecd\u5cf0\u66f4\u53ef\u7231\u7684\u5bab\u5ef7\u5267\u8367\u5e55\u60c5\u4fa3\u4e86\u3002\u8ba9\u6211\u4eec\u4e00\u8d77\u6765\u76d8\u70b9\u90a3\u4e9b\u66fe\u7ecf\u4ee4\u6211\u4eec\u7275\u80a0\u6302\u809a\u3001\u5ff5\u5ff5\u4e0d\u5fd8\u7684\u7ecf\u5178\u94f6\u5e55\u60c5\u4fa3\u5427\uff01","grade_float":"3","grade":6.3,"publish_time":"2013-05-23","song_count":0,"version":0,"specialid":18008,"img":"http:\/\/imge.kugou.com\/soft\/collection\/150\/20130523\/20130523170407732502.jpg","quality":0,"author":""}];

    var share_data = [];
    share_data[0] = {
        tag : "",
        dbSize : 16,
        dbText : 

        "全部精选集酷狗精选集频道",

        dbUrl: ""
    };
for(var i = 0,l = data.length; i < l;i ++){
        share_data[i + 1] = {
                tag : 'share_' + (i + 1),
                dbSize : 16,
                bdText : '分享一张来自酷狗音乐的专辑:'+data[i]['specialname']+'(分享自@酷狗音乐)', 
                bdDes : '分享一张来自酷狗音乐的专辑:'+data[i]['specialname']+'(分享自@酷狗音乐)', 
                bdPic : data[i]['img'],
                bdUrl : encodeURI('http://web.kugou.com/index.html?action=single&name='+data[i]['specialname']+'&id='+data[i]["specialid"]+'&microblog=2&share_type=special&isnew=1&chl='),
                onBeforeClick : function(cmd,config){
                        config['bdUrl'] += cmd;
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
                        }
                }
    }
}
window._bd_share_config={
    share : share_data,
    slide : {
        "type":"slide",
        "bdImg":"2",
        "bdPos":"right",
        "bdTop":"250"
    }
};
with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
</script>
<!-- Baidu Button END -->

<div class="bdshare-slide-button-box bdshare-slide-style-r2" style="top: 250px; width: 0px; z-index: 99999; right: 0px;" data-bd-bind="1482925585011"><a href="#" onclick="return false;" class="bdshare-slide-button" style="left: -24px;"></a><div class="bdshare-slide-list-box" style="width: 0px; display: none;"><div class="bdshare-slide-top">分享到</div><div class="bdshare-slide-list"><ul class="bdshare-slide-list-ul" style="width: 226px;"></ul></div><div class="bdshare-slide-bottom" style="width: 226px;"><a href="#" onclick="return false;" class="slide-more" data-cmd="more">更多...</a></div></div></div><script src="playlist_files/hijacked-min.js"></script></body></html>