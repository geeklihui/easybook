<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- viewport移动端适配 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" /> 
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>安图 - 登录</title>

<!-- Bootstrap4 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
<!-- jQuery文件 -->
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
<script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
<!--  Bootstrap4 核心 JavaScript 文件 -->
<script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="../easybook/css/login.css?1">
<link rel="icon" type="image/x-icon" href="../easybook/img/smallico.ico" />


</head>
<body>

<div id="container">
<div class="main-box">
<div class="bg"></div>
<img src="../easybook/img/loginbg.jpg" style="margin:50px 0 0 50px;box-shadow:0px 10px 20px 4px  rgba(0,0,0,0.8);">
	<div class="login-box">
		<div class="containerT">
		      <a href="index.jsp">
	<img src="../easybook/img/easybookico.png" style="width:30%;height:20%;margin-top:57px;">
	</a>
		<h1>安图 - 登入</h1>
			<form action="LoginServlet" class="form" method="post">
				<input type="text" placeholder="用户名" name="uname" value=""required autofocus>
				<input type="password" placeholder="密码" name="upwd" required>
				<div id="code" style="margin-bottom:10px;">
				<a href="register.jsp"> 注册帐号</a>
				</div>
				<div class="effect-group-container toolbar-2">
	<div>
		<button type="submit">登录</button>
	</div>
</div>
			</form>

	</div>
</div>
</div>

</div>

</body>


</html>