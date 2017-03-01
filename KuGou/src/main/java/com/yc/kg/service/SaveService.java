package com.yc.kg.service;

import java.util.List;

import com.yc.kg.entity.KgComment;
import com.yc.kg.entity.KgSave;
import com.yc.kg.entity.KuSongDetail;
import com.yc.kg.entity.PaginationBean;

public interface SaveService {

	PaginationBean<KgSave> listPartSave(String page, String rows);

	boolean addDetail(KuSongDetail kd);

	boolean saveSong(KgSave ks);

	List<KgSave> findDetail(int id);

	boolean cancelDetail(int uid);

	List<KgComment> selectComment(int sid);

	boolean addComment(KgComment kgComment);

}
