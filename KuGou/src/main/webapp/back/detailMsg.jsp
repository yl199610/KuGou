<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/KuGou/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
</head>
<style type="text/css">
	label{
		width: 300px;
	}
</style>
<body> 
	<form name="detailForm" id="detailForm" style="margin-left: 200px; margin-top: 40px;" method="post">
		<label>歌 &nbsp;手&nbsp;&nbsp;&nbsp;</label><input class="easyui-combobox" name="ksongsingId" id="ksongsingId" data-options="required:true" onSelect="findSong()"><br>
		<label>歌 &nbsp;曲&nbsp;&nbsp;&nbsp;</label><input class="easyui-combobox" name="kudetailsongId" id="kudetailsongId" data-options="required:true" onSelect="findSong()"><br>
		<label>风 &nbsp;格</label><input class="easyui-combobox" name="kudetailstyleId" id="kudetailstyleId" data-options="required:true" onSelect="findSong()"><br>
		<label>播放次数</label><input name="songplay" id="songplay"><br>
		<label>下载地址</label><input name="address" id="address" ><br>
		<label>状&nbsp;&nbsp;态</label><input name="kusingstatus" id="kusingstatus" ><br>
		<label>发布时间</label><input name="detailtime" id="detailtime" ><br>
		<label>预&nbsp;&nbsp;留</label><input name="kunext" id="kunext" ><br>
		<label>预&nbsp;&nbsp;留</label><input name="kusecond" id="kusecond" ><br>
		<input type="submit" value="添加" onClick="addDetail()"/>
	</form>  
	<script type="text/javascript" src="js/addDetail.js"></script>
</body>
</html>