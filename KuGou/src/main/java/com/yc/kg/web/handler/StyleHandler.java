package com.yc.kg.web.handler;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.kg.entity.KuSong;
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
		System.out.println(styleService.listPartStyle(page,rows));
		return styleService.listPartStyle(page,rows);
	}
	
	@RequestMapping("/mainlist")
	@ResponseBody
	public PaginationBean<KuSongDetail> mainlist(String page,String rows){
		LogManager.getLogger().debug("请求styleHandler处理list....");
		//System.out.println("styleService.listPartMainStyle(page,rows)"+styleService.listPartMainStyle(page,rows));
		return styleService.listPartMainStyle(page,rows);
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

	
/*	@RequestMapping("/findStyle")
	@ResponseBody
	public List<KuSongDetail> findStyle(@RequestParam(name="kuSongStyleId")int styleid){
		LogManager.getLogger().debug("请求styleHandler处理styleid....\n"+styleid);
		List<KuSongDetail>details=styleService.findStyle(styleid);
		
		for (int i = 0; i < details.size(); i++) {
			System.out.println("--------------\n"+details.get(i).getKuSinger());
			details.get(i).getKuSong();
		}
		
		@RequestMapping("/list")
		@ResponseBody
		public PaginationBean<KuSong> list(String page,String rows){
			LogManager.getLogger().debug("请求songHandler处理list....");
			System.out.println(songService.listPartSong(page,rows));
			return songService.listPartSong(page,rows);
		}
		for (int j = 0; j <1000; j++) {
			KuSongDetail kd=details.get(j);
			s.setSinger(kd.getKuSinger().get(j).getKuSingerName());
			s.setSong(kd.getKuSong().get(j).getKuSongName());
			System.out.println(kd.getKuSinger()+"-"+kd.getKuSong());
			ss.add(s);
		}
		System.out.println(ss);
		System.out.println("detaile"+details);
		return details;
	}*/
	//分页显示
	@RequestMapping("/findStyle")
	@ResponseBody
	public PaginationBean<KuSongDetail> findStyle(@RequestParam(name="kuSongStyleId")int kuSongStyleId,String page,String rows){
		LogManager.getLogger().debug("请求styleHandler处理styleid....\n"+kuSongStyleId);
		System.out.println("page"+page+"rows"+rows);
		
		//查找对应风格的所有的歌曲
		PaginationBean<KuSongDetail> details =styleService.findStyle(kuSongStyleId, page,rows);
		
		
		/*//List<KuSongDetail>details=styleService.findStyle(styleid);
		
		//分页     
		PaginationBean<KuSongDetail>istPart=styleService.listPartStyle1(page,rows);
		//System.out.println("2"+details.get("KuSongDetail"));
		System.out.println(istPart.getPageSize()+"大哥"+istPart.getPageSize()+"   11"+istPart.getTotal()+ "   11"+istPart.getTotalPage());
		for (int i = 0; i < details.size(); i++) {
			details.get(i).setCurrPage(2);
			details.get(i).setPageSize(istPart.getPageSize());
			details.get(i).setTotal(istPart.getTotal());
			details.get(i).setTotalPage(istPart.getTotalPage());		
		}
		System.out.println("detail1"+details);
		System.out.println("styleService.listPartStyle1"+styleService.listPartStyle1(page,rows));

		//System.out.println(styleService.listPartStyle1(page,rows)+"lisPartStyle");
*/
		System.out.println(details);
		return details;
	}
	
	
	
	
	@RequestMapping("/findAllStyle")
	@ResponseBody
	public List<KuSongDetail> findAllStyle(){
		LogManager.getLogger().debug("请求styleHandler处理styleid....\n");
		List<KuSongDetail>details=styleService.findAllStyle();
		return details;
	}
	
	
	@RequestMapping("/mv")
	@ResponseBody
	public List<KuSongDetail> mv(){
		LogManager.getLogger().debug("请求songHandler处理mv....\n");
		System.out.println("------"+styleService.findFourdetail());
		return styleService.findFourdetail();
	}	
}
