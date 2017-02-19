<%@page import="com.yc.kg.util.DbHelper"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	
	public boolean findUser(String username,String password)throws Exception{
		String sql="select 1 from kgUser where uname=kgUserName and upwd=kgUserPwd";
		return DbHelper.findSingleObject(sql,Arrays.asList(new Object[]{username,password}))!=null;
	}
%>

<% 
	if(session.getAttribute("loginUser")==null){
		request.setCharacterEncoding("utf-8");
		String username=request.getParameter("kgUserName");
		String password=request.getParameter("kgUserPwd");
		if(findUser(username,password)){
			session.setAttribute("loginUser", username);
			out.println(true);
		}else{
			out.println(false);
		}
	}else{
		session.removeAttribute("loginUser");
		out.println(true);
	}
	out.flush();
%>