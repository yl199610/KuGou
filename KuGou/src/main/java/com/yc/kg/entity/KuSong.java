package com.yc.kg.entity;

public class KuSong {
	private Integer kuSongId;
	private String kuSongName;
	private String kuSongImg;
	private String kuSongWords;
	private String kuSongAddress;
	private String kuSongSongtime;
	private String kuSongYear;
	private String kuSongNext;
	private String kuSongSecond;

	public KuSong() {
	}
	

	public KuSong(Integer kuSongId, String kuSongName, String kuSongImg, String kuSongWords, String kuSongAddress,
			String kuSongSongtime, String kuSongYear, String kuSongNext, String kuSongSecond) {
		this.kuSongId = kuSongId;
		this.kuSongName = kuSongName;
		this.kuSongImg = kuSongImg;
		this.kuSongWords = kuSongWords;
		this.kuSongAddress = kuSongAddress;
		this.kuSongSongtime = kuSongSongtime;
		this.kuSongYear = kuSongYear;
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

	public String getKuSongYear() {
		return kuSongYear;
	}

	public void setKuSongYear(String kuSongYear) {
		this.kuSongYear = kuSongYear;
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
				+ kuSongSongtime + ", kuSongYear=" + kuSongYear + ", kuSongNext=" + kuSongNext + ", kuSongSecond="
				+ kuSongSecond + "]";
	}

}
