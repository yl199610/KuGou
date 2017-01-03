package com.yc.kg.entity;

public class KuAdmin {
	 private Integer kgAdminId;
	 private String kgAdminName;
     private String kgAdminPwd;
	 private Integer kgAdminState;
     private String kgAdminNext;
     private String kgAdminSecond;
     public KuAdmin() {}
	public KuAdmin(Integer kgAdminId, String kgAdminName, String kgAdminPwd, Integer kgAdminState, String kgAdminNext,
			String kgAdminSecond) {
		this.kgAdminId = kgAdminId;
		this.kgAdminName = kgAdminName;
		this.kgAdminPwd = kgAdminPwd;
		this.kgAdminState = kgAdminState;
		this.kgAdminNext = kgAdminNext;
		this.kgAdminSecond = kgAdminSecond;
	}
	public Integer getKgAdminId() {
		return kgAdminId;
	}
	public void setKgAdminId(Integer kgAdminId) {
		this.kgAdminId = kgAdminId;
	}
	public String getKgAdminName() {
		return kgAdminName;
	}
	public void setKgAdminName(String kgAdminName) {
		this.kgAdminName = kgAdminName;
	}
	public String getKgAdminPwd() {
		return kgAdminPwd;
	}
	public void setKgAdminPwd(String kgAdminPwd) {
		this.kgAdminPwd = kgAdminPwd;
	}
	public Integer getKgAdminState() {
		return kgAdminState;
	}
	public void setKgAdminState(Integer kgAdminState) {
		this.kgAdminState = kgAdminState;
	}
	public String getKgAdminNext() {
		return kgAdminNext;
	}
	public void setKgAdminNext(String kgAdminNext) {
		this.kgAdminNext = kgAdminNext;
	}
	public String getKgAdminSecond() {
		return kgAdminSecond;
	}
	public void setKgAdminSecond(String kgAdminSecond) {
		this.kgAdminSecond = kgAdminSecond;
	}
	@Override
	public String toString() {
		return "KuAdmin [kgAdminId=" + kgAdminId + ", kgAdminName=" + kgAdminName + ", kgAdminPwd=" + kgAdminPwd
				+ ", kgAdminState=" + kgAdminState + ", kgAdminNext=" + kgAdminNext + ", kgAdminSecond=" + kgAdminSecond
				+ "]";
	}

}
