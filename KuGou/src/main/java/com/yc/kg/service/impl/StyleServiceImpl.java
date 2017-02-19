package com.yc.kg.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.kg.entity.KuSong;
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

	@Override
	public boolean addSongStyle(KuSongStyle style) {
		return styleMapper.addSongStyleMsg(style);
	}

	@Override
	public boolean delSongStyle(int id) {
		return styleMapper.delSongStyleMsg(id);
	}

	@Override
	public KuSongStyle getSongStyleMsg(int sid) {
		return styleMapper.SongStyleMsg(sid);
	}

	@Override
	public boolean modifySongStyleMsg(KuSongStyle style) {
		return styleMapper.modifySongStyleMsg(style);
	}

	@Override
	public List<KuSongStyle> getAllStyle() {
		return styleMapper.getAllStyle();
	}


	
}
