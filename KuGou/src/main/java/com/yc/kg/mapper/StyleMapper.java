package com.yc.kg.mapper;

import java.util.List;
import java.util.Map;

import com.yc.kg.entity.KuSong;
import com.yc.kg.entity.KuSongDetail;
import com.yc.kg.entity.KuSongStyle;
import com.yc.kg.entity.PaginationBean;

public interface StyleMapper {

	PaginationBean<KuSongStyle> getStyleByPagination(PaginationBean<KuSongStyle> songBean);
	
	PaginationBean<KuSongDetail> getStyleMainByPagination(PaginationBean<KuSongDetail> songMainBean);

	boolean addSongStyleMsg(KuSongStyle style);

	boolean delSongStyleMsg(int id);

	KuSongStyle SongStyleMsg(int sid);

	boolean modifySongStyleMsg(KuSongStyle style);

	List<KuSongStyle> getAllStyle();

	PaginationBean<KuSongDetail> findStyle(Map<String, Object> map);

	List<KuSongDetail> findAllStyle();
//	PaginationBean<KuSongDetail> listPartStyle(String page, String rows);
//	PaginationBean<KuSong> getUsersByPagination(PaginationBean<KuSong> songBean);

	PaginationBean<KuSongDetail> listPartStyle1(PaginationBean<KuSongDetail> songStyleBeans);


}
