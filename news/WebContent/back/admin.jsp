<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/news/">
<meta charset="UTF-8">
<title>后台管理界面</title>
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet" href="easyui/themes/default/easyui.css">
<link href="css/admin.css" rel="stylesheet" type="text/css" />
</head>
<body class="easyui-layout"  id="layoutBody">
    <div data-options="region:'north'" style="height:145px;">
    	<div id="header">
		<div id="welcome">欢迎使用新闻管理系统！</div>
		<div id="nav">
			<div id="logo">
				<img src="images/logo.jpg" alt="新闻中国" />
			</div>
			<div id="a_b01">
				<img src="images/a_b01.gif" alt="" />
			</div>
		</div>
	</div>
    </div>
    <div data-options="region:'west',title:'菜单栏',collapsible:false" style="width:180px;">
    	<div id="leftSider">
		    <div title="用户管理" data-options="iconCls:'icon-man'">
		    	<ul class="menutree">
                    <li><span>添加用户</span></li>
                    <li><span>编辑用户</span></li>
				</ul>
		    </div>
		    <div title="新闻管理" data-options="iconCls:'icon-man'">
		       	<ul class="menutree">
                    <li><span>添加新闻</span></li>
                    <li><span>编辑新闻</span></li>
				</ul>
		    </div>
		    <div title="标题管理" data-options="iconCls:'icon-man'">
		     	<ul class="menutree">
                    <li><span>添加标题</span></li>
                    <li><span>编辑标题</span></li>
				</ul>
		    </div>
		</div>
    </div>
    <div data-options="region:'center',">
    	<div id="main" style="width:500px;height:250px;">
		    <div title="主界面">
		        	<h1>欢迎使用新闻后台系统</h1>
		    </div>
		</div>
    </div>

	<!-- 子窗口中的对话框 -->
	<!-- 新闻 -->
	<div id="detailNews"></div>
	<div id="modifyNews"></div>
	<div id="stopNews"></div>


	<!-- 标题 -->
	<div id="modifyTopic"></div>
	
	<!-- 用户 -->
	<div id="modifyUser"></div>
	
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/admin.js"></script>
</body>
</html>