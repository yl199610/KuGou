package com.yc.kg.mapper;

import com.yc.kg.entity.KuSong;
import com.yc.kg.entity.PaginationBean;

public interface SongMapper {

	PaginationBean<KuSong> getUsersByPagination(PaginationBean<KuSong> songBean);

}
