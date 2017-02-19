package com.yc.kg.web.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.yc.kg.entity.KuSong;
import com.yc.kg.service.SongService;

@Controller
@Component("pushMsgHandler")
public class PushMsgHandler extends TextWebSocketHandler{

	@Autowired
	private SongService songService;	
	
	@Override//做推送消息处理向客户端发送消息
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		KuSong song= songService.pushSong();
		System.out.println(song);
		session.sendMessage(new TextMessage("系统向你推荐歌曲 ===>   "+song.getKuSongName()));
		System.out.println("==================afterConnectionEstablished=======================");
	}
	
}