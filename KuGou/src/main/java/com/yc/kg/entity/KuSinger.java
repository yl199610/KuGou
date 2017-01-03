package com.yc.kg.entity;

public class KuSinger {
	 private Integer kuSingerId;
	 private String kuSingerName;
     private String kuSingerSex;
     private String kuSingerImg;
     private String kuSingerCode;
	 private Integer kuSingerSingerstate;
	 private String kuSingerSingernext;
	 private String kuSingerSingersecond;
     public KuSinger() {}
	public KuSinger(Integer kuSingerId, String kuSingerName, String kuSingerSex, String kuSingerImg,
			String kuSingerCode, Integer kuSingerSingerstate, String kuSingerSingernext, String kuSingerSingersecond) {
		this.kuSingerId = kuSingerId;
		this.kuSingerName = kuSingerName;
		this.kuSingerSex = kuSingerSex;
		this.kuSingerImg = kuSingerImg;
		this.kuSingerCode = kuSingerCode;
		this.kuSingerSingerstate = kuSingerSingerstate;
		this.kuSingerSingernext = kuSingerSingernext;
		this.kuSingerSingersecond = kuSingerSingersecond;
	}
	public Integer getKuSingerId() {
		return kuSingerId;
	}
	public void setKuSingerId(Integer kuSingerId) {
		this.kuSingerId = kuSingerId;
	}
	public String getKuSingerName() {
		return kuSingerName;
	}
	public void setKuSingerName(String kuSingerName) {
		this.kuSingerName = kuSingerName;
	}
	public String getKuSingerSex() {
		return kuSingerSex;
	}
	public void setKuSingerSex(String kuSingerSex) {
		this.kuSingerSex = kuSingerSex;
	}
	public String getKuSingerImg() {
		return kuSingerImg;
	}
	public void setKuSingerImg(String kuSingerImg) {
		this.kuSingerImg = kuSingerImg;
	}
	public String getKuSingerCode() {
		return kuSingerCode;
	}
	public void setKuSingerCode(String kuSingerCode) {
		this.kuSingerCode = kuSingerCode;
	}
	public Integer getKuSingerSingerstate() {
		return kuSingerSingerstate;
	}
	public void setKuSingerSingerstate(Integer kuSingerSingerstate) {
		this.kuSingerSingerstate = kuSingerSingerstate;
	}
	public String getKuSingerSingernext() {
		return kuSingerSingernext;
	}
	public void setKuSingerSingernext(String kuSingerSingernext) {
		this.kuSingerSingernext = kuSingerSingernext;
	}
	public String getKuSingerSingersecond() {
		return kuSingerSingersecond;
	}
	public void setKuSingerSingersecond(String kuSingerSingersecond) {
		this.kuSingerSingersecond = kuSingerSingersecond;
	}
	@Override
	public String toString() {
		return "KuSinger [kuSingerId=" + kuSingerId + ", kuSingerName=" + kuSingerName + ", kuSingerSex=" + kuSingerSex
				+ ", kuSingerImg=" + kuSingerImg + ", kuSingerCode=" + kuSingerCode + ", kuSingerSingerstate="
				+ kuSingerSingerstate + ", kuSingerSingernext=" + kuSingerSingernext + ", kuSingerSingersecond="
				+ kuSingerSingersecond + "]";
	}
     
}
