package com.yc.news.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;

import com.jspsmart.upload.Request;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import com.yc.news.entity.TopicBean;
import com.yc.news.entity.User;
import com.yc.news.entity.UserBean;
import com.yc.news.service.UserService;
import com.yc.news.service.impl.UserServiceImpl;
import com.yc.news.util.ServletUtil;

@WebServlet("/user/*")
public class UserServlet extends BaseServlet {

	private static final long serialVersionUID = -192401137536413296L;
	private UserService userService;

	public UserServlet() {
		userService = new UserServiceImpl();
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uriName = ServletUtil.getUriName(request.getRequestURI());
		LogManager.getLogger().debug("请求" + uriName + "进入UserServlet中，做请求响应处理...");
		switch (uriName) {
		case "login":
			doLogin(request, response);
			break;
		case "get":
			doGetUser(request,response);
			break;
		case "add":
			doAdd(request, response);
			break;
		case "list":
			doList(request, response);
			break;
		case "modify":
			doModify(request, response);
			break;
		case "archive":
			doArchive(request, response);
			break;
		case "page":
			doPage(request, response);
			break;
		default:
			respOutStr(response, "<h1>没有对应的请求资源...</h1>");
		}
	}
	private void doPage(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String temp = request.getParameter("page");  //分页的当前页数
		String size = request.getParameter("rows");  //页面的数据条数size
		UserBean topicBean = userService.getPartUser(size, temp); //分页处理封装对象
		respOutStr(response, toJsonStr(topicBean));  //把对象转换成json字符串,做为响应数据			
	}

	private void doArchive(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id = request.getParameter("cnid");
		boolean isSuccess = userService.ArchiveNews(id);
		respOutStr(response,isSuccess+"");
	}

	private void doModify(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SmartUpload su=new SmartUpload();
		su.setCharset("utf-8");
		su.initialize(getServletConfig(), request, response);
		boolean isSuccess=false;
		try {
			su.upload();
			Request req=su.getRequest();
			User n=getReqParam2Obj(req, User.class);
			System.out.println(n);
			isSuccess=userService.modifyUser(n);
			System.out.println(isSuccess);
		}  catch (SmartUploadException e) {
			e.printStackTrace();
		}
		respOutStr(response, isSuccess+"");
	}

	private void doList(HttpServletRequest request, HttpServletResponse response) throws IOException {
		List<User> user=userService.getAllUser();
		respOutStr(response, toJsonStr(user));
	}

	private void doGetUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id=request.getParameter("cnid");
		User user=userService.getUser(id);
	    respOutStr(response,toJsonStr(user));
	}

	private void doAdd(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		SmartUpload su=new SmartUpload();
		su.setCharset("utf-8");
		su.initialize(getServletConfig(), request, response);
		boolean isSuccess=false;
		try {
			su.upload();
			Request req=su.getRequest();
			User u=getReqParam2Obj(req, User.class);
			isSuccess=userService.addUser(u);
		} catch (SmartUploadException e) {
			e.printStackTrace();
		}
		respOutStr(response,isSuccess+"");  
	}


	private void doLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 把请求参数转换成请求对象
		User user = getReqParam2Obj(request, User.class);
		HttpSession session = request.getSession();
		if (userService.login(user.getUname(), user.getUpwd())) {
			session.setAttribute("loginUser", user.getUname());
			response.sendRedirect("/news/back/admin.jsp");
		} else {
			session.setAttribute("errorMsg", "用户名或密码错误!!!");
			response.sendRedirect("/news/login.jsp");
		}
	}
}
