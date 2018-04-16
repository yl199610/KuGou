package com.yc.news.service;

import java.util.List;
import java.util.Map;

import com.yc.news.entity.News;
import com.yc.news.entity.NewsBean;

public interface NewsService {
	Map<String, Object> getNewsById(String id);

	List<News> getNewsByType(int...id);

	NewsBean getPartNews(String pageSize, String currPage);

	News getNews(String id);

	boolean modifyNews(News n);

	boolean ArchiveNews(String id);

	boolean addNews(News n);

	NewsBean getNewsName(String size, String temp, String id);

}
