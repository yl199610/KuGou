document.domain = "kugou.com";

/*webkugou播放器调用*/
var KgWebSuperCall = {
    win: null,
	Songs:null,
    version: 10000, /*脚本版本*/
	timer:null,
	/*
		jsonSongs:播放数据  参数示例：[{"Hash":"DCAA61B4AEDD269B9890CADD1C6ACB91","FileName":"刘德华 - 忘情水.mp3","timeLen":"264"},{"Hash":"6F895AAF42234894BEE666DF20C64330","FileName":"刘德华 - 天意.mp3","timeLen":"275"},{"Hash":"7E5827DB45493702C09D12AF58AB559A","FileName":"刘德华 - 暗里着迷.mp3","timeLen":"229"}]
		source:来源
		href:打开的文件地址，默认是index页
	*/
    playSongs: function(jsonSongs, source, href) {
		this.Songs = jsonSongs;
		var ua = navigator.userAgent.toLowerCase();
		//console.log(ua);
		//alert(ua);
		var wechat = /windowswechat/gi.test(ua);
		if(wechat){
			this.OpenPlayer(source, href, "&songs="+encodeURIComponent(jsonSongs));
			return;
		}
		this.OpenPlayer(source, href, "");
		if(this.timer == null){   
			var self = this;
			this.timer = setInterval(function(){
				//alert((self.win && self.win.Audition && self.Songs!=null && self.win.IsFinishFlash));
				if(self.win && self.win.Audition && self.Songs!=null && self.win.IsFinishFlash){
					self.win.Audition("song", self.Songs, "");
					self.Songs = null;
				}
			},1000);
		}
        return false;
    },
	
	OpenPlayer:function(source, href, songs){ /*打开播放器*/
		href = href || "";
		if(href.length > 0) href += ".php";
		if (this.win == null || !this.win.open || this.win.closed) {
            var url = "http://www.kugou.com/webkugouplayer/" + href + "?isopen=1" + songs;
            if (source) {
                url += "&chl=" + source;
            } else {
				url += "&chl=kugou";
			}

			if(href == "index"){  //官网打开为限制播放窗口大小
				this.win = window.open(url, 'web_kugou_player', 'width=745,height=520,top=100,left=100,scrollbars=0,resizable=0,status=1');
			} else {
				this.win = window.open(url, 'web_kugou_player');
			}

			clearInterval(this.timer);
			this.timer = null;
        }
		this.win && this.win.focus && this.win.focus();
	}
};