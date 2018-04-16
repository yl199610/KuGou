package com.yc.news.dao.impl;

import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import com.yc.news.dao.NewsDao;
import com.yc.news.entity.News;
import com.yc.news.util.DbHelper;

public class NewsDaoImpl implements NewsDao {

	@Override
	public List<News> getPartNews(int pageSize, int currPage) {
		try {
			String sql = String.format("select nid, ntitle, ncreatedate, "
					+ "nauthor from(select n.*, rownum rn from "
					+ "(select * from news order by 5) n "
					+ "where rownum <= %d) " + "where rn > %d",
							pageSize * currPage, pageSize * (currPage - 1));
			return DbHelper.list(News.class, sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int getTotalPage(int pageSize) {
		try {
			String sql = String.format("select ceil(count(1)/%d) tp from news", pageSize);
			return ((BigDecimal) (DbHelper.findSingleObject(sql).get("TP"))).intValue();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public Map<String, Object> getNewsById(String id) {
		String sql = "select * from news where nid=" + id;
		try {
			return DbHelper.findSingleObject(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@Override
	public List<News> getNewsByType(int... ntids) {
		String sql = "select nid, ntid, ntitle from news";

		if (ntids != null && ntids.length != 0) {
			sql += " where ";
			for (int ntid : ntids) {
				sql += "nid in (select nid from (select * from news where ntid = " + ntid + 
						" order by 5)  where rownum <= 5) or ";
			}
			sql = sql.substring(0, sql.length() - 4);
		}
		try {
			return DbHelper.list(News.class, sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public News getNewsById(String id, Class<News> clazz) {
		String sql = "select * from news where nid=" + id;
		try {
			return DbHelper.get(clazz, sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int updateNews(News n) {
		String sql="update news set ntid=?,ntitle=?,nsummary=?,"
				+"ncontent=?,nmodifyDate=sysdate,nauthor=?,"
				+ "npicpath=? where nid=?";
		return DbHelper.doUpdate(sql,n.getNtid(),n.getNtitle(),n.getNsummary(),n.getNcontent(),n.getNauthor(),n.getNpicpath(),n.getNid());
	}

	@Override
	public int ArchiveNews(String id) {
		News n=getNewsById(id,News.class);
		//String sql01="insert into news_archive select * from news where nid=?";
		String sql01="insert into news_archive select NID,NTID,"
				+"NTITLE,NAUTHOR,NCREATEDATE,NPICPATH,to_lob(NCONTENT),sysdate,"
				+ "NSUMMARY from news where nid=?";
		String sql02="delete from news where nid=?";
		List<String> sqls=Arrays.asList(sql01,sql02);
		try {
			return DbHelper.doUpdate(sqls,new String[]{id},new String[]{id});
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int insertNews(News n) {
		String sql="insert into news values(seq_news.nextval,?,?,?,sysdate,?,?,null,?)";
		return DbHelper.doUpdate(sql,n.getNtid(),n.getNtitle(),
				n.getNauthor(),n.getNpicpath(),
				n.getNcontent(),n.getNsummary());
	}

	@Override
	public List<News> getNewsByName(int pageSize, int currPage, String id) {
		try {
			String sql="select * from news where ntid="+id;
			return DbHelper.list(News.class,sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}


}
