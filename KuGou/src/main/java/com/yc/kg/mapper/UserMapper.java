package com.yc.kg.mapper;

import com.yc.kg.entity.KuUser;
import com.yc.kg.entity.PaginationBean;

public interface UserMapper {

	PaginationBean<KuUser> getUsersByPagination(PaginationBean<KuUser> userBean);

	KuUser userMsg(int sid);

	int updateUser(KuUser user);

	KuUser getUser(KuUser user);
}
