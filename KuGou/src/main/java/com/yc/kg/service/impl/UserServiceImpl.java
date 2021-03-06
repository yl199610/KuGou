package com.yc.kg.service.impl;

import java.util.List;

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

	public List<KuUser> userlogin(KuUser user) {
		return userMapper.getUser(user);

	}

	public int zhuche(KuUser user) {
		return userMapper.insertUser(user);
	}

	@Override
	public KuUser findUser(String uname) {
		return userMapper.findUser(uname);
	}
	@Override
	public boolean modifyUserMsg(KuUser user) {
		return userMapper.updateUserMsg(user)>0;
	}

	@Override
	public boolean modifyUserImg(KuUser user) {
		return userMapper.updateUserImg(user)>0;
	}

	@Override
	public KuUser getUserImg(String name) {
		return userMapper.getImg(name);
	}

	@Override
	public boolean modifyUserPwd(KuUser user) {
		return userMapper.updateUserPwd(user)>0;
	}
}
