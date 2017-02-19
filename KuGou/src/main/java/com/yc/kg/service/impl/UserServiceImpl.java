package com.yc.kg.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.kg.entity.KuUser;
import com.yc.kg.entity.PaginationBean;
import com.yc.kg.mapper.UserMapper;
import com.yc.kg.service.UserService;
@Service("userService")
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;

	@Override
	public PaginationBean<KuUser> listPartUser(String currpage, String pageSize) {
		PaginationBean<KuUser> userBean = new PaginationBean<KuUser>();
		if(currpage!=null){
			userBean.setCurrPage(Integer.parseInt(currpage));
		}
		
		if(pageSize!=null){
			userBean.setPageSize(Integer.parseInt(pageSize));
		}
		return userMapper.getUsersByPagination(userBean);
	}

	@Override
	public KuUser getUserMsg(int sid) {
		return userMapper.userMsg(sid);
	}

	@Override
	public boolean modifyUser(KuUser user) {
		
		return userMapper.updateUser(user)>0;
	}

	@Override
	public int zhuche(KuUser user) {
	
		return userMapper.insertUser(user);
	}
	
	
}
