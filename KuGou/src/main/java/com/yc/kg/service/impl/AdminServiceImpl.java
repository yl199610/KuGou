package com.yc.kg.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.kg.entity.KuAdmin;
import com.yc.kg.mapper.AdminMapper;
import com.yc.kg.service.AdminService;
import com.yc.kg.util.Encrypt;
@Service("adminService")
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminMapper adminMapper;
	
	@Override
	public KuAdmin login(KuAdmin admin) {
		//admin.setKgAdminPwd(Encrypt.md5AndSha(admin.getKgAdminPwd()));
		return adminMapper.getUser(admin);
	}

	@Override
	public void resetPassword(String username, String randPassword) {
		KuAdmin admin=new KuAdmin(username,Encrypt.md5AndSha(randPassword));
		adminMapper.updateUser(admin);		
	}
}
