package com.yc.kg.entity;

public class KuUser {
	 private Integer kgUserId;
	 private String kgUserName;
	 private String kgUserPwd;
	 private String kgUserEmail;
	 private String  kgUserSex;
	 private String  kgUserBirthday;
	 private String kgUserNote;
	 private String kgUserPic;
	 private Integer kgUserState;
     private String kgUserSong;
     private String kgUserNext;
     private String kgUserSecond;
     
     public KuUser() {}

	public KuUser(Integer kgUserId, String kgUserName, String kgUserPwd, String kgUserEmail, String kgUserSex,
			String kgUserBirthday, String kgUserNote, String kgUserPic, Integer kgUserState, String kgUserSong,String kgUserNext, String kgUserSecond) {
		this.kgUserId = kgUserId;
		this.kgUserName = kgUserName;
		this.kgUserPwd = kgUserPwd;
		this.kgUserEmail = kgUserEmail;
		this.kgUserSex = kgUserSex;
		this.kgUserBirthday = kgUserBirthday;
		this.kgUserNote = kgUserNote;
		this.kgUserPic = kgUserPic;
		this.kgUserState = kgUserState;
		this.kgUserSong = kgUserSong;
		this.kgUserNext = kgUserNext;
		this.kgUserSecond = kgUserSecond;
	}

	
	public Integer getKgUserId() {
		return kgUserId;
	}

	public void setKgUserId(Integer kgUserId) {
		this.kgUserId = kgUserId;
	}

	public String getKgUserName() {
		return kgUserName;
	}

	public void setKgUserName(String kgUserName) {
		this.kgUserName = kgUserName;
	}

	public String getKgUserPwd() {
		return kgUserPwd;
	}

	public void setKgUserPwd(String kgUserPwd) {
		this.kgUserPwd = kgUserPwd;
	}

	public String getKgUserEmail() {
		return kgUserEmail;
	}

	public void setKgUserEmail(String kgUserEmail) {
		this.kgUserEmail = kgUserEmail;
	}

	public String getKgUserSex() {
		return kgUserSex;
	}

	public void setKgUserSex(String kgUserSex) {
		this.kgUserSex = kgUserSex;
	}

	public String getKgUserBirthday() {
		return kgUserBirthday;
	}

	public void setKgUserBirthday(String kgUserBirthday) {
		this.kgUserBirthday = kgUserBirthday;
	}

	public String getKgUserNote() {
		return kgUserNote;
	}

	public void setKgUserNote(String kgUserNote) {
		this.kgUserNote = kgUserNote;
	}

	public String getKgUserPic() {
		return kgUserPic;
	}

	public void setKgUserPic(String kgUserPic) {
		this.kgUserPic = kgUserPic;
	}

	public Integer getKgUserState() {
		return kgUserState;
	}

	public void setKgUserState(Integer kgUserState) {
		this.kgUserState = kgUserState;
	}

	public String getKgUserSong() {
		return kgUserSong;
	}

	public void setKgUserSong(String kgUserSong) {
		this.kgUserSong = kgUserSong;
	}

	public String getKgUserNext() {
		return kgUserNext;
	}

	public void setKgUserNext(String kgUserNext) {
		this.kgUserNext = kgUserNext;
	}

	public String getKgUserSecond() {
		return kgUserSecond;
	}

	public void setKgUserSecond(String kgUserSecond) {
		this.kgUserSecond = kgUserSecond;
	}

	@Override
	public String toString() {
		return "KuUser [kgUserId=" + kgUserId + ", kgUserName=" + kgUserName + ", kgUserPwd=" + kgUserPwd
				+ ", kgUserEmail=" + kgUserEmail + ", kgUserSex=" + kgUserSex + ", kgUserBirthday=" + kgUserBirthday
				+ ", kgUserNote=" + kgUserNote + ", kgUserPic=" + kgUserPic + ", kgUserState=" + kgUserState
				+ ", kgUserSong=" + kgUserSong + ", kgUserNext=" + kgUserNext + ", kgUserSecond=" + kgUserSecond + "]";
	}
     
     
}
