package com.yc.kg.entity;

public class KuSongDetail {
	 private Integer kuSongDetailId;
	 private Integer ksongsingId;
	 private Integer kudetailsongId;
	 private Integer kudetailstyleId;
	 private Integer songplay;
	 private Integer statue;
	 private String address;
	 private Integer kusingstatus;
     private String detailtime;
     private String kunext;
     private String kusecond;
     public KuSongDetail() {}
	 public KuSongDetail(Integer kuSongDetailId, Integer ksongsingId, Integer kudetailsongId, Integer kudetailstyleId,
			Integer songplay, Integer statue, String address, Integer kusingstatus, String detailtime, String kunext,
			String kusecond) {
		this.kuSongDetailId = kuSongDetailId;
		this.ksongsingId = ksongsingId;
		this.kudetailsongId = kudetailsongId;
		this.kudetailstyleId = kudetailstyleId;
		this.songplay = songplay;
		this.statue = statue;
		this.address = address;
		this.kusingstatus = kusingstatus;
		this.detailtime = detailtime;
		this.kunext = kunext;
		this.kusecond = kusecond;
	}
	public Integer getKuSongDetailId() {
		return kuSongDetailId;
	}
	public void setKuSongDetailId(Integer kuSongDetailId) {
		this.kuSongDetailId = kuSongDetailId;
	}
	public Integer getKsongsingId() {
		return ksongsingId;
	}
	public void setKsongsingId(Integer ksongsingId) {
		this.ksongsingId = ksongsingId;
	}
	public Integer getKudetailsongId() {
		return kudetailsongId;
	}
	public void setKudetailsongId(Integer kudetailsongId) {
		this.kudetailsongId = kudetailsongId;
	}
	public Integer getKudetailstyleId() {
		return kudetailstyleId;
	}
	public void setKudetailstyleId(Integer kudetailstyleId) {
		this.kudetailstyleId = kudetailstyleId;
	}
	public Integer getSongplay() {
		return songplay;
	}
	public void setSongplay(Integer songplay) {
		this.songplay = songplay;
	}
	public Integer getStatue() {
		return statue;
	}
	public void setStatue(Integer statue) {
		this.statue = statue;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getKusingstatus() {
		return kusingstatus;
	}
	public void setKusingstatus(Integer kusingstatus) {
		this.kusingstatus = kusingstatus;
	}
	public String getDetailtime() {
		return detailtime;
	}
	public void setDetailtime(String detailtime) {
		this.detailtime = detailtime;
	}
	public String getKunext() {
		return kunext;
	}
	public void setKunext(String kunext) {
		this.kunext = kunext;
	}
	public String getKusecond() {
		return kusecond;
	}
	public void setKusecond(String kusecond) {
		this.kusecond = kusecond;
	}
	@Override
	public String toString() {
		return "KuSongDetail [kuSongDetailId=" + kuSongDetailId + ", ksongsingId=" + ksongsingId + ", kudetailsongId="
				+ kudetailsongId + ", kudetailstyleId=" + kudetailstyleId + ", songplay=" + songplay + ", statue="
				+ statue + ", address=" + address + ", kusingstatus=" + kusingstatus + ", detailtime=" + detailtime
				+ ", kunext=" + kunext + ", kusecond=" + kusecond + "]";
	}
    
    
}
