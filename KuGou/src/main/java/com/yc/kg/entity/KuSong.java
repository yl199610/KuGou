package com.yc.kg.entity;

public class KuSong {
	 private Integer kuSongId;
	 private String kuSongName;
     private String kuSongImg;
     private String kuSongWords;
     private String kuSongAddress;
	 private String kuSongSongtime;
	 private String kuSong_year;
	 private String kuSongNext;
	 private String kuSongSecond;
     public KuSong() {}
	public KuSong(Integer kuSongId, String kuSongName, String kuSongImg, String kuSongWords, String kuSongAddress,
			String kuSongSongtime, String kuSong_year, String kuSongNext, String kuSongSecond) {
		this.kuSongId = kuSongId;
		this.kuSongName = kuSongName;
		this.kuSongImg = kuSongImg;
		this.kuSongWords = kuSongWords;
		this.kuSongAddress = kuSongAddress;
		this.kuSongSongtime = kuSongSongtime;
		this.kuSong_year = kuSong_year;
		this.kuSongNext = kuSongNext;
		this.kuSongSecond = kuSongSecond;
	}
	public Integer getKuSongId() {
		return kuSongId;
	}
	public void setKuSongId(Integer kuSongId) {
		this.kuSongId = kuSongId;
	}
	public String getKuSongName() {
		return kuSongName;
	}
	public void setKuSongName(String kuSongName) {
		this.kuSongName = kuSongName;
	}
	public String getKuSongImg() {
		return kuSongImg;
	}
	public void setKuSongImg(String kuSongImg) {
		this.kuSongImg = kuSongImg;
	}
	public String getKuSongWords() {
		return kuSongWords;
	}
	public void setKuSongWords(String kuSongWords) {
		this.kuSongWords = kuSongWords;
	}
	public String getKuSongAddress() {
		return kuSongAddress;
	}
	public void setKuSongAddress(String kuSongAddress) {
		this.kuSongAddress = kuSongAddress;
	}
	public String getKuSongSongtime() {
		return kuSongSongtime;
	}
	public void setKuSongSongtime(String kuSongSongtime) {
		this.kuSongSongtime = kuSongSongtime;
	}
	public String getKuSong_year() {
		return kuSong_year;
	}
	public void setKuSong_year(String kuSong_year) {
		this.kuSong_year = kuSong_year;
	}
	public String getKuSongNext() {
		return kuSongNext;
	}
	public void setKuSongNext(String kuSongNext) {
		this.kuSongNext = kuSongNext;
	}
	public String getKuSongSecond() {
		return kuSongSecond;
	}
	public void setKuSongSecond(String kuSongSecond) {
		this.kuSongSecond = kuSongSecond;
	}
	@Override
	public String toString() {
		return "KuSong [kuSongId=" + kuSongId + ", kuSongName=" + kuSongName + ", kuSongImg=" + kuSongImg
				+ ", kuSongWords=" + kuSongWords + ", kuSongAddress=" + kuSongAddress + ", kuSongSongtime="
				+ kuSongSongtime + ", kuSong_year=" + kuSong_year + ", kuSongNext=" + kuSongNext + ", kuSongSecond="
				+ kuSongSecond + "]";
	}
	
     
}
