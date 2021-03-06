package com.yc.kg.mapper;

import java.util.List;

import com.yc.kg.entity.KgComment;
import com.yc.kg.entity.KgSave;
import com.yc.kg.entity.KuSongDetail;
import com.yc.kg.entity.PaginationBean;

public interface SaveMapper {

	PaginationBean<KgSave> getSaveSongByPagination(PaginationBean<KgSave> singerBean);

	boolean insertDetail(KuSongDetail kd);

	boolean insertSave(KgSave ks);

	List<KgSave> selectDetail(int id);

	boolean cancelDetail(int uid);

	List<KgComment> selectComment(int sid);

	boolean addComment(KgComment kgComment);

}
