package com.yc.kg.mapper;

import com.yc.kg.entity.KuSinger;
import com.yc.kg.entity.PaginationBean;

public interface SingerMapper {

	PaginationBean<KuSinger> getSingerByPagination(PaginationBean<KuSinger> singerBean);

}
