<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/news/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
</head>
<body>  
<form id="mNews" enctype="multipart/form-data" style="width:90%;margin:0px auto">
				<input type="hidden" name="nid" id="mnid"/>
				<p>
					<label> 主题 </label> <select name="ntid" id="ntid"></select>
				</p>
				<p>
					<label> 标题 </label> <input id="mnewsTitle" name="ntitle" type="text" value="bbb"/>
				</p>
				<p>
					<label> 作者 </label> <input id="mnewsAuthor" name="nauthor" type="text" value="ccc" />
				</p>
				<p>
					<label> 摘要 </label>
					<textarea name="nsummary" id="newsSummary" cols="40" rows="3">bbb</textarea>
				</p>
				<p>
					<label> 内容 </label>
					<textarea name="ncontent" id="mnewsContent" cols="70" rows="10">eee</textarea>
				</p>
				<p>
					<label> 上传图片 </label> <input name="file" type="file"
						onchange="addPic(this)" multiple="multiple"/><br>
					<input type="hidden" name="file" id="file"/>
					<img alt="" src="images/not_pic.jpg" width="100" id="currPic">
				</p>
				<p id="pics"></p>
				
				<input type="button" value="修改" onClick="modifyNews()"/> 
				<input type="reset" value="重置" class="opt_sub" />
			</form>
		
		
			<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
			<script type="text/javascript" src="ueditor/ueditor.all.min.js"></script>
			<script type="text/javascript" src="js/modifyNews.js"></script>
</body>
</html>