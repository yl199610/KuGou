package com.yc.kg.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.kg.entity.KuSongDetail;
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
	public PaginationBean<KuSongDetail> listPartMainStyle(String currpage,
			String pageSize) {
		PaginationBean<KuSongDetail> songMainBean = new PaginationBean<KuSongDetail>();
		if(currpage!=null){
			songMainBean.setCurrPage(Integer.parseInt(currpage));
		}
		
		if(pageSize!=null){
			songMainBean.setPageSize(Integer.parseInt(pageSize));
		}
		return styleMapper.getStyleMainByPagination(songMainBean);
	
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

	/*@Override
	public List<KuSongDetail> findStyle(int styleid) {
		return styleMapper.findStyle(styleid);
	}*/

	@Override
	public List<KuSongDetail> findAllStyle() {

		return styleMapper.findAllStyle();
	}

	@Override
	public PaginationBean<KuSongDetail> listPartStyle1(String currpage, String pageSize) {
		PaginationBean<KuSongDetail> songBean = new PaginationBean<KuSongDetail>();
		if(currpage!=null){
			songBean.setCurrPage(Integer.parseInt(currpage));
		}
		if(pageSize!=null){
			songBean.setPageSize(Integer.parseInt(pageSize));
		}
		System.out.println(songBean+"songBean111111");
		return  styleMapper.listPartStyle1(songBean);
	
	}

	@Override
	public PaginationBean<KuSongDetail> findStyle(int styleid,String page, String rows) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("kudetailstyleId", styleid);
		map.put("currPage", page);
		map.put("pageSize", rows);
		return styleMapper.findStyle(map);
	}

	@Override
	public List<KuSongDetail> findFourdetail() {
		return styleMapper.findFourStyle();
	}

	@Override
	public List<KuSongDetail> getSingersong(int skid) {
		return styleMapper.findSongById(skid);
	}
	
}
