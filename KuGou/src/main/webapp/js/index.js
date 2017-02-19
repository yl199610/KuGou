var socket = new WebSocket('ws://' + window.location.host + '/KuGou/pushmsg');

socket.onmessage = function(message){
	$.messager.alert('信用卡消息',message.data,'warning');
}