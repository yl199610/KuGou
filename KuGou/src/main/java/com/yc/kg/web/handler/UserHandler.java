package com.yc.kg.web.handler;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
				user.setKgUserPic("/"+ServletUtil.UPLOAD_DIR_NAME+"/"+picData.getOriginalFilename());//图片上传
			System.out.println("picData.getOriginalFilename()"+picData.getOriginalFilename());
			System.out.println("picData.ServletUtil.UPLOAD_DIR()"+ServletUtil.UPLOAD_DIR);	
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		return userService.modifyUser(user);
		

	}
	
	

	/**
	 * 登录
	 */
	@RequestMapping("/login")
	@ResponseBody
	public boolean login(HttpServletRequest request, HttpServletResponse response) throws IOException {
		KuUser kuser = getReqParam2Obj(request , KuUser.class);
		HttpSession session = request.getSession();

		List<KuUser> user=userService.userlogin(kuser);
		
		if(user.size()>0){
			session.setAttribute("loginUser", kuser.getKgUserName());
			session.setAttribute("loginUserId", user.get(0));
			System.out.println("============"+session.getAttribute("loginUser"));
			return true;
		}else{
			session.setAttribute("errorMsg", "用户名或密码错误");
			return false;
		}
	}


	
	
	protected <T> T getReqParam2Obj(HttpServletRequest request, Class<T> clazz) {
		//1.取到要转换成的对象的实例
		T t =null;
		try {
			t=clazz.newInstance();
		} catch (InstantiationException | IllegalAccessException e) {
			LogManager.getLogger().error("创建"+clazz.getName()+"实例对象失败");
		}
		//2.取到所有的请求参数名
		Enumeration<String> paramNames = request.getParameterNames();
		while(paramNames.hasMoreElements()){
			String valName = paramNames.nextElement();
			String val=request.getParameter(valName);
			System.out.println(valName+"===="+val);
			
			String suff = String.format("et%c%s", Character.toUpperCase(valName.charAt(0)), valName.substring(1) );
			
			try {
				Class<?> paramType = clazz.getMethod("g"+suff).getReturnType();
				Method sm = clazz.getMethod("s" + suff , paramType);
				
				if(paramType.getName().intern() == int.class.getName().intern() ||
						paramType.getName().intern() ==Integer.class.getName().intern()){
					sm.invoke(t, Integer.parseInt(val));
				}else if(paramType.getName().intern()==double.class.getName().intern() ||
						paramType.getName().intern()==Double.class.getName().intern()){
					sm.invoke(t, Double.parseDouble(val));
				}else{
					sm.invoke(t, val);
				}
			}catch (NoSuchMethodException  | SecurityException e) {
				LogManager.getLogger().warn("在"+clazz.getName()+"中，没有对应的" + e.getMessage()+"方法");
			} catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
				LogManager.getLogger().warn(e.getMessage()+"传入参数格式不正确，转换数据类型失败");
			} 
		}
		return t;
	}
	
	@RequestMapping("/zhuche")
	public String zhuche(KuUser user) {//ModelMap   逻辑操作和实体类    request.setAttribute
		LogManager.getLogger().debug("请求userHandler注册用户3...");
		System.out.println("注册号suer"+user);
		if(userService.zhuche(user)>0){
			return "redirect:/zhuchesuccess.jsp";
		}else {
			return "redirect:/page/manage.jsp";
		}
	}
	
	@RequestMapping("/check")
	@ResponseBody
	public boolean check(@RequestParam(name="uname",required=false)String name) {
		LogManager.getLogger().debug("请求userHandler查询用户名是否重复...name"+name);
		if(name==""||name==null){//不通过
			System.out.println("=====-----------------");
			return false;
		}else{
			KuUser user=userService.findUser(name);
			if(user!=null){//查询出有这个用户名
				System.out.println("================"+user);
				return false;
			}else{
				System.out.println("%%%%%%%%%%%%%%5");
				return true;
			}
		}
	}
}
