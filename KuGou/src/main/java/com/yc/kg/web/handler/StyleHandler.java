package com.yc.kg.web.handler;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.kg.entity.KuSongStyle;
import com.yc.kg.entity.PaginationBean;
import com.yc.kg.service.StyleService;

@Controller
@RequestMapping("/style")
public class StyleHandler {

	@Autowired
	private StyleService styleService;
	
	/**
	 * 分页显示歌曲
	 */
	@RequestMapping("/list")
	@ResponseBody
	public PaginationBean<KuSongStyle> list(String page,String rows){
		LogManager.getLogger().debug("请求styleHandler处理list....");
		return styleService.listPartStyle(page,rows);
	}
	
}
