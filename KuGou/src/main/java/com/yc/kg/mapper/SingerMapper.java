package com.yc.kg.mapper;

import java.util.List;

import com.yc.kg.entity.KuSinger;
import com.yc.kg.entity.PaginationBean;

public interface SingerMapper {

	PaginationBean<KuSinger> getSingerByPagination(PaginationBean<KuSinger> singerBean);

	boolean delSingerMsg(int id);

	KuSinger SingerMsg(int sid);

	boolean modifySingerMsg(KuSinger singer);

	boolean addSingerMsg(KuSinger singer);

	List<KuSinger> getSingerMsg();

}
