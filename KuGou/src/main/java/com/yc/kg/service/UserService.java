package com.yc.kg.service;

import java.util.List;

import com.yc.kg.entity.KuUser;
import com.yc.kg.entity.PaginationBean;

public interface UserService {

	PaginationBean<KuUser> listPartUser(String page, String rows);

	KuUser getUserMsg(int sid);

	boolean modifyUser(KuUser user);

	List<KuUser> userlogin(KuUser kuser);

	int zhuche(KuUser user);


}
