package com.yc.news.service;

import java.util.List;
import java.util.Map;

import com.yc.news.entity.Topic;
import com.yc.news.entity.TopicBean;
import com.yc.news.entity.User;

public interface TopicService {

	List<Topic> getAllTopic();

	Topic getTopic(String id);

	boolean modifyTopic(Topic t);

	boolean addTopic(Topic t);

	boolean ArchiveNews(String id);

	TopicBean getPartTopic(String size, String temp);

	
}
