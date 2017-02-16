package com.yc.kg.mapper;

import com.yc.kg.entity.KuSongStyle;
import com.yc.kg.entity.PaginationBean;

public interface StyleMapper {

	PaginationBean<KuSongStyle> getStyleByPagination(PaginationBean<KuSongStyle> songBean);

}
