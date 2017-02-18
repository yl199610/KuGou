package com.yc.kg.service;

import com.yc.kg.entity.KuSongStyle;
import com.yc.kg.entity.PaginationBean;

public interface StyleService {

	PaginationBean<KuSongStyle> listPartStyle(String page, String rows);

	boolean addSongStyle(KuSongStyle style);

	boolean delSongStyle(int id);

	KuSongStyle getSongStyleMsg(int sid);

	boolean modifySongStyleMsg(KuSongStyle style);

}
