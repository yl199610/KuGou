package com.yc.kg.service;

import com.yc.kg.entity.KuSongStyle;
import com.yc.kg.entity.PaginationBean;

public interface StyleService {

	PaginationBean<KuSongStyle> listPartStyle(String page, String rows);

}
