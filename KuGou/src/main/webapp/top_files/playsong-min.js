document.domain = "kugou.com";

/*webkugou����������*/
var KgWebSuperCall = {
    win: null,
	Songs:null,
    version: 10000, /*�ű��汾*/
	timer:null,
	/*
		jsonSongs:��������  ����ʾ����[{"Hash":"DCAA61B4AEDD269B9890CADD1C6ACB91","FileName":"���»� - ����ˮ.mp3","timeLen":"264"},{"Hash":"6F895AAF42234894BEE666DF20C64330","FileName":"���»� - ����.mp3","timeLen":"275"},{"Hash":"7E5827DB45493702C09D12AF58AB559A","FileName":"���»� - ��������.mp3","timeLen":"229"}]
		source:��Դ
		href:�򿪵��ļ���ַ��Ĭ����indexҳ
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
	
	OpenPlayer:function(source, href, songs){ /*�򿪲�����*/
		href = href || "";
		if(href.length > 0) href += ".php";
		if (this.win == null || !this.win.open || this.win.closed) {
            var url = "http://www.kugou.com/webkugouplayer/" + href + "?isopen=1" + songs;
            if (source) {
                url += "&chl=" + source;
            } else {
				url += "&chl=kugou";
			}

			if(href == "index"){  //������Ϊ���Ʋ��Ŵ��ڴ�С
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