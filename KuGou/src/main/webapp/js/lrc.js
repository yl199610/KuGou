$(function(){
	var locurl=location.href;
	var start=locurl.indexOf("?");
	var end=locurl.length;
	var tempstr=locurl.substring(start+1,end)
	var temp=tempstr.split("=");
	var pid=temp[1];
	var songs = pid;//可通过名字获取到歌名
	doPost(songs.substr(6,8));// 加载第一首歌
})
var interHandler = null;
// 歌词索引
var lrcIndex = 0;
// 歌词内容
var lrcContent = "";
var lrc = [];
var lrc = [];
// * 向后台获取歌词
function doPost(songName){
	$("#playTime")
	$("#Player").attr("src","music/"+songName);
	var retLrc = [];
	$.ajax({
			type: "POST",
			url: "lrcServlet?songName="+songName,
			async:false,
			success: function(e){
				retLrc = eval(e);
			},
			error:function(e){
				alert('获取歌词出错');
			}
	});
	loadLrc(retLrc);
	loadHoleLrc(retLrc);
}


//获取完整歌词  
function loadHoleLrc(_lrc){
	var $ul = $("<ul>");
	for(var i=0,len=lrc.length; i<len ; i++){
		var s = _lrc[i];
		var arr = s.split("\]");
		var timeStr=arr[0].substring(1);//时间
		// 将时间转换成秒的总和
		//alert(reFormatTime(timeStr));
		// 歌词内容
		var lrcContent = arr[1] || "";
		//alert(lrcContent[0])//
		$ul.append("<li>"+lrcContent+"</li>")
	}
	$ul.append("</ul>");
	$("#marq").append($ul);
	// 设置文字半透明
	$("#marq li").css("opacity",0.5);
	alert($("#marq").val());
}

 // 加载歌词
function loadLrc(retLrc){
	lrc = retLrc;
}

function reFormatTime(timeStr) {
	if (!checkTime(timeStr)) {return "";}
	var arr = timeStr.split(":");
	var minute = parseInt(arr[0].substr(1));
	var second = parseInt(arr[1].split("\.")[0]);
	return minute * 60 + second;
}

function checkTime(timeStr) {
	return /\d{2}\:\d{2}\.\d{2}/.test(time);
}

// 歌词变化
function changeLrc(playTimeSum, lrcTimeSum) {
	// 当播放时间比歌词时间提前一秒
	// 就显示歌词
	if (!lrcTimeSum) {
		lrcIndex++;
	}
	if (playTimeSum == lrcTimeSum) {
		// 高亮歌词
		highLightLrc(lrcIndex);
		// 监听歌词位置
		lrcPositionListener(lrcIndex);
		lrcIndex++;
		showLrc();
	}
}

// 判断是否为时间格式 00:00.00
function checkTime(time) {
	return /\d{2}\:\d{2}\.\d{2}/.test(time);
}

// 显示歌词
function showLrc() {
	document.getElementById('lrcContent').innerHTML = lrcContent;
}

// 高亮歌词
function highLightLrc(i) {
	var $lis = $("#marq ul li");
	// 还原前一句
	$lis.eq(i - 1).animate({
		opacity : 0.5
	}, 1000)
	// 高亮当前句
	$lis.eq(i).animate({
		opacity : 1
	}, 1000);
}


//换肤
var skins= [{
    left:'images/lrc.jpg',
    right:'images/lrc.jpg',
    thumbnail:'images/lrc.jpg',
    title:'经典雅致灰',
    des:'灰色穿插于黑白之间，代表着幽暗、典雅、寂寞与空灵。'
}, {
    left:'images/lrc2.jpg',
    right:'images/lrc2.jpg',
    thumbnail:'images/lrc2.jpg',
    title:'宁静幽雅蓝',
    des:'蓝是一种纯净的颜色，代表着宁静、理智、淡泊、广阔与忧郁。'
}, {
    left:'images/lrc3.jpg',
    right:'images/lrc3.jpg',
    thumbnail:'images/lrc3.jpg',
    title:'宁静幽雅蓝',
    des:'灰色穿插于黑白之间，代表着幽暗、典雅、寂寞与空灵。'
}, {
    left:'images/lrc4.jpg',
    right:'images/lrc4.jpg',
    thumbnail:'images/lrc4.jpg',
    title:'宁静幽雅蓝',
    des:'蓝是一种纯净的颜色，代表着宁静、理智、淡泊、广阔与忧郁。'
}, {
    left:'images/lrc5.jpg',
    right:'images/lrc5.jpg',
    thumbnail:'images/lrc5.jpg',
    title:'宁静幽雅蓝',
    des:'灰色穿插于黑白之间，代表着幽暗、典雅、寂寞与空灵。'
}

];

//页面加载完毕，为skin list添加项
$(function(){
for(var i=0;i<skins.length;i++) {
    $("#SkinList").append(
        "<div height=100px; class='media' onclick='skinToggle("+i+")'>" +
        "<a href='javascript:void(0)' class='pull-left'>" +
        "<img height=100px; src='" + skins[i].thumbnail + "' title='Toggle to change skin.'/>" +
        "</a>" +
        "<div class='media-body'>" +
        "<h3 class='media-heading'>" + skins[i].title + "</h3>" +
        "<p class='text-left'>" + skins[i].des + "</p>" +
        "</div>" +
        "</div>"+
        "<hr/>"
    );
}
//默认使用下标为0的皮肤
skinToggle(0);
});

//skin list 下拉框显示控制
var listShow=function(){
$("#SkinList").css("display","block");

$("#SkinList").css("backgrand-size","cover");
};

var listHide=function(){
$("#SkinList").css("display","none");
};

//皮肤切换控制
var skinToggle=function(index){
var item=skins[index];
console.log(index);
$("#header").css("background","url("+item.top+")");
$("#header").css("background-size","cover");

$("#left-box").css("background","url("+item.left+")");
$("#left-box").css("background-size","cover");

$("#right-box").css("background","url("+item.right+")");
$("#right-box").css("background-size","contain");
};