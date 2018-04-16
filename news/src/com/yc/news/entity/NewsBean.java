package com.yc.news.entity;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class NewsBean implements Serializable {
	private static final long serialVersionUID = 8314050786345782123L;
	private int currPage;
	private int totalPage;
	//private List<News> newses;
	private List<News> rows;
	private int total;

	public NewsBean() {
	}

	public NewsBean(int currPage, int totalPage, List<News> rows, int total) {
		this.currPage = currPage;
		this.totalPage = totalPage;
		this.rows = rows;
		this.total = total;
	}



	public int getCurrPage() {
		return currPage;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public List<News> getRows() {
		return rows;
	}

	
	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public void setRows(List<News> rows) {
		this.rows = rows;
	}
}
