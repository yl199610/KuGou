package com.yc.news.service;

import java.util.List;

import com.yc.news.entity.User;
import com.yc.news.entity.UserBean;

public interface UserService {

	boolean login(String username, String password);

	boolean addUser(User user);

	List<User> getAllUser();

	boolean modifyUser(User n);

	User getUser(String id);

	boolean ArchiveNews(String id);

	UserBean getPartUser(String size, String temp);

}
