package com.yc.news.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;

import com.yc.news.entity.Comment;
import com.yc.news.service.CommentService;

public class CommentServletImplTest {

	@Test
	public void testListCommentsByNewsId() {
		CommentService cs = new CommentServiceImpl();
		List<Comment> comments = cs.listCommentsByNewsId(802 +"");
		System.out.println(comments);
		assertNotNull(comments);
	}

}
