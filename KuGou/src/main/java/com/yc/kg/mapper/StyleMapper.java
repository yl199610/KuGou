package com.yc.kg.mapper;

import com.yc.kg.entity.KuSongStyle;
import com.yc.kg.entity.PaginationBean;

public interface StyleMapper {

	PaginationBean<KuSongStyle> getStyleByPagination(PaginationBean<KuSongStyle> songBean);

	boolean addSongStyleMsg(KuSongStyle style);

	boolean delSongStyleMsg(int id);

	KuSongStyle SongStyleMsg(int sid);

	boolean modifySongStyleMsg(KuSongStyle style);

}
