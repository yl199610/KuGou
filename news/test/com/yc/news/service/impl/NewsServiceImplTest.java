package com.yc.news.service.impl;

import static org.junit.Assert.*;

import java.util.Date;

import org.junit.Test;

import com.yc.news.entity.News;
import com.yc.news.service.NewsService;

public class NewsServiceImplTest {

	@Test
	public void testGetNews() {
		NewsService ns = new NewsServiceImpl();
		News n = ns.getNews(81 +"");
		assertNotNull(n);
	}

	@Test
	public void testAddNews() {
		NewsService ns = new NewsServiceImpl();
		News n=new News(2,"sd","adse",new Date(),null,"hiwerwer","sef");
		boolean i = ns.addNews(n);
		assertEquals(i,true);
	}

}
