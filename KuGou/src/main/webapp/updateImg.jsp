<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0046)http://www.kugou.com/newuc/user/uc/type=avatar -->
<html lang="zh-CN"><style type="text/css" id="16373921797"></style><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta name="title" content="我的酷狗-修改头像-酷狗音乐">
<meta name="keywords" content="">
<meta name="description" content="">
<title>我的酷狗-修改头像-酷狗音乐</title>
<link rel="stylesheet" href="./updateImg_files/base_v.1.css">
<link rel="stylesheet" href="./updateImg_files/user_center_v.1.css">
<link rel="shortcut icon" type="image/x-icon" href="http://www.kugou.com/newuc/static/images/favicon.ico">
</head>
<body>
<div class="wrap">   
   <link rel="stylesheet" data-embed="" href="./updateImg_files/header.css">
<script src="./updateImg_files/hm.js"></script><script type="text/javascript" src="./updateImg_files/jquery.min.js"></script>
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet" href="easyui/themes/default/easyui.css">
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
            <li style="display: none;"><a target="_blank" href="./reg.jsp">注册</a></li>
            <li><a href="" class="kuLogin" id="kuLogin"></a><a hidefocus="true" href="index.jsp" class="logout" id="logout" style="display: inline-block;">返回首页</a></li>
            <li><a target="_blank" href="./server.html">客服中心</a></li>
            <li><a target="_blank" href="./join.html">招贤纳士</a></li>
            <li><a target="_blank" href="./VIP.html">会员中心 </a></li>
        </ul>
    </div>
</div>
<div class="navWrap">
    <div class="nav">
        <ul class="homeNav">
            <li><a class="normal" href="./index.jsp">首页</a></li>
            <li><a class="normal" href="./top.html">榜单</a></li>
            <li><a class="normal" id="productCenter" href="./download.html">下载客户端</a></li>
            <li class="more" id="moreLi"><a href="" class="icon icon-nav6" id="showMore">更多</a>
            </li>
        </ul>
        <ul class="secondMenu" id="more-subnav">
            <li><a href="./FM.html">电台</a></li>
            <li><a href="./MV.html">MV</a></li>
            <li><a href="./playlist.html">歌单</a></li>
            <li><a href="./singer.jsp">歌手</a></li>
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

 
    <!-- body -->
    <div class="kg_uc_bodyArea">
        <div class="wing_area_outset">
            <div class="wing_area">
                <div class="wing_main">
                    <div class="wing_main_content">
                    <!-- 主体 -->
                        <div class="kg_uc_module01">
                            <div class="kg_uc_module01_hd">
                                <h4 class="h_tl">我的酷狗</h4>
                                <div class="h_l"><span class="kg_uc_module01_notice">Personal information</span></div>
                            </div>
                            <div class="kg_uc_module01_bd">
                                <!-- tab 区域 -->
                                <div class="kg_uc_module02 kg_uc_module02_v1">
                                    <div class="kg_uc_module02_hd">
                                        <div class="kg_uc_module02_tag_list"></div>
                                        <ul class="kg_uc_module02_tag_list_ct">
                                            <li><a href="" title="修改头像"><span>修改头像</span></a></li>
                                            <li><a href="updateMsg.jsp?name=${loginUser}" title="编辑资料"><span>编辑资料</span></a></li>
                                            <li><a href="updatePwd.jsp?name=${loginUser}" title="修改密码"><span>修改密码</span></a></li>
                                            <li><a href="" title="帐号安全"><span>帐号安全</span></a></li>
                                        </ul>
                                    </div>
                                    <div class="kg_uc_module02_bd">
                                        <div class="bottom10 clearfix">
                                            <span class="kg_uc_tri_tabList_txt_fix f14 gray">设置一个您喜爱的头像：</span>
                                        </div>
                                        <!--
                                        <div class="bottom20"><p class="gray9">(请选择图片文件，最佳尺寸165 x 165，支持JPG，JPEG，GIF，PNG)</p></div>
                                        -->
                                        <div id="avatarupload_cnt_div">
                                            <!-- 本地上传 -->
                                            <div id="uploader_div">
                                            	<form id="modifyImg" name="modifyImg" method="post" enctype="multipart/form-data">
                                            	<input type="hidden" name="kgUserName" id="kgUserName" /> 
                                            	<img width="150px" height="150px"  id="pic"/>
                                            	<input type="file" name="picData"  id="picData" onchange="chgPic(this)" />
		   									    <input type="submit" onclick="modifyuserImg()" value="保存"/>
                                                </form>
                                            </div>
                                            <!--/本地上传 -->
                                        </div>
                                    </div>
                                </div>
                                <!--/tab 区域 -->
                            </div>
                        </div>
                    <!--/主体 -->
                    </div>
                </div>
                <div class="wing_side">
<!-- 左侧栏 -->
    <!-- 头像区域 -->
    <div class="kg_uc_avatar_area">
        <div class="kg_uc_avatar_cover"><img id="UserPic" width="165" height="165"/></div>
        <div class="kg_uc_avatar_txt">
            <p align="center"><a href="index.jsp" id="myucname" class="kg_uc_avatar_name"></a></p>
            <!--<p align="center">积分：19149</p>-->
             <!--<p align="center"><a href="http://www.kugou.com/uc/620082356.html" style="text-decoration:underline" >返回旧版</a></p>-->
        </div>
        <div class="kg_uc_avatar_vipinfo" id="user_vipinfo">
                        <p><a target="_blank" href="http://vip.kugou.com/home/recharge" title="开通酷狗VIP">开通酷狗VIP&gt;&gt;</a></p>
        </div>
    </div>
    <!--/头像区域 -->
<!--/左侧栏 -->
</div>
<script type="text/javascript">

window.onload=myAutoRun();

function myAutoRun(){
	 document.getElementById("kuLogin").innerHTML=GetQueryString("name");
	 document.getElementById("myucname").innerHTML=GetQueryString("name");
	 document.getElementById("kgUserName").setAttribute("value",GetQueryString("name"));
	 
	 $.get("user/getuserImg?name="+GetQueryString("name"),function(data){
		 if(data.kgUserPic==null){
			 document.getElementById("UserPic").setAttribute("src","updateImg_files/20100101192931478054.jpg");
		 }else{
			 document.getElementById("UserPic").setAttribute("src",data.kgUserPic);
		 }
		},"json");
	 
	 $.get("user/getuserImg?name="+GetQueryString("name"),function(data){
		 if(data.kgUserPic==null){
			 document.getElementById("pic").setAttribute("src","updateImg_files/20100101192931478054.jpg");
		 }else{
			 document.getElementById("pic").setAttribute("src",data.kgUserPic);
		 }
		},"json");
}





function GetQueryString(name) {  
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");  
    var r = window.location.search.substr(1).match(reg);  //获取url中"?"符后的字符串并正则匹配
    var context = "";  
    if (r != null)  
         context = r[2];  
    reg = null;  
    r = null;  
    return context == null || context == "" || context == "undefined" ? "" : context;  
}



function chgPic(obj){
	$("#pic").attr("src",window.URL.createObjectURL(obj.files[0]));
}
//修改
function modifyuserImg(){
$("#modifyImg").form({
	url:"user/changeImg",
	success:function(data){
		if(data.trim()=="true"){
			location.reload(true);
		}else{
			$.messager.show({
				title:'修改信息',
				msg:'修改失败',
				showType:'show',
				style:{
					right:'',
					top:document.body.scrollTop+document.documentElement.scrollTop,
				}
			});
		}
	}
});
}


</script>

                <div class="clear"></div>
            </div>
        </div>
    </div>
    <!--/body -->

    <link rel="stylesheet" data-embed="" href="./updateImg_files/footer.css">
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

</div>	
	 <script type="text/javascript" src="easyui/jquery.min.js"></script> 
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
</body></html>