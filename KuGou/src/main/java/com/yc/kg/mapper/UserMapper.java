package com.yc.kg.mapper;



import java.util.List;

import com.yc.kg.entity.KuUser;
import com.yc.kg.entity.PaginationBean;

public interface UserMapper {

	PaginationBean<KuUser> getUsersByPagination(PaginationBean<KuUser> userBean);

	KuUser userMsg(int sid);

	int updateUser(KuUser user);


	List<KuUser> getUser(KuUser user);


	int insertUser(KuUser user);

	KuUser findUser(String kgUserName);

	int updateUserMsg(KuUser user);

	int updateUserImg(KuUser user);

	KuUser getImg(String name);

	int updateUserPwd(KuUser user);
}
