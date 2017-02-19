package com.yc.kg.web.handler;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.kg.entity.KuSongDetail;
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
	
	@RequestMapping("/add")
	@ResponseBody
	public boolean add(KuSongStyle style){
		LogManager.getLogger().debug("请求styleHandler处理add....\n"+style);
		return styleService.addSongStyle(style);
	}
	
	@RequestMapping("/del")
	@ResponseBody
	public boolean del(@RequestParam(name="cnid")int id){
		LogManager.getLogger().debug("请求styleHandler处理delete....\n"+id);
		return styleService.delSongStyle(id);
	}
	
	/**
	 * 根据id查出所有信息
	 */
	@RequestMapping("/detail")
	@ResponseBody
	public KuSongStyle detail(@RequestParam(name="sid")int sid){
		LogManager.getLogger().debug("请求styleHandler处理delete....\n"+sid);
		return styleService.getSongStyleMsg(sid);
	}
	
	
	@RequestMapping("/modify")
	@ResponseBody
	public boolean modify(KuSongStyle style){
		LogManager.getLogger().debug("请求styleHandler处理modify....\n"+style);
		return styleService.modifySongStyleMsg(style);
	}
	
	@RequestMapping("/all")
	@ResponseBody
	public List<KuSongStyle> list(){
		LogManager.getLogger().debug("请求styleHandler处理all....");
		return styleService.getAllStyle();
	}

	
	@RequestMapping("/findStyle")
	@ResponseBody
	public List<KuSongDetail> findStyle(@RequestParam(name="kuSongStyleId")int styleid){
		LogManager.getLogger().debug("请求styleHandler处理styleid...."+styleid);
		
		List<KuSongDetail>details=styleService.findStyle(styleid);
		System.out.println(details);
		return details;
	}
	
	
}
