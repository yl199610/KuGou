package com.yc.kg.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.kg.entity.KgSave;
import com.yc.kg.entity.KuSongDetail;
import com.yc.kg.entity.PaginationBean;
import com.yc.kg.mapper.SaveMapper;
import com.yc.kg.service.SaveService;
@Service("saveService")
public class SaveServiceImpl implements SaveService{

	@Autowired
	private SaveMapper saveMapper;

	@Override
	public PaginationBean<KgSave> listPartSave(String currpage, String pageSize) {
		PaginationBean<KgSave> singerBean = new PaginationBean<KgSave>();
		if(currpage!=null){
			singerBean.setCurrPage(Integer.parseInt(currpage));
		}
		
		if(pageSize!=null){
			singerBean.setPageSize(Integer.parseInt(pageSize));
		}
		return saveMapper.getSaveSongByPagination(singerBean);
	}

	@Override
	public boolean addDetail(KuSongDetail kd) {
		return saveMapper.insertDetail(kd);
	}

	@Override
	public boolean saveSong(KgSave ks) {
		return saveMapper.insertSave(ks);
	}

	@Override
	public List<KgSave> findDetail(int id) {
		return saveMapper.selectDetail(id);
	}
	
	
}
