package com.yc.news.util;

import static org.junit.Assert.*;

import org.junit.Test;

import com.yc.news.dao.NewsDao;
import com.yc.news.dao.impl.NewsDaoImpl;
import com.yc.news.entity.News;
import com.yc.news.util.DbHelper;

public class testUpdate {

	@Test
	public void test() {
		NewsDao newsDao=new NewsDaoImpl();
		//int i=newsDao.updateNews(new News(2,"weq","sdf",null,"sdf",null, 187));
		//System.out.println(i);
	}

}