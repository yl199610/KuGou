package com.yc.kg.service;

import com.yc.kg.entity.KuSinger;
import com.yc.kg.entity.PaginationBean;

public interface SingerService {

	PaginationBean<KuSinger> listPartSinger(String page, String rows);

}
