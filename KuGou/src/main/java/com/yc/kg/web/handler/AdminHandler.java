package com.yc.kg.web.handler;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.kg.entity.KuAdmin;
import com.yc.kg.service.AdminService;

@Controller
@RequestMapping("/admin")
@SessionAttributes("loginUser")
public class AdminHandler {
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private JavaMailSender mailSender;

	/**
	 * 忘记密码
	 */
	@RequestMapping("/forget")
	public String forget(String username, String email, HttpServletRequest request) {
		LogManager.getLogger().debug("请求UserHandler进行forget的操作....");
		LogManager.getLogger().debug("请求数据username:" + username + ", email:" + email);
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom("studymail_test@163.com");
			helper.setTo(email);
			helper.setSubject("找回密码");
			String hrefStr = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getServletContext().getContextPath() + "/user/getpassword?username=" + username;
			System.out.println(hrefStr);
			helper.setText("<a href='" + hrefStr + "'>找回密码</a><br>如果连接不可用拷贝" + hrefStr + "到地址栏...", true);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
			return "redirect:/page/forgetPassword.jsp";
		}
		return "redirect:/page/forgetSuccess.jsp";
	}
	@RequestMapping("/getpassword")
	public String getpassword(String username, HttpSession session) {
		Random rand = new Random();
		String randPassword = rand.nextInt(900000) + 100000 + "";
		//业务处理重置密码
		adminService.resetPassword(username,randPassword);
		session.setAttribute("newPassword", randPassword);
		return "redirect:/page/getpasswordSuccess.jsp";
	}
	
	/**
	 * 登录
	 */
	@RequestMapping("/login")
	public String login(KuAdmin admin,ModelMap map) {//ModelMap   逻辑操作和实体类    request.setAttribute
		System.out.println("==========="+admin);
		admin=adminService.login(admin);
		if(admin!=null){
			map.put("loginUser",admin);//放到sessoin
			return "redirect:/page/manage.jsp";
		}
		map.put("errorMsg","用户名或密码错误");
		System.out.println(map.get("errorMsg"));
		return "forward:/login.jsp";
	}
	
}
