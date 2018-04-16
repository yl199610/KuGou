package com.yc.news.entity;

import java.io.Serializable;
import java.util.List;

public class TopicBean implements Serializable{
	private static final long serialVersionUID = 5983151564404868970L;
	private int currPage;
	private int totalPage;
	private List<Topic> rows;
	private int total;
	
	public TopicBean() {
	}

	public TopicBean(int currPage, int totalPage, List<Topic> rows, int total) {
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

	public List<Topic> getRows() {
		return rows;
	}

	public void setRows(List<Topic> rows) {
		this.rows = rows;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}
	
}
