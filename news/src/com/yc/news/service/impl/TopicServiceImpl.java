package com.yc.news.service.impl;

import java.util.List;
import java.util.Map;

import com.yc.news.dao.TopicDao;
import com.yc.news.dao.impl.TopicDaoImpl;
import com.yc.news.entity.News;
import com.yc.news.entity.NewsBean;
import com.yc.news.entity.Topic;
import com.yc.news.entity.TopicBean;
import com.yc.news.entity.User;
import com.yc.news.service.TopicService;

public class TopicServiceImpl implements TopicService {
	
	private TopicDao topicDao;
	public TopicServiceImpl() {
		topicDao = new TopicDaoImpl();
	}

	@Override
	public List<Topic> getAllTopic() {
		return topicDao.getALLTopic();
	}

	@Override
	public Topic getTopic(String id) {
		return topicDao.getTopicById(id,Topic.class);
	}

	@Override
	public boolean modifyTopic(Topic t) {
		return topicDao.updateUser(t)>0;
	}

	@Override
	public boolean addTopic(Topic t) {
		return topicDao.insertTopic(t)>0;
	}

	@Override
	public boolean ArchiveNews(String id) {
		return topicDao.ArchiveNews(id)>0;
	}

	@Override
	public TopicBean getPartTopic(String size, String page) {
		int currPage = 1;  //默认当前页为第一页
		int pageSize = 10; //默认页数数据条数为30条
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
		List<Topic> newses = topicDao.getPartTopic(pageSize, currPage);
		return new TopicBean(currPage, totalPage, newses,pageSize*totalPage);
	}

	private int getTotalPage(int pageSize) {
		return topicDao.getTotalPage(pageSize);
	}


}
