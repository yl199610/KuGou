package com.yc.kg.web.handler;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yc.kg.entity.KuSinger;
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
		System.out.println("-----------"+songService.listPartSong(page,rows));
		return songService.listPartSong(page,rows);
	}
	
	@RequestMapping("/add")
	@ResponseBody
	public boolean add(KuSong song){
		LogManager.getLogger().debug("请求songHandler处理add....\n"+song);
		return songService.addSong(song);
	}
	
	@RequestMapping("/del")
	@ResponseBody
	public boolean del(@RequestParam(name="cnid")int id){
		LogManager.getLogger().debug("请求songHandler处理delete....\n"+id);
		return songService.delSong(id);
	}
	
	/**
	 * 根据id查出所有信息
	 */
	@RequestMapping("/detail")
	@ResponseBody
	public KuSong detail(@RequestParam(name="sid")int sid){
		LogManager.getLogger().debug("请求songHandler处理delete....\n"+sid);
		return songService.getSongMsg(sid);
	}
	
	
	@RequestMapping("/modify")
	@ResponseBody
	public boolean modify(KuSong song){
		LogManager.getLogger().debug("请求songHandler处理modify....\n"+song);
		return songService.modifySongMsg(song);
	}
	//获得歌手名称到下拉框
	@RequestMapping("/getAllSong")
	@ResponseBody
	public List<KuSong> get(){
		LogManager.getLogger().debug("请求songHandler处理get....\n");
		return songService.getSong();
	}		
	
	
}
