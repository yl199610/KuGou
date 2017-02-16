package com.yc.kg.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.kg.entity.KuSinger;
import com.yc.kg.entity.PaginationBean;
import com.yc.kg.mapper.SingerMapper;
import com.yc.kg.service.SingerService;
@Service("singerService")
public class SingerServiceImpl implements SingerService{

	@Autowired
	private SingerMapper singerMapper;

	@Override
	public PaginationBean<KuSinger> listPartSinger(String currpage, String pageSize) {
		PaginationBean<KuSinger> singerBean = new PaginationBean<KuSinger>();
		if(currpage!=null){
			singerBean.setCurrPage(Integer.parseInt(currpage));
		}
		
		if(pageSize!=null){
			singerBean.setPageSize(Integer.parseInt(pageSize));
		}
		return singerMapper.getSingerByPagination(singerBean);
	}
	
	
}
