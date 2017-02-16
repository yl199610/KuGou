package com.yc.kg.web.handler;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yc.kg.entity.KuSong;
import com.yc.kg.entity.PaginationBean;
import com.yc.kg.service.SongService;

@Controller
@RequestMapping("/song")
public class SongHandler {

	@Autowired
	private SongService songService;
	
	/**
	 * 分页显示歌曲
	 */
	@RequestMapping("/list")
	@ResponseBody
	public PaginationBean<KuSong> list(String page,String rows){
		LogManager.getLogger().debug("请求songHandler处理list....");
		return songService.listPartSong(page,rows);
	}
	
	@RequestMapping("/add")
	@ResponseBody
	public boolean add(KuSong song){
		LogManager.getLogger().debug("请求songHandler处理add....\n"+song);
		//return songService.addSong(song);
		return false;
	}
}
