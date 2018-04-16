package com.yc.news.util;

import static com.yc.news.util.DbHelper.getConn;
import static org.junit.Assert.assertNotNull;

import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.junit.Test;

import com.yc.news.entity.News;

public class DbHelperTest {

	@Test
	public void testGetConn() {
		Connection con = getConn();
		LogManager.getLogger().debug("连接成功...");
		assertNotNull(con);
	}
	
	@Test
	public void testGet() {
		try {
			News news = DbHelper.get(News.class, "select * from news where nid=80");
			System.out.println(news);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	@Test
	public void testList() {
		try {
			List<News> newss = DbHelper.list(News.class, "select * from news");
			System.out.println(newss);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	@Test
	public void testDate() throws ParseException{
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//日期转换成日期字符串
		/*Date d = new Date();
		String dateStr = sdf.format(d);*/
		
		//日期字符串转换成日期
		String dateStr = "2016-09-29 19:53:11";
		Date d = sdf.parse(dateStr);
		System.out.println(d);
	}

}
