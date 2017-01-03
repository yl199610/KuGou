package com.yc.kg.entity;

public class KgSave {
    private Integer kgSaveId;
    private Integer kuserSaveId;
    private Integer kgSaveSid;
    private String kgSavenext;
    private String kgSavesecond;
    public KgSave() {}
	public KgSave(Integer kgSaveId, Integer kuserSaveId, Integer kgSaveSid, String kgSavenext, String kgSavesecond) {
		this.kgSaveId = kgSaveId;
		this.kuserSaveId = kuserSaveId;
		this.kgSaveSid = kgSaveSid;
		this.kgSavenext = kgSavenext;
		this.kgSavesecond = kgSavesecond;
	}
	
	public Integer getKgSaveId() {
		return kgSaveId;
	}
	public void setKgSaveId(Integer kgSaveId) {
		this.kgSaveId = kgSaveId;
	}
	public Integer getKuserSaveId() {
		return kuserSaveId;
	}
	public void setKuserSaveId(Integer kuserSaveId) {
		this.kuserSaveId = kuserSaveId;
	}
	public Integer getKgSaveSid() {
		return kgSaveSid;
	}
	public void setKgSaveSid(Integer kgSaveSid) {
		this.kgSaveSid = kgSaveSid;
	}
	public String getKgSavenext() {
		return kgSavenext;
	}
	public void setKgSavenext(String kgSavenext) {
		this.kgSavenext = kgSavenext;
	}
	public String getKgSavesecond() {
		return kgSavesecond;
	}
	public void setKgSavesecond(String kgSavesecond) {
		this.kgSavesecond = kgSavesecond;
	}
	@Override
	public String toString() {
		return "KgSave [kgSaveId=" + kgSaveId + ", kuserSaveId=" + kuserSaveId + ", kgSaveSid=" + kgSaveSid
				+ ", kgSavenext=" + kgSavenext + ", kgSavesecond=" + kgSavesecond + "]";
	}
    
}
