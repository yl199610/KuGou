var nidParam=location.href.substring(location.href.indexOf("?"));
//异步取到新闻分页数据
function getNews(pageNum) {
	//关注：1. 请求路径和请求参数 ："news/list?page=" + pageNum，  
	//2.响应数据 function(data)中的data
	$.get("news/list?page=" + pageNum, function(data) {
		$("#newsList").empty();
		var newses = data.rows;
		for (var i = 0; i < newses.length; i++) {
			if (i % 5 == 0 && i != 0) {
				$("#newsList").append("<li class='space'></li>");
			}
			$("#newsList").append("<li><a href='news/read?cnid="+newses[i].nid+"'>" + newses[i].ntitle + "</a><span> " + newses[i].ncreateDate + " </span></li>");
		}
		$("#pagation").empty();
		$("#pagation").append(
				"当前页数:[" + data.currPage + "/" + data.totalPage + "]&nbsp; " + "<a href='javascript:void(0)' onclick='getNews(1)'>首页</a>&nbsp;&nbsp;"
						+ "<a href='javascript:void(0)' onclick='getNews(" + (data.currPage - 1) + ")'>上一页</a>&nbsp;&nbsp;" + "<a href='javascript:void(0)' onclick='getNews(" + (data.currPage + 1)
						+ ")'>下一页</a>&nbsp;&nbsp;" + "<a href='javascript:void(0)' onclick='getNews(" + data.totalPage + ")'>末页</a>");
	}, "json");
}
getNews(1);

////2.异步取到所有主题信息
//$.post("topic/list", function(data) {
//	$("#class_month").empty();
//	for (var i = 0; i < data.length; i++) {
///*		$("#class_month").append("<a href='#'><b>" + data[i].tname + "</b></a>");
//*/	
//		$("#class_month").append("<a href='javascript:void(0)' id='atopic' onclick=getNewsByName(this)><b>" + data[i].tname + "</b></a>");
//	}
//}, "json");



//获取新闻
$.post("topic/list",function(data){
		$("#class_month").empty();
		var pageCount=1;
		for(var i=0;i<data.length;i++){
	    	$("#class_month").append("<a href='javascript:void(0)' onClick='findSome("+pageCount+","+data[i].tid+")'><b>"+data[i].tname+"</b></a>");
		}
},"json");

function findSome(pageCount,id){
$.get("news/some?cnid="+id,function(data){
		$("#newsList").empty();
		var newses=data.rows;
		for (var i = 0; i < newses.length; i++) {
			if (i % 5 == 0 && i != 0) {
				$("#newsList").append("<li class='space'></li>");
			}
			$("#newsList").append("<li><a href='news/read?cnid="+newses[i].nid+"'>" + newses[i].ntitle + "</a><span> " + newses[i].ncreateDate + " </span></li>");
		}
		$("#pagation").empty();
		$("#pagation").append(
				"当前页数:[" + data.currPage + "/" + data.totalPage + "]&nbsp; " + "<a href='javascript:void(0)' onclick='getNews(1)'>首页</a>&nbsp;&nbsp;"
						+ "<a href='javascript:void(0)' onclick='getNews(" + (data.currPage - 1) + ")'>上一页</a>&nbsp;&nbsp;" + "<a href='javascript:void(0)' onclick='getNews(" + (data.currPage + 1)
						+ ")'>下一页</a>&nbsp;&nbsp;" + "<a href='javascript:void(0)' onclick='getNews(" + data.totalPage + ")'>末页</a>");
	}, "json");
} 



//3.异步取到根据新闻类型的新闻信息
$("#china").empty();
$("#inter").empty();
$("#happy").empty();
$.get("news/typeNews", function(data) {
	for (var i = 0; i < data.length; i++) {
		if (data[i].ntid == 1) {
			$("#china").append("<li><a href='#'><b>" + data[i].ntitle + "</b></a></li>");
		} else if (data[i].ntid == 2) {
			$("#inter").append("<li><a href='#'><b>" + data[i].ntitle + "</b></a></li>");
		} else if (data[i].ntid == 5) {
			$("#happy").append("<li><a href='#'><b>" + data[i].ntitle + "</b></a></li>");
		}
	}
}, "json");

//4.异步登录操作
function login() {
	var params = $("#loginForm").serialize(); //取到表单要提交的请求数据		
	$.post("user/login", params, function(data) {
		if (data) {
			$("#loginForm").html(
					"<label>欢迎<span style='color:green;'>" + $("#loginForm [name='username']").val()
							+ "</span>使用本网站&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href='javascript:void(0)' onclick='logout()'>注销用户</a>"
							+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href='admin.jsp'>管理后台</a></label>");
		} else {
			$("#error").html("用户名或密码错误！！！");
			$("#error").css({
				"color" : "red"
			});
		}
	}, "json");
	alert(params);
	return false;
}
//5.注销操作
function logout() {
	if (confirm("是否确定注销此用户?")) {
		$.post("controll/userControll.jsp", function(data) {
			if (data) {
				$("#loginForm").html(
						'<label> 登录名 </label>' + '<input class="login_input" name="username" required="required" placeholder="输入用户名"/>' + '<label> 密&#160;&#160;码 </label>'
								+ '<input type="password" class="login_input" name="password" required="required" placeholder="输入密码"/> ' + '<input type="submit" class="login_sub" value="登录" />'
								+ '<label id="error"></label> ');
			}
		}, "json");
	}
}