<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/news/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
</head>
<body>  
<!--  <form id="aNews" enctype="multipart/form-data" onsumbit="return addNews()" style="width:90%;margin:0px auto">
 --> <form name="aNews" id="aNews" enctype="multipart/form-data" style="width:90%;margin:0px auto">
				<p>
					<label> 主题 </label> <select name="ntid" id="antid"></select>
				</p>
				<p>
					<label> 标题 </label> <input id="anewsTitle" name="ntitle" type="text"/>
				</p>
				<p>
					<label> 作者 </label> <input id="anewsAuthor" name="nauthor" type="text"/>
				</p>
				<p>
					<label> 摘要 </label>
					<textarea name="nsummary" id="anewsSummary" cols="40" rows="3"></textarea>
				</p>
				<p>
					<label> 内容 </label>
					<textarea name="ncontent" id="anewsContent" cols="70" rows="10"></textarea>
				</p>
				<p>
					<label> 上传图片 </label> <input name="file" type="file"
						onchange="addPic(this)" multiple="multiple"/><br>
					<input type="hidden" name="f" id="f"/>
					<img alt="" src="images/not_pic.jpg" width="100" id="acurrPic">
				</p>
				<p id="apics"></p>
				
 <!-- 				<input type="submit" value="添加"/> 
	 --> 	
				<input type="button" value="添加" onClick="addNews()"/> 
				<input type="reset" value="重置"/>
			</form>
		
			<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
			<script type="text/javascript" src="ueditor/ueditor.all.min.js"></script>
			<script type="text/javascript" src="js/addNews.js"></script>
</body>
</html>