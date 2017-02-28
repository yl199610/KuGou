package com.yc.conn.test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.kg.entity.KgComment;
import com.yc.kg.mapper.SaveMapper;

@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations={"classpath:spring.xml", "classpath:spring-mvc.xml"})

@ContextConfiguration("classpath:spring.xml")
public class testinsertComment {

	@Autowired
	private SaveMapper saveMapper;

//	@Test
//	public void test() {
//		KgComment kg=new KgComment(1,1,"2","2","2","3");
//		System.out.println(saveMapper.addComment(kg));
//		
//	}

}
