package com.yc.kg.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.kg.entity.KuSongStyle;
import com.yc.kg.entity.PaginationBean;
import com.yc.kg.mapper.StyleMapper;
import com.yc.kg.service.StyleService;
@Service("styleService")
public class StyleServiceImpl implements StyleService{

	@Autowired
	private StyleMapper styleMapper;

	@Override
	public PaginationBean<KuSongStyle> listPartStyle(String currpage, String pageSize) {
		PaginationBean<KuSongStyle> songBean = new PaginationBean<KuSongStyle>();
		if(currpage!=null){
			songBean.setCurrPage(Integer.parseInt(currpage));
		}
		
		if(pageSize!=null){
			songBean.setPageSize(Integer.parseInt(pageSize));
		}
		return styleMapper.getStyleByPagination(songBean);
	}

	
}
