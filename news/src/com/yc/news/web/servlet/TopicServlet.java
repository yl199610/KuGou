package com.yc.news.web.servlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;

import com.jspsmart.upload.File;
import com.jspsmart.upload.Files;
import com.jspsmart.upload.Request;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import com.yc.news.entity.News;
import com.yc.news.entity.NewsBean;
import com.yc.news.entity.Topic;
import com.yc.news.entity.TopicBean;
import com.yc.news.entity.User;
import com.yc.news.service.TopicService;
import com.yc.news.service.impl.TopicServiceImpl;
import com.yc.news.util.ServletUtil;

@WebServlet("/topic/*")
public class TopicServlet extends BaseServlet {
	private static final long serialVersionUID = 7376473757541859963L;
	private TopicService topicService;
	public TopicServlet() {
		topicService = new TopicServiceImpl();
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uriName = ServletUtil.getUriName(request.getRequestURI());
		LogManager.getLogger().debug("请求" + uriName + "进入TopicServlet中，做请求响应处理...");
		switch(uriName){
		case "list":
			doList(request, response);
			break;
		case "get":
			doGetTopic(request,response);
			break;
		case "add":
			doAdd(request, response);
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
		TopicBean topicBean = topicService.getPartTopic(size, temp); //分页处理封装对象
		respOutStr(response, toJsonStr(topicBean));  //把对象转换成json字符串,做为响应数据		
	}
	private void doArchive(HttpServletRequest request, HttpServletResponse response) throws IOException {
			String id = request.getParameter("cnid");
			boolean isSuccess = topicService.ArchiveNews(id);
			respOutStr(response,isSuccess+"");
	}
	private void doAdd(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		SmartUpload su=new SmartUpload();
		su.setCharset("utf-8");
		su.initialize(getServletConfig(), request, response);
		boolean isSuccess=false;
		try {
			su.upload();
			Request req=su.getRequest();
			Topic t=getReqParam2Obj(req, Topic.class);
			isSuccess=topicService.addTopic(t);
			System.out.println(t);
		} catch (SmartUploadException e) {
			e.printStackTrace();
		}
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
			Topic t=getReqParam2Obj(req, Topic.class);
			System.out.println(t);
			isSuccess=topicService.modifyTopic(t);
			System.out.println(isSuccess);
		} catch (SmartUploadException e) {
			e.printStackTrace();
		}
		respOutStr(response,isSuccess+""); 
	}
	private void doGetTopic(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id=request.getParameter("cnid");
		Topic topic=topicService.getTopic(id);
	    respOutStr(response,toJsonStr(topic));
	}
	private void doList(HttpServletRequest request, HttpServletResponse response) throws IOException {
		List<Topic> topics = topicService.getAllTopic();
		respOutStr(response, toJsonStr(topics));
	}

}
