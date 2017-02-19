package com.yc.kg.mapper;

import com.yc.kg.entity.KgSave;
import com.yc.kg.entity.KuSongDetail;
import com.yc.kg.entity.PaginationBean;

public interface SaveMapper {

	PaginationBean<KgSave> getSaveSongByPagination(PaginationBean<KgSave> singerBean);

	boolean insertDetail(KuSongDetail kd);

}
