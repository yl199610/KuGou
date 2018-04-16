package com.yc.news.service.impl;

import java.util.List;
import java.util.Map;

import com.yc.news.dao.NewsDao;
import com.yc.news.dao.impl.NewsDaoImpl;
import com.yc.news.entity.News;
import com.yc.news.entity.NewsBean;
import com.yc.news.service.NewsService;

public class NewsServiceImpl implements NewsService {
	private NewsDao newsDao;
	
	public NewsServiceImpl() {
		newsDao = new NewsDaoImpl();
	}

	@Override
	public NewsBean getPartNews(String size, String page) {
		int currPage = 1;  //默认当前页为第一页
		int pageSize = 30; //默认页数数据条数为30条
		if(size != null){
			pageSize = Integer.parseInt(size);  //取到每页的数据条数
		}
		int totalPage = getTotalPage(pageSize);  //计算数据总页数
		//取到当前页
		if (page != null) {
			currPage = Integer.parseInt(page);
			if (currPage > totalPage) {
				currPage = totalPage;
			} else if (currPage < 1) {
				currPage = 1;
			}
		}
		List<News> newses = newsDao.getPartNews(pageSize, currPage);
		return new NewsBean(currPage, totalPage, newses,pageSize*totalPage);
	}

	private int getTotalPage(int pageSize) {
		return newsDao.getTotalPage(pageSize);
	}

	@Override
	public Map<String, Object> getNewsById(String id) {
		
		return newsDao.getNewsById(id);
	}

	@Override
	public List<News> getNewsByType(int...ids) {
		return newsDao.getNewsByType(ids);
	}

	@Override
	public News getNews(String id) {
		return newsDao.getNewsById(id, News.class);
	}

	@Override
	public boolean modifyNews(News n) {
		return newsDao.updateNews(n)>0;
	}

	@Override
	public boolean ArchiveNews(String id) {
		return newsDao.ArchiveNews(id)>0;
	}

	@Override
	public boolean addNews(News n) {
		return newsDao.insertNews(n)>0;
	}

	@Override
	public NewsBean getNewsName(String size, String page, String id) {
		int currPage = 1;  //默认当前页为第一页
		int pageSize = 30; //默认页数数据条数为30条
		if(size != null){
			pageSize = Integer.parseInt(size);  //取到每页的数据条数
		}
		int totalPage = getTotalPage(pageSize);  //计算数据总页数
		//取到当前页
		if (page != null) {
			currPage = Integer.parseInt(page);
			if (currPage > totalPage) {
				currPage = totalPage;
			} else if (currPage < 1) {
				currPage = 1;
			}
		}
		List<News> newses = newsDao.getNewsByName(pageSize, currPage,id);
		return new NewsBean(currPage, totalPage, newses,pageSize*totalPage);
	}

}
