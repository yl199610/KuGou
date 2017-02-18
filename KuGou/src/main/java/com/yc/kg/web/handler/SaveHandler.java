package com.yc.kg.web.handler;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.kg.entity.KgSave;
import com.yc.kg.entity.PaginationBean;
import com.yc.kg.service.SaveService;

@Controller
@RequestMapping("/save")
public class SaveHandler {

	@Autowired
	private SaveService saveService;
	
	/**
	 * 分页显示歌曲
	 */
	@RequestMapping("/list")
	@ResponseBody
	public PaginationBean<KgSave> list(String page,String rows){
		LogManager.getLogger().debug("请求saveHandler处理list....");
		return saveService.listPartSave(page,rows);
	}

}
