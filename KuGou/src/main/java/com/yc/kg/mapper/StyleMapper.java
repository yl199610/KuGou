package com.yc.kg.mapper;

import java.util.List;

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

	List<KuSongDetail> findStyle(int styleid);

	List<KuSongDetail> findAllStyle();

	List<KuSongDetail> findFourStyle();

}
