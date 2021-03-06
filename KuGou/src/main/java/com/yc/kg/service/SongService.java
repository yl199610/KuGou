package com.yc.kg.service;

import java.util.List;

import com.yc.kg.entity.KuSong;
import com.yc.kg.entity.PaginationBean;

public interface SongService {

	PaginationBean<KuSong> listPartSong(String page, String rows);

	boolean addSong(KuSong song);

	boolean delSong(int id);

	KuSong getSongMsg(int sid);

	boolean modifySongMsg(KuSong song);

	KuSong pushSong();

	List<KuSong> getSong();

}
