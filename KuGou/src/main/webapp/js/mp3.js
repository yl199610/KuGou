
// 开始
function playNow(){
	letsGo();		
	lrcStart();
	Player.controls.play();
}

// 暂停
function Pause(){
	Player.controls.pause();
	lrcStop();
	clearInterval(interHandler);
	interHandler = null;
}

// 滚动歌词停止
function lrcStop(){
	var marq = $("#marq")[0];
	marq.stop();
}

// 滚动歌词开始
function lrcStart(){
	var marq = $("#marq")[0];
	marq.start();	
}