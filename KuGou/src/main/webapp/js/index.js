var socket = new WebSocket('ws://' + window.location.host + '/KuGou/pushmsg');

$(document).ready(function() {
	
})
//异步登录操作
var loginStr=$("#userloginForm").html();
function login(){
	var params=$("#userloginForm").serialize();//取到表单要提交的请求数据
	$.post("user/login",params,function(data){
		if(data){
			$("#userloginForm").html("<a href='./playlist.jsp' target='_blank'>我的收藏</a>&nbsp;<label>欢迎<span style='color:green;'>"+$("#userloginForm [name='kgUserName']").val()+
			"</span>使用本网站&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:void(0)' onclick='logout()'>注销用户</a>");
		}else{
			$("#error").html("用户名或密码错误!!!");
			$("#error").css({"color":"red"});
		}
	},"json");
	return false;
}
//注销操作
function logout(){
	if(confirm("是否确定注销此用户?")){
    	$.post("page/userControl.jsp",function(data){
    		if(data){
    			$("#userloginForm").html("<span><a target='_blank' href='./reg.jsp'>注册</a></span>"+
    				'<label> 登录名 </label>'+
			  	 	'<input name="kgUserName" required="required" placeholder="输入用户名"/>'+
				   	'<label> 密&#160;&#160;码 </label>'+
				    '<input type="password" name="kgUserPwd" required="required" placeholder="输入密码"/>'+
				    '<input type="submit"  value="登录"/>'+
				    '<label id="error"></label>'
				    );
    		}
    	},"json");
	}
}

socket.onmessage = function(message){
	$.messager.alert('歌曲消息',message.data,'warning');
}

loadSongStyleInfo();


function loadSongStyleInfo() {
	$.post("style/all", function(data) {
		var styleAllStr = "";
		var i=0;
		findstyledetail(data[0].kuSongStyleId);
		for (i=0; i < data.length; i++) {
			styleAllStr += '<a href="javascript:void(0)" class="MenuItem" onmouseover="findstyledetail('+data[i].kuSongStyleId+')">'+ data[i].kuSongStyleName +'&nbsp;&nbsp;&nbsp;&nbsp;</a>';
		}
		$("#SongtabMenu")[0].innerHTML = styleAllStr ;
	}, "json");
}

function findstyledetail(kuSongStyleId){
	$.post("style/findStyle?kuSongStyleId="+kuSongStyleId, function(data) {
		//$(".itemContent1")[0].innerHTML='';
		$(".itemContent1").empty();
//		alert(JSON.Stringify(data));
//		 $.each(data.kuSinger, function(i, item) { 
//			alert(item.kuSingerId);
//		 });
/*		 var jsonarray = eval(data);
		 var name=jsonarray[0].kuSinger.kuSingerName;//歌手表的歌曲名
		 var singer=jsonarray[0].kuSong.kuSongName;//歌曲表歌曲名
		 alert(jsonarray[0].kuSongDetailId);//详细表id
		 alert(name);
		 alert(singer);*/
		for (i=0; i < data.length; i++) {
			 var jsonarray = eval(data);
			 //歌曲时间   歌词路径(显示歌词)   歌曲路径(播放歌曲)   详细表id(增加点击率 或 跳转到播放器页面 点击播放全部跳转到播放器页面)
			 var singer=jsonarray[i].kuSinger.kuSingerName;//歌手表的歌曲名
			 var song=jsonarray[i].kuSong.kuSongName;//歌曲表歌曲名
			 var save=(jsonarray[i].kuSong.kuSongId);
			 var songSinger=singer+"-"+song;
			 $(".itemContent1").append('<li style="display:block;margin-top:10px;" ><span class="songName">'+songSinger+'</span>'
					 +'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
					 +'<audio style="float:right;" src="music/6039.mp3" controls="controls"></audio></li>'
					 +'<form action="save/save" method="post" id="saveForm"><input type="hidden" value="'+save+'" name="kgSaveSid" id="kgSaveSid">'
					 +'<input type="hidden" value="'+singer+'" name="kgSavenext" id="kgSavenext">'
					 +'<input type="submit" value="收藏" onclick="save('+save+')"/></form>');
		}	
	}, "json");
}

/*
function findstyledetail(kuSongStyleId){
	$.post("style/findStyle?kuSongStyleId="+kuSongStyleId, function(data) {
		 var s=0;
		
		$(".itemContent1").empty();
		$(".itemContent1").append("<table id='songInfo1'></table>");
		
		$('#songInfo1').datagrid({
			fitColumns : true,
			url:'style/findStyle?kuSongStyleId='+kuSongStyleId,
			url:'style/mainlist',
			singleSelect : true,
			pagination:true,
			columns : [ [{
				field : 'operator',
				title : '操作',
				width : 40,
				align:'center',
				formatter: function(value,row,index){
					alert(index);
					s=s+1;
					var str='';
					if(s===1){		
					for (  var i=0; i < data.length; i++) {
						 var jsonarray = eval(data);	
						 //歌曲时间   歌词路径(显示歌词)   歌曲路径(播放歌曲)   详细表id(增加点击率 或 跳转到播放器页面 点击播放全部跳转到播放器页面)
						 var singer=jsonarray[i].kuSinger.kuSingerName;//歌手表的歌曲名
						 var song=jsonarray[i].kuSong.kuSongName;//歌曲表歌曲名
						 var songSinger=singer+"--"+song;
						 str=str+'<li style="display:block;margin:20px" ><a  href="javascript:void(0)"> <span class="songName" style="Float:left;">'+songSinger+'</span></a>'+
						 ' <audio style="Float:right;" src="music/6039.mp3" controls="controls"></audio></li>';//<span class="songTime" style="Float:right;" >04:26</span> 
					} 
						return str;
					}else{
						return '';
					}
				}
			} ]]
		});完整
	}, "json");
};

*/