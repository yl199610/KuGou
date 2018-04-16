package com.yc.news.dao.impl;

import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import com.yc.news.dao.TopicDao;
import com.yc.news.entity.News;
import com.yc.news.entity.Topic;
import com.yc.news.entity.User;
import com.yc.news.util.DbHelper;

public class TopicDaoImpl implements TopicDao {

	@Override
	public List<Topic> getALLTopic() {
		String sql = "select * from topic";
		try {
			//return DbHelper.findMultiObject(sql);
			return DbHelper.list(Topic.class,sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Topic getTopicById(String id, Class<Topic> class1) {
		String sql="select * from topic where tid="+id;
		try {
			return DbHelper.get(class1,sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int updateUser(Topic t) {
		String sql="update topic set tname=? where tid=?";
		return DbHelper.doUpdate(sql,t.getTname(),t.getTid());
	}

	@Override
	public int insertTopic(Topic t) {
		String sql="insert into topic values(seq_topic.nextval,?)";
		return DbHelper.doUpdate(sql,t.getTname());
	}

	@Override
	public int ArchiveNews(String id) {
		String sql01="insert into topic_archive select TID,TNAME from topic where tid=?";
		String sql02="delete from topic where tid=?";
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
			String sql = String.format("select ceil(count(1)/%d) tp from topic", pageSize);
			return ((BigDecimal) (DbHelper.findSingleObject(sql).get("TP"))).intValue();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public List<Topic> getPartTopic(int pageSize, int currPage) {
		try {
			String sql = String.format("select tid, tname"
					+ " from(select n.*, rownum rn from "
					+ "(select * from topic) n "
					+ "where rownum <= %d) " + "where rn > %d",
							pageSize * currPage, pageSize * (currPage - 1));
			return DbHelper.list(Topic.class, sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
