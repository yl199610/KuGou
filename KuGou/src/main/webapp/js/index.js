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

/*function findstyledetail(kuSongStyleId){
	$.post("style/findStyle?kuSongStyleId="+kuSongStyleId, function(data) {
		//$(".itemContent1")[0].innerHTML='';
		$(".itemContent1").empty();
//		alert(JSON.Stringify(data));
//		 $.each(data.kuSinger, function(i, item) { 
//			alert(item.kuSingerId);
//		 });
		 var jsonarray = eval(data);
		 var name=jsonarray[0].kuSinger.kuSingerName;//歌手表的歌曲名
		 var singer=jsonarray[0].kuSong.kuSongName;//歌曲表歌曲名
		 alert(jsonarray[0].kuSongDetailId);//详细表id
		 alert(name);
		 alert(singer);
		for (i=0; i < data.length; i++) {
			 var jsonarray = eval(data);
			 //歌曲时间   歌词路径(显示歌词)   歌曲路径(播放歌曲)   详细表id(增加点击率 或 跳转到播放器页面 点击播放全部跳转到播放器页面)
			 var singer=jsonarray[i].kuSinger.kuSingerName;//歌手表的歌曲名
			 var song=jsonarray[i].kuSong.kuSongName;//歌曲表歌曲名
			 var songaddress=jsonarray[i].kuSong.kuSongAddress;//歌曲地址
			 var save=(jsonarray[i].kuSong.kuSongId);
			 var songSinger=singer+"-"+song;
			 $(".itemContent1").append('<li style="display:block;margin-top:10px;" ><span class="songName">'+songSinger+'</span>'
					 +'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
					 +'<audio style="float:right;" src="'+songaddress+'" controls="controls"></audio></li>'
					 +'<form action="save/save" method="post" id="saveForm"><input type="hidden" value="'+save+'" name="kgSaveSid" id="kgSaveSid">'
					 +'<input type="hidden" value="'+singer+'" name="kgSavenext" id="kgSavenext">'
					 +'<input id="save" type="submit" value="收藏" onclick="save('+save+')"/></form>');
		}	
	}, "json");
<<<<<<< HEAD
}

=======
}*/
function findstyledetail(kuSongStyleId){
	//$.post("style/findStyle?kuSongStyleId="+kuSongStyleId, function(data) {
	
		$(".itemContent1").empty();
		$(".itemContent1").append("<table id='songInfo1'></table>");
		
		$('#songInfo1').datagrid({
			fitColumns : true,
			url:'style/findStyle?kuSongStyleId='+kuSongStyleId,
			singleSelect : true,
			pagination:true,
			pageList:[4,6],
			pageSize:6,
			columns : [ [ {
				field : 'kuSongName',
				title : '歌曲名',
				width : 16,
				align:'center',
				formatter: function(value,row,index){
			    return row['kuSong']['kuSongName'];
			} 
			}, {
				field : 'kuSingerName',
				title : '歌手名',
				width : 16,
				align:'center',
				formatter: function(value,row,index){
					return row['kuSinger']['kuSingerName'];
				} 
				
			}, {
				field : 'operator',
				title : '操作',
				width : 44,
				align:'center',
				formatter: function(value,row,index){	
					return  '<li style="display:block;margin:10px" >'+' <audio style="Float:right; width：260px;" src='+ row["kuSong"]["kuSongAddress"]+' controls="controls"></audio></li>'+
					'<form action="save/save" method="post" id="saveForm"><input type="hidden" value="'+row["kuSong"]["kuSongId"]+'" name="kgSaveSid" id="kgSaveSid">'
					 +'<input type="hidden" value="'+row["kuSinger"]["kuSingerName"]+'" name="kgSavenext" id="kgSavenext">'
					 +'<input type="submit" value="收藏" onclick="save('+row["kuSong"]["kuSongId"]+')"/></form>';
				}
			} ]]
		});
//	}, "json");
};
//mv
loadMv();
//
function loadMv() {
	$.post("style/mv", function(data) {
		 $(".itemContenta").empty();
		for (i=0; i < data.length; i++) {
			 var jsonarray = eval(data);
			 var singer=jsonarray[i].kuSinger.kuSingerName;//歌手表
			 var song=jsonarray[i].kuSong.kuSongName;//歌曲表歌曲名
			 var songimage=jsonarray[i].kuSinger.kuSingerImg;//歌曲图片
			 $(".itemContenta").append('<div class="cpt cptMidL"><p></p><a target="_blank" href="./mv.jsp">'+
				'<img src="'+songimage+'" loading="1" class=" "><div class="cptB">'+
				'<p class="songListName">'+song+'</p> <p class="songListSinger">'+singer+'</p>'+
				'</div></a></div>');
		}	
	}, "json");
}