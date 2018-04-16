package com.yc.news.dao;

import java.util.List;

import com.yc.news.entity.News;
import com.yc.news.entity.User;

public interface UserDao {

	Object findUserbyNP(String username, String password);

	Object findUser(String username, String password);

	int insertUser(User user);

	List<User> findUser();

	int updateUser(User n);

	User getUserById(String id, Class<User> class1);

	int ArchiveNews(String id);

	int getTotalPage(int pageSize);

	List<User> getPartNews(int pageSize, int currPage);


}
