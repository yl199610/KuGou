package com.yc.kg.web.handler;

import java.io.File;
import java.io.IOException;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yc.kg.entity.KuUser;
import com.yc.kg.entity.PaginationBean;
import com.yc.kg.service.UserService;
import com.yc.kg.util.ServletUtil;

@Controller
@RequestMapping("/user")
public class UserHandler {

	@Autowired
	private UserService userService;
	
	/**
	 * 分页显示歌曲
	 */
	@RequestMapping("/list")
	@ResponseBody
	public PaginationBean<KuUser> list(String page,String rows){
		LogManager.getLogger().debug("请求songHandler处理list....");
		return userService.listPartUser(page,rows);
	}
	
	@RequestMapping("/detail")
	@ResponseBody
	public KuUser detail(@RequestParam(name="uid")int sid){
		LogManager.getLogger().debug("请求songHandler处理delete....\n"+sid);
		return userService.getUserMsg(sid);
	}
	
	@RequestMapping("/modify")
	@ResponseBody
	public boolean modify(@RequestParam(name="picData",required=false)MultipartFile picData,KuUser user){
		LogManager.getLogger().debug("请求userHandler处理modify...."+user);
		if(picData!=null){
			try {
				picData.transferTo(new File(ServletUtil.UPLOAD_DIR,picData.getOriginalFilename()));
				user.setKgUserPic("/"+ServletUtil.UPLOAD_DIR_NAME+"/"+picData.getOriginalFilename());
				System.out.println(user.getKgUserPic());
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		//return userService.modifyUser();
		return false;
	}
	
	
	@RequestMapping("/reg")
	public String login(KuUser user,ModelMap map) {//ModelMap   逻辑操作和实体类    request.setAttribute
		return "page:/forgetSuccess.jsp";
	}
	
	
}
