package com.yc.kg.service;

import com.yc.kg.entity.KuUser;
import com.yc.kg.entity.PaginationBean;

public interface UserService {

	PaginationBean<KuUser> listPartUser(String page, String rows);

	KuUser getUserMsg(int sid);

	boolean modifyUser(KuUser user);

	KuUser userlogin(KuUser kuser);
}
