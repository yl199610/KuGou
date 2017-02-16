package com.yc.kg.service;

import com.yc.kg.entity.KuAdmin;

public interface AdminService {

	KuAdmin login(KuAdmin admin);

	void resetPassword(String username, String randPassword);

}
