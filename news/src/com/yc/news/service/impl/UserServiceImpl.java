package com.yc.news.service.impl;

import java.util.List;

import com.yc.news.dao.UserDao;
import com.yc.news.dao.impl.UserDaoImpl;
import com.yc.news.entity.News;
import com.yc.news.entity.NewsBean;
import com.yc.news.entity.User;
import com.yc.news.entity.UserBean;
import com.yc.news.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDao userDao;
	public UserServiceImpl() {
		userDao = new UserDaoImpl();
	}
	
	@Override
	public boolean login(String username, String password) {
		return userDao.findUserbyNP(username, password) != null;
	}
	@Override
	public boolean addUser(User user) {
		return userDao.insertUser(user)>0;
	}
	@Override
	public List<User> getAllUser() {
		return userDao.findUser();
	}
	@Override
	public User getUser(String id) {
		return userDao.getUserById(id, User.class);
	}
	@Override
	public boolean modifyUser(User n) {
		return userDao.updateUser(n)>0;
	}
	@Override
	public boolean ArchiveNews(String id) {
		return userDao.ArchiveNews(id)>0;
	}

	@Override
	public UserBean getPartUser(String size, String page) {
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
		List<User> newses = userDao.getPartNews(pageSize, currPage);
		return new UserBean(currPage, totalPage, newses,pageSize*totalPage);
	}

	private int getTotalPage(int pageSize) {
		return userDao.getTotalPage(pageSize);
	}

}
