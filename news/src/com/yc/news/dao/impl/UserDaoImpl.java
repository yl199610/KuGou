package com.yc.news.dao.impl;

import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

import com.yc.news.dao.UserDao;
import com.yc.news.entity.Topic;
import com.yc.news.entity.User;
import com.yc.news.util.DbHelper;

public class UserDaoImpl implements UserDao {

	@Override
	public Object findUserbyNP(String username, String password) {
		String sql = "select * from news_users where uname=? and upwd=?";
		try {
			return DbHelper.findSingleObject(sql, username, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return  null;
	}
	@Override
	public Object findUser(String username, String password) {
		String sql="select * from news_users where uname=? and upwd=?";
		try {
			return DbHelper.findSingleObject(sql,username,password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int insertUser(User user) {
		String sql="insert into news_users values(seq_users.nextval,?,?)";
		return DbHelper.doUpdate(sql,user.getUname(),user.getUpwd());
	}

	@Override
	public List<User> findUser() {
		String sql="select * from news_users";
		try {
			return DbHelper.list(User.class,sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}


	@Override
	public User getUserById(String id, Class<User> class1) {
		String sql="select * from news_users where usid="+id;
		try {
			return DbHelper.get(class1,sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int updateUser(User n) {
		String sql="update news_users set uname=?,upwd=? where usid=?";
		return DbHelper.doUpdate(sql,n.getUname(),n.getUpwd(),n.getUsid());
	}

	@Override
	public int ArchiveNews(String id) {
		String sql01="insert into user_archive select USID,UNAME,UPWD from news_users where usid=?";
		String sql02="delete from news_users where usid=?";
		List<String> sqls=Arrays.asList(sql01,sql02);
		try {
			return DbHelper.doUpdate(sqls,new String[]{id},new String[]{id});
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
	@Override
	public int getTotalPage(int pageSize) {
		try {
			String sql = String.format("select ceil(count(1)/%d) tp from news_users", pageSize);
			return ((BigDecimal) (DbHelper.findSingleObject(sql).get("TP"))).intValue();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;	}
	@Override
	public List<User> getPartNews(int pageSize, int currPage) {
		try {
			String sql = String.format("select usid,uname,upwd"
					+ " from(select n.*, rownum rn from "
					+ "(select * from news_users) n "
					+ "where rownum <= %d) " + "where rn > %d",
							pageSize * currPage, pageSize * (currPage - 1));
			return DbHelper.list(User.class, sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;	}
}
