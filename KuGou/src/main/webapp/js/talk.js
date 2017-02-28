function send(){
	var message=$("#textarea").val();
	$.post("talk/talk?message="+message,function(data){
		//成功 清空  textarea   设置到
		var myDate=new Date().toLocaleString();
		$("#textarea").val("");
		var text=JSON.parse(data).text;
		$("#talkmess").append('<div class="message clearfix"><div class="user-logo">'+
				'<img src="img/head/2024.jpg"></div><div class="wrap-text">'+
				'<h5 class="clearfix">匿名用户</h5><div>'+message+'</div>'+
				'</div><div class="wrap-ri"><div clsss="clearfix">'+
				'<span>'+myDate+'</span></div></div><div style="clear: both;"></div></div>'+
				'<div class="message clearfix"><div class="user-logo"><img src="img/head/2015.jpg">'+
				'</div><div class="wrap-text"><h5 class="clearfix">自动回复客服</h5><div>'+text+'</div>'+
				'</div><div class="wrap-ri"><div clsss="clearfix">'+
				'<span>'+myDate+'</span></div></div><div style="clear: both;"></div> </div>');
	},"json");
}