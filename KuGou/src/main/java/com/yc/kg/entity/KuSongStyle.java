package com.yc.kg.entity;

public class KuSongStyle {
	private Integer kuSongStyleId;
	private String kuSongStyleName;
	private String kuSongStylenext;
	private String kuSongStylesecond;

	public KuSongStyle() {
	}

	public KuSongStyle(Integer kuSongStyleId, String kuSongStyleName, String kuSongStylenext,
			String kuSongStylesecond) {
		this.kuSongStyleId = kuSongStyleId;
		this.kuSongStyleName = kuSongStyleName;
		this.kuSongStylenext = kuSongStylenext;
		this.kuSongStylesecond = kuSongStylesecond;
	}

	public Integer getKuSongStyleId() {
		return kuSongStyleId;
	}

	public void setKuSongStyleId(Integer kuSongStyleId) {
		this.kuSongStyleId = kuSongStyleId;
	}

	public String getKuSongStyleName() {
		return kuSongStyleName;
	}

	public void setKuSongStyleName(String kuSongStyleName) {
		this.kuSongStyleName = kuSongStyleName;
	}

	public String getKuSongStylenext() {
		return kuSongStylenext;
	}

	public void setKuSongStylenext(String kuSongStylenext) {
		this.kuSongStylenext = kuSongStylenext;
	}

	public String getKuSongStylesecond() {
		return kuSongStylesecond;
	}

	public void setKuSongStylesecond(String kuSongStylesecond) {
		this.kuSongStylesecond = kuSongStylesecond;
	}

	@Override
	public String toString() {
		return "KuSongStyle [kuSongStyleId=" + kuSongStyleId + ", kuSongStyleName=" + kuSongStyleName
				+ ", kuSongStylenext=" + kuSongStylenext + ", kuSongStylesecond=" + kuSongStylesecond + "]";
	}

	
}
