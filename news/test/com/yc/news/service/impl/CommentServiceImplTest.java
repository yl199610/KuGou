package com.yc.news.service.impl;

import static org.junit.Assert.assertEquals;

import java.util.Date;

import org.junit.Test;

import com.yc.news.entity.Comment;
import com.yc.news.service.CommentService;

public class CommentServiceImplTest {

	@Test
	public void testAddComment() {
		CommentService cs = new CommentServiceImpl();
		boolean result = cs.addComment(new Comment(82, "好帅", new Date(), "192.168.15.220", "jp"));
		assertEquals(true, result);
	}
	
}
