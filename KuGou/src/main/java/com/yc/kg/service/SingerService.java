package com.yc.kg.service;

import java.util.List;

import com.yc.kg.entity.KuSinger;
import com.yc.kg.entity.PaginationBean;

public interface SingerService {

	PaginationBean<KuSinger> listPartSinger(String page, String rows);

	boolean getSingerMsg(int sid);

	KuSinger getSingerMsgs(int sid);

	boolean modifySingerMsg(KuSinger singer);

	boolean addsinger(KuSinger singer);

	List<KuSinger> getSinger();


}
