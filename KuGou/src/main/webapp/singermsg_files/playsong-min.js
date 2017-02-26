document.domain = "kugou.com";
/*webkugou播放器调用*/
var KgWebSuperCall = {
    win: null,
	Songs:null,
    version: 10000, /*version*/
	timer:null,
	/*
	jsonSongs:播放数据  参数示例：[{"Hash":"DCAA61B4AEDD269B9890CADD1C6ACB91","FileName":"刘德华 - 忘情水.mp3","timeLen":"264"},{"Hash":"6F895AAF42234894BEE666DF20C64330","FileName":"刘德华 - 天意.mp3","timeLen":"275"},{"Hash":"7E5827DB45493702C09D12AF58AB559A","FileName":"刘德华 - 暗里着迷.mp3","timeLen":"229"}]
	source:来源
	*/
    playSongs: function(jsonSongs){
    	var _this = this;
    	clearTimeout(_this.timer)
    	var Songs =  Kg.JSON.parse(jsonSongs);
    	for(var i=0,len=Songs.length;i<len;i++){
    		Songs[i]["audio_name"] = Songs[i]["FileName"];
    		Songs[i]["author_name"] = Songs[i]["FileName"].split("-").shift();
            
            if(Songs[i]["Filename"]){
                Songs[i]["FileName"] = Songs[i]["Filename"];
            }
            if(Songs[i]["timeLen"]){
                var tempString = 100; //不是毫秒
                if(Songs[i]["timeLen"].toString().length<= tempString.length){
                    Songs[i]["timelength"] = Songs[i]["timeLen"]*1000;
                }else{
                    Songs[i]["timelength"] = Songs[i]["timeLen"];
                }
            }
            if(Songs[i]["duration"]){
                if(Songs[i]["duration"].toString().length<=tempString.length){
                    Songs[i]["timelength"] = Songs[i]["duration"]*1000;
                }else{
                    Songs[i]["timelength"] = Songs[i]["duration"];
                }
            }
    	}
    	var resSong = _this.JSON.stringify(Songs);
    	_this.timer = setTimeout(function(){
            _this.OpenPlayer(resSong);
	        clearTimeout(_this.timer);
    	})
        _this.addTips();

    },
    OpenPlayer:function(resSong){
        var _this = this,
            timeForAccident=null;
        if(_this.isExists() == "false"||$.jStorage.get('playFlag')===null){
                var k_play_list = [];
                $.jStorage.set("k_play_list", resSong);                           
                window.open("http://www.kugou.com/song/");
        }else{
            timeForAccident = setTimeout(function(){
                if($.jStorage.get('playdata')===null){
                    var k_play_list = [];
                    $.jStorage.set("k_play_list", resSong);                           
                    window.open("http://www.kugou.com/song/");
                }
            },5000)
            $.jStorage.set("newsong",resSong);
        }
    },
    isExists: function() {
        $.jStorage.reInit();
        return $.jStorage.get('playFlag');
    },
    isArray:function(value){
            if(typeof Array.isArray === "function"){
                return Array.isArray(value)
            }else{
                return Object.prototype.toString.call(value);
            }
    },
    removeDuplicates:function (arr, prop) {
         var new_arr = [];
         var lookup  = {};
     
         for (var i in arr) {
             lookup[arr[i][prop]] = arr[i];
         }
     
         for (i in lookup) {
             new_arr.push(lookup[i]);
         }
     
         return new_arr;
    },
    insertArrayAt: function(array, index, arrayToInsert) {
        Array.prototype.splice.apply(array, [index, 0].concat(arrayToInsert));
        return array;
    },
    setCookie:function (c_name, value, expiredays){
　　　　var exdate=new Date();
　　　　exdate.setDate(exdate.getDate() + expiredays);
　　　　document.cookie=c_name+ "=" + escape(value) + ((expiredays==null) ? "" : ";expires="+exdate.toGMTString());
　　},
    getCookie:function (c_name){
　　　　if (document.cookie.length>0){　　//先查询cookie是否为空，为空就return ""
　　　　　　c_start=document.cookie.indexOf(c_name + "=")　　//通过String对象的indexOf()来检查这个cookie是否存在，不存在就为 -1　　
　　　　　　if (c_start!=-1){ 
　　　　　　　　c_start=c_start + c_name.length+1　　//最后这个+1其实就是表示"="号啦，这样就获取到了cookie值的开始位置
　　　　　　　　c_end=document.cookie.indexOf(";",c_start)　　//其实我刚看见indexOf()第二个参数的时候猛然有点晕，后来想起来表示指定的开始索引的位置...这句是为了得到值的结束位置。因为需要考虑是否是最后一项，所以通过";"号是否存在来判断
　　　　　　　　if (c_end==-1) c_end=document.cookie.length　　
　　　　　　　　return unescape(document.cookie.substring(c_start,c_end))　　//通过substring()得到了值。想了解unescape()得先知道escape()是做什么的，都是很重要的基础，想了解的可以搜索下，在文章结尾处也会进行讲解cookie编码细节
　　　　　　} 
　　　　}
　　　　return ""
　　},
    deleteCookie:function(key){ //删除cookie方法
         var date = new Date(); //获取当前时间
         date.setTime(date.getTime()-10000); //将date设置为过去的时间
         document.cookie = key + "=v; expires =" +date.toGMTString();//设置cookie
    },
    addTips:function(){
        var html = [
            '<div class="playtips"><div class="relativeD">',
            '<div class="playtips_bg"></div>',
            '<img src="http://www.kugou.com/yy/static/images/play/icon_add.png" alt="" class="playtips_icon">',
            '<p class="tipstext">已添加至播放页</p>',
            '</div></div>'
        ].join("")
        if($(".playtips").length>0){
            $(".playtips").show().animate({
                "opacity": "1",
                "z-index":"9999"
            });
        }else{
            $("body").append(html);
        }
        var playtipsT =  setTimeout(function(){
            $(".playtips").hide().animate({
                "opacity": "0",
                "z-index":"1"
            });
            clearTimeout(playtipsT)
        },1000)
    },
    /**
     * [JSON 兼容性 json]
     */
    JSON:function() {
        function f(n) {
            return n < 10 ? '0' + n: n;
        }
        Date.prototype.toJSON = function() {
            return this.getUTCFullYear() + '-' + f(this.getUTCMonth() + 1) + '-' + f(this.getUTCDate()) + 'T' + f(this.getUTCHours()) + ':' + f(this.getUTCMinutes()) + ':' + f(this.getUTCSeconds()) + 'Z';
        };
        var m = {
            '\b': '\\b',
            '\t': '\\t',
            '\n': '\\n',
            '\f': '\\f',
            '\r': '\\r',
            '"': '\\"',
            '\\': '\\\\'
        };
        function stringify(value, whitelist) {
            var a, i, k, l, r = /["\\\x00-\x1f\x7f-\x9f]/g,
            v;
            switch (typeof value) {
            case 'string':
                return r.test(value) ? '"' + value.replace(r,
                function(a) {
                    var c = m[a];
                    if (c) {
                        return c;
                    }
                    c = a.charCodeAt();
                    return '\\u00' + Math.floor(c / 16).toString(16) + (c % 16).toString(16);
                }) + '"': '"' + value + '"';
            case 'number':
                return isFinite(value) ? String(value) : 'null';
            case 'boolean':
            case 'null':
                return String(value);
            case 'object':
                if (!value) {
                    return 'null';
                }
                if (typeof value.toJSON === 'function') {
                    return stringify(value.toJSON());
                }
                a = [];
                if (typeof value.length === 'number' && !(value.propertyIsEnumerable('length'))) {
                    l = value.length;
                    for (i = 0; i < l; i += 1) {
                        a.push(stringify(value[i], whitelist) || 'null');
                    }
                    return '[' + a.join(',') + ']';
                }
                if (whitelist) {
                    l = whitelist.length;
                    for (i = 0; i < l; i += 1) {
                        k = whitelist[i];
                        if (typeof k === 'string') {
                            v = stringify(value[k], whitelist);
                            if (v) {
                                a.push(stringify(k) + ':' + v);
                            }
                        }
                    }
                } else {
                    for (k in value) {
                        if (typeof k === 'string') {
                            v = stringify(value[k], whitelist);
                            if (v) {
                                a.push(stringify(k) + ':' + v);
                            }
                        }
                    }
                }
                return '{' + a.join(',') + '}';
            }
        }
        return {
            stringify: stringify,
            parse: function(text, filter) {
                var j;
                function walk(k, v) {
                    var i, n;
                    if (v && typeof v === 'object') {
                        for (i in v) {
                            if (Object.prototype.hasOwnProperty.apply(v, [i])) {
                                n = walk(i, v[i]);
                                if (n !== undefined) {
                                    v[i] = n;
                                } else {
                                    delete v[i];
                                }
                            }
                        }
                    }
                    return filter(k, v);
                }
                if (/^[\],:{}\s]*$/.test(text.replace(/\\["\\\/bfnrtu]/g, '@').replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g, ']').replace(/(?:^|:|,)(?:\s*\[)+/g, ''))) {
                    j = eval('(' + text + ')');
                    return typeof filter === 'function' ? walk('', j) : j;
                }
                throw new SyntaxError('parseJSON');
            }
        };
    }()
};