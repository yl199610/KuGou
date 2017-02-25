package com.yc.kg.service;

import java.util.List;

import com.yc.kg.entity.KuSongDetail;
import com.yc.kg.entity.KuSongStyle;
import com.yc.kg.entity.PaginationBean;

public interface StyleService {

	PaginationBean<KuSongStyle> listPartStyle(String page, String rows);

	boolean addSongStyle(KuSongStyle style);

	boolean delSongStyle(int id);

	KuSongStyle getSongStyleMsg(int sid);

	boolean modifySongStyleMsg(KuSongStyle style);

	List<KuSongStyle> getAllStyle();

//	List<KuSongDetail> findStyle(int styleid);

	PaginationBean<KuSongDetail> listPartMainStyle(String page, String rows);

	List<KuSongDetail> findAllStyle();
/*index界面分页*/
	PaginationBean<KuSongDetail> listPartStyle1(String page, String rows);

	PaginationBean<KuSongDetail> findStyle(int kuSongStyleId, String page,	String rows);
	


}
