package com.yc.kg.entity;

public class KgComment {
    private Integer KuCommentId;
    private Integer kuSongDetailId;

    private String kgUserName;
    private String kuSingerName;
    private String kuSongName;
    private String kuContent;
    public KgComment() {
		// TODO Auto-generated constructor stub
	}
	public KgComment(Integer kuCommentId, Integer kuSongDetailId,
			String kgUserName, String kuSingerName, String kuSongName,
			String kuContent) {
		super();
		KuCommentId = kuCommentId;
		this.kuSongDetailId = kuSongDetailId;
		this.kgUserName = kgUserName;
		this.kuSingerName = kuSingerName;
		this.kuSongName = kuSongName;
		this.kuContent = kuContent;
	}
	public Integer getKuCommentId() {
		return KuCommentId;
	}
	public void setKuCommentId(Integer kuCommentId) {
		KuCommentId = kuCommentId;
	}
	public Integer getKuSongDetailId() {
		return kuSongDetailId;
	}
	public void setKuSongDetailId(Integer kuSongDetailId) {
		this.kuSongDetailId = kuSongDetailId;
	}
	public String getKgUserName() {
		return kgUserName;
	}
	public void setKgUserName(String kgUserName) {
		this.kgUserName = kgUserName;
	}
	public String getKuSingerName() {
		return kuSingerName;
	}
	public void setKuSingerName(String kuSingerName) {
		this.kuSingerName = kuSingerName;
	}
	public String getKuSongName() {
		return kuSongName;
	}
	public void setKuSongName(String kuSongName) {
		this.kuSongName = kuSongName;
	}
	public String getKuContent() {
		return kuContent;
	}
	public void setKuContent(String kuContent) {
		this.kuContent = kuContent;
	}
	@Override
	public String toString() {
		return "KgComment [KuCommentId=" + KuCommentId + ", kuSongDetailId="
				+ kuSongDetailId + ", kgUserName=" + kgUserName
				+ ", kuSingerName=" + kuSingerName + ", kuSongName="
				+ kuSongName + ", kuContent=" + kuContent + "]";
	}
    
 

}
