package com.yc.news.entity;

import java.io.Serializable;
import java.util.List;

public class UserBean implements Serializable{
	private static final long serialVersionUID = -2092282485346265919L;
	private int currPage;
	private int totalPage;
	private List<User> rows;
	private int total;
	
	public UserBean() {
	}

	public UserBean(int currPage, int totalPage, List<User> rows, int total) {
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

	public List<User> getRows() {
		return rows;
	}

	public void setRows(List<User> rows) {
		this.rows = rows;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}
	
}
