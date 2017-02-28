<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="/KuGou/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>评论天地</title>
</head>
<body>
<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/Comment.js"></script>

 <div class="content">
      <ul class="classlist">
        <table width="80%" align="center">
          <tr width="100%">
            <td colspan="2" align="center">歌手:${kuSingerName}&nbsp;&nbsp;&nbsp;&nbsp;歌曲${kuSongName}</td>
          </tr>
        </table>
        
      </ul>
      <ul class="classlist">
          <table width="60%" align="center" id="commentContent">
          <tr>
            <td colspan="6"><hr />
            </td>
          </tr>
        </table>
      </ul>
      <ul class="classlist">
        <form id="myTable"  onsubmit="return check()" >      
       		 <input name="kuSingerName" type="hidden" value="${kuSingerName}">
       		 <input name="kuSongName" type="hidden" value="${kuSongName}">
       		 <input name="kuSongDetailId" type="hidden" value="${kuSongDetailId}">
            <table width="60%" align="center" >    
            <tr>
              <td> 当前用户名： <input style="width:80px ;color:blue ;border:0px" id="kgUserName" name="kgUserName" readonly="readonly" value='${loginUser}' ></input></td>
            </tr>
             <tr>
              <td> 请在下面进行评 论 :</td>
            </tr>
            <tr>
              <td colspan="2"><textarea name="kuContent" id="kuContent" cols="70" rows="10" id="c"></textarea>
              </td>
            </tr>
            <tr>
            	<td><input value="发  表" type="submit"/></td>
            </tr>
          </table>
        </form>
      </ul>
    </div>


</body>
</html>
