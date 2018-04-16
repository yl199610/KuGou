package com.yc.news.dao;

import java.util.List;
import java.util.Map;

import com.yc.news.entity.News;
import com.yc.news.entity.Topic;
import com.yc.news.entity.User;

public interface TopicDao {

	List<Topic> getALLTopic();

	Topic getTopicById(String id, Class<Topic> class1);

	int updateUser(Topic t);

	int insertTopic(Topic t);

	int ArchiveNews(String id);

	int getTotalPage(int pageSize);

	List<Topic> getPartTopic(int pageSize, int currPage);

}
