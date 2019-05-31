<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- viewport移动端适配 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" /> 
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>安图 - 管理中心 </title>
<!-- Bootstrap4 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
<!-- jQuery文件 -->
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
<script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
<!--  Bootstrap4 核心 JavaScript 文件 -->
<script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/manage.css?032">
<link rel="icon" href="img/smallico.ico" type="image/x-icon" />

</head>
<body>
<div id="container">
<div class="head-box">
<a href="index.jsp"><img src="img/easybooklogo.png" style="width:320px;height:100px;"></a>

<%
String uname = (String)session.getAttribute("uname");
if(uname == null ){
	session.invalidate();
	response.sendRedirect("login.jsp"); 
}

%>

<a href=logout.jsp >退出 </a><a href=SearchAllUser> 用户管理</a><a href=SearchAllUser> 订单查询</a>


<div class="book-box" style="margin-top:80px;">
<div class="box-title" style="background-color:#CFAC66;">
图书管理
</div>
<div class="container">
  <table class="table table-striped">
    <thead>
      <tr>
        <th style="width:10%;">ID</th>
        <th style="width:20%;">书名</th>
        <th style="width:20%;">作者</th>
        <th style="width:15%;">出版社</th>
        <th style="width:10%;">分类</th>
        <th style="width:5%;">页数</th>
        <th style="width:5%;">开本</th>
        <th style="width:10%;">出版时间</th>
        <th style="width:20%;">ISBN</th>
        <th style="width:5%;">操作</th>
      </tr>
    </thead>
    <c:forEach var="B" items="${bookAll}"  >
    <form action="UpdateBooks" method="post">
    <tbody>
      <tr>
        <td><input name="bookid" value="${B.bookid}"></td>
        <td><input name="bookname" value="${B.bookname}"></td>
        <td><input name="bookauthor" value="${B.bookauthor}"></td>
        <td><input name="bookpublisher" value="${B.bookpublisher}"></td>
        <td><input name="bookclass" value="${B.bookclass}"></td>
        <td><input name="bookpages" value="${B.bookpages}"></td>
        <td><input name="booksize" value="${B.booksize}"></td>
        <td><input name="bookpubtime" value="${B.bookpubtime}"></td>
         <td><input name="bookisbn" value="${B.bookisbn}"></td>
        <td><button>更新</button></td>
      </tr>
      </tbody>
      </form>
 	</c:forEach>

    </tbody>
  </table>

</div>
</div>

</div>


</div>
</body>
</html>