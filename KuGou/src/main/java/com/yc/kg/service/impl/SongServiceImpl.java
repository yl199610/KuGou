package com.yc.kg.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.kg.entity.KuSong;
import com.yc.kg.entity.PaginationBean;
import com.yc.kg.mapper.SongMapper;
import com.yc.kg.service.SongService;
@Service("songService")
public class SongServiceImpl implements SongService{

	@Autowired
	private SongMapper songMapper;

	@Override
	public PaginationBean<KuSong> listPartSong(String currpage, String pageSize) {
		PaginationBean<KuSong> songBean = new PaginationBean<KuSong>();
		if(currpage!=null){
			songBean.setCurrPage(Integer.parseInt(currpage));
		}
		
		if(pageSize!=null){
			songBean.setPageSize(Integer.parseInt(pageSize));
		}
		return songMapper.getUsersByPagination(songBean);
	}
	
	
}
