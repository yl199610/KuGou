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
import com.sun.org.apache.bcel.internal.generic.INSTANCEOF;
import com.yc.news.entity.News;
import com.yc.news.entity.NewsBean;
import com.yc.news.service.NewsService;
import com.yc.news.service.impl.NewsServiceImpl;
import com.yc.news.util.ServletUtil;


@WebServlet("/news/*")
public class NewsServlet extends BaseServlet {
	private static final long serialVersionUID = 6845345674434576652L;
	private NewsService newsService;
	private String imgPath=null;
	
	public NewsServlet() {
		newsService = new NewsServiceImpl();
	}
	//请求响应处理方法
	//关注：1.请求来的参数(request的数据 如：uri, parameter...)
	//2.响应数据（针对异步请求）和 跳转地址（针对正常请求）
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String uriName = ServletUtil.getUriName(request.getRequestURI());
		LogManager.getLogger().debug("请求" + uriName + "进入NewsServlet中，做请求响应处理...");
		switch(uriName){
		case "list":
			doList(request, response);
			break;
		case "typeNews":
			doLeftSide(request, response);
			break;
		case "read":
			doRead(request, response);
			break;
		case "byId":
			doById(request, response);
			break;
		case "detail":
			doDetail(request, response);
			break;
		case "modify":
			doModify(request, response);
			break;
		case "archive":
			doArchive(request, response);
			break;
		case "add":
			doAdd(request, response);
			break;
		case "some":
			doSome(request, response);
			break;
		default:
			respOutStr(response, "<h1>没有对应的请求资源...</h1>");
		}
	}

	//点击标题获取对应的新闻
	private void doSome(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id=request.getParameter("cnid");
		String temp=request.getParameter("page");//当前分页的当前页数
		String size=request.getParameter("rows");//当前页面的数据条数
	    NewsBean newsBean = newsService.getNewsName(size,temp,id);//分页处理封装对象
	    respOutStr(response,toJsonStr(newsBean));//把对象转换成json字符串响应
	}
	private void doAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SmartUpload su=new SmartUpload();
		su.setCharset("utf-8");
		su.initialize(getServletConfig(), request, response);
		boolean isSuccess=false;
		try {
			su.upload();
			Request req=su.getRequest();
			Files fs=su.getFiles();//取得所有的上传文件对象
			File f=fs.getFile(0);
			String file=f.getFileName();
			String InsertPath=null;
			if(file.equals("")){
				InsertPath="images/not_pic.jpg";
			}else{
				InsertPath="upload"+"/"+file;//虚拟路径
			}
			f.saveAs(InsertPath,SmartUpload.SAVE_VIRTUAL);//上传到哪个目录
			
			News n=getReqParam2Obj(req, News.class);
			n.setNpicpath(InsertPath);
			isSuccess=newsService.addNews(n);
			System.out.println(n);
		} catch (SmartUploadException e) {
			e.printStackTrace();
		}
		respOutStr(response,isSuccess+"");  //把对象转换成json字符串,做为响应数据
	}
	
	private void doArchive(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id = request.getParameter("cnid");
		boolean isSuccess = newsService.ArchiveNews(id);
		respOutStr(response,isSuccess+"");
	}
	private void doModify(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		//String t = request.getParameter("ntitle");
		//System.out.println("title==>"+t);不能这样直接获取  因为是流文件   request不能获取到  为异步请求
		SmartUpload su=new SmartUpload();
		su.setCharset("utf-8");
		su.initialize(getServletConfig(), request, response);
		boolean isSuccess=false;
		try {
			su.upload();
			Request req=su.getRequest();
			Files fs=su.getFiles();//取得所有的上传文件对象
			File f=fs.getFile(0);
			String file=f.getFileName();
			String uploadPath=null;
			if(file.equals("")){
				 uploadPath=imgPath;
			}else{
				 uploadPath="upload"+"/"+file;//虚拟路径
			}
			f.saveAs(uploadPath,SmartUpload.SAVE_VIRTUAL);//上传到哪个目录
			System.out.println("sdf");
			//上传到工作空间
//			String testUploadPath="F:\\workspacejsp\\news\\WebContent\\upload\\"+f.getFileName();
//			f.saveAs(testUploadPath,SmartUpload.SAVE_PHYSICAL);
//			System.out.println("testUploadPath==>"+testUploadPath);
			News n=getReqParam2Obj(req, News.class);
				n.setNpicpath(uploadPath);
			isSuccess=newsService.modifyNews(n);
		} catch (SmartUploadException e) {
			e.printStackTrace();
		}
		respOutStr(response,isSuccess+"");  //把对象转换成json字符串,做为响应数据
	}
	
	private void doDetail(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id = request.getParameter("cnid");
		News news = newsService.getNews(id);
		imgPath=news.getNpicpath();
		respOutStr(response, toJsonStr(news));  //把对象转换成json字符串,做为响应数据
	}
	
	private void doRead(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("cnid");
		News news = newsService.getNews(id);
		request.setAttribute("news", news);
		if(request.getRemoteHost().intern() == "0:0:0:0:0:0:0:1"){
			request.setAttribute("clientIP", "127.0.0.1");
		}else{
			request.setAttribute("clientIP", request.getRemoteHost());
		}
		request.getRequestDispatcher("/page/news_read.jsp").forward(request, response);
	}
	/**
	 * @param request 请求处理对象
	 * @param response 响应处理对象
	 * @throws IOException 
	 */
	private void doList(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String temp = request.getParameter("page");  //分页的当前页数
		String size = request.getParameter("rows");  //页面的数据条数size
		NewsBean newsBean = newsService.getPartNews(size, temp); //分页处理封装对象
		respOutStr(response, toJsonStr(newsBean));  //把对象转换成json字符串,做为响应数据
	}

	private void doById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("cnid");
		Map<String, Object> news = newsService.getNewsById(id);  //分页数据
		request.setAttribute("news", news);
		request.getRequestDispatcher("/page/news_modify.jsp").forward(request, response);
	}

	private void doLeftSide(HttpServletRequest request, HttpServletResponse response) throws IOException {
		List<News> newses = newsService.getNewsByType(1, 2, 5);  //分页数据
		respOutStr(response, toJsonStr(newses));
	}	

}
