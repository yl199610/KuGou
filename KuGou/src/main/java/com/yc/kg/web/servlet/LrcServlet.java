package com.yc.kg.web.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yc.kg.entity.JSMP3Bo;
import com.yc.kg.service.impl.JSMP3BoImpl;
import com.yc.kg.util.FileUtil;
@WebServlet("/lrcServlet")
public class LrcServlet extends HttpServlet {
	JSMP3Bo jsmp3bo = new JSMP3BoImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html");
		// 歌曲名,ckyg.mp3
		String songName = req.getParameter("songName");
		System.out.println(songName);
		String path = req.getRealPath("/");
		System.out.println("------"+path);
		PrintWriter write = resp.getWriter();
		File lrcFile = FileUtil.read(path + "/lrc/" + songName.split("\\.")[0]+ ".lrc");
		System.out.println("======"+lrcFile);//F:\apache-tomcat-7.0.70\webapps\JsLrcMp3\res\ckyg.lrc
		String lrcContent = jsmp3bo.getLrcContent(lrcFile);
		write.write(lrcContent);
	}
}
