package com.yc.kg.web.handler;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yc.kg.entity.KuSinger;
import com.yc.kg.entity.KuSong;
import com.yc.kg.entity.PaginationBean;
import com.yc.kg.service.SingerService;
import com.yc.kg.service.SongService;

@Controller
@RequestMapping("/sing")
public class SingerHandler {

	@Autowired
	private SingerService singerService;
	
	/**
	 * 分页显示歌曲
	 */
	@RequestMapping("/list")
	@ResponseBody
	public PaginationBean<KuSinger> list(String page,String rows){
		LogManager.getLogger().debug("请求songHandler处理list....");
		return singerService.listPartSinger(page,rows);
	}
	
}
