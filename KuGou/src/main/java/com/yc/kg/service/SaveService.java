package com.yc.kg.service;

import com.yc.kg.entity.KgSave;
import com.yc.kg.entity.PaginationBean;

public interface SaveService {

	PaginationBean<KgSave> listPartSave(String page, String rows);

}