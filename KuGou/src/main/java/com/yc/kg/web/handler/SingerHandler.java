package com.yc.kg.web.handler;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.kg.entity.KuSinger;
import com.yc.kg.entity.PaginationBean;
import com.yc.kg.service.SingerService;

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
	
	/**
	 * 删除歌手
	 */
	@RequestMapping("/del")
	@ResponseBody
	public boolean delete(@RequestParam(name="sid")int sid){
		LogManager.getLogger().debug("请求singerHandler处理delete....\n"+sid);
		return singerService.getSingerMsg(sid);
	}
	
	/**
	 * 根据id查出所有信息
	 */
	@RequestMapping("/detail")
	@ResponseBody
	public KuSinger detail(@RequestParam(name="sid")int sid){
		LogManager.getLogger().debug("请求singerHandler处理detail....\n"+sid);
		return singerService.getSingerMsgs(sid);
	}
	
	
	@RequestMapping("/modify")
	@ResponseBody
	public boolean modify(KuSinger singer){
		LogManager.getLogger().debug("请求songHandler处理modify....\n"+singer);
		
		System.out.println("singer============="+singer);
		return singerService.modifySingerMsg(singer);
	}
	
	
	@RequestMapping("/add")
	@ResponseBody
	public boolean add(KuSinger singer){
		LogManager.getLogger().debug("请求songHandler处理add....\n"+singer);
		return singerService.addsinger(singer);
	}	
}
