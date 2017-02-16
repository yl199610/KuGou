package com.yc.kg.mapper;

import com.yc.kg.entity.KuAdmin;

public interface AdminMapper {

	KuAdmin getUser(KuAdmin admin);

	void updateUser(KuAdmin admin);

}
