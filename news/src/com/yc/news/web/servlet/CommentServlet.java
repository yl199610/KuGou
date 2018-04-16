package com.yc.news.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;

import com.yc.news.entity.Comment;
import com.yc.news.service.CommentService;
import com.yc.news.service.impl.CommentServiceImpl;
import com.yc.news.util.ServletUtil;

@WebServlet("/comment/*")
public class CommentServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	private CommentService commentService;
	
	public CommentServlet() {
		commentService = new CommentServiceImpl();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String uriName = ServletUtil.getUriName(request.getRequestURI());
		LogManager.getLogger().debug("请求" + uriName + "进入CommentServlet中，做请求响应处理...");
		switch (uriName) {
		case "list":
			doList(request, response);
			break;
		case "add":
			doAdd(request, response);
			break;
		default:
			respOutStr(response, "<h1>没有对应的请求资源...</h1>");
		}
	}

	private void doAdd(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Comment comment = getReqParam2Obj(request, Comment.class);
		System.out.println("Comment ==> " + comment);
		//评论分布是否成功
		if(commentService.addComment(comment)){
			respOutStr(response, toJsonStr(comment));
		}else{
			respOutStr(response, "false");
		}
		
	}
	private void doList(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id = request.getParameter("cnid");
		LogManager.getLogger().debug("取到的新闻id = " + id);
		List<Comment> comments = commentService.listCommentsByNewsId(id);
		respOutStr(response, toJsonStr(comments));
	}
}
