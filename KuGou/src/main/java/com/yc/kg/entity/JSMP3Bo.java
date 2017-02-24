package com.yc.kg.entity;

import java.io.File;

public interface JSMP3Bo {
	/**
	 * 获取歌词内容
	 * @return:返回的是js数组形式
	 * ["aa","bb","cc"]
	 */
	String getLrcContent(File file);
}
