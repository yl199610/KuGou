package com.yc.news.dao;

import java.util.List;
import java.util.Map;

import com.yc.news.entity.News;

public interface NewsDao {

	List<News> getPartNews(int pageSize, int currPage);

	int getTotalPage(int pageSize);

	Map<String, Object> getNewsById(String id);

	List<News> getNewsByType(int...ids);

	News getNewsById(String id, Class<News> clazz);

	int updateNews(News n);

	int ArchiveNews(String id);

	int insertNews(News n);

	List<News> getNewsByName(int pageSize, int currPage, String id);

}
