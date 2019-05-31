<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- viewport移动端适配 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" /> 
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>安图 - 搜索 </title>
<!-- Bootstrap4 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
<!-- jQuery文件 -->
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
<script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
<!--  Bootstrap4 核心 JavaScript 文件 -->
<script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/manage.css?04002">
<link rel="icon" href="img/smallico.ico" type="image/x-icon" />

</head>
<body>
<div id="container">
<div class="head-box">
<a href="index.jsp"><img src="img/easybooklogo.png" style="width:320px;height:100px;"></a>


<div class="book-box" style="margin-top:80px;">

<div class="box-title" style="background-color:#CFAC66;">
搜索结果
</div>

<div class="container">
 <c:forEach var="U" items="${bookAll}"  >
 ${B.bookname}
 </c:forEach>
  <table class="table table-striped">
    <thead>
      <tr>
        <th width="250px" style="word-wrap:break-word">ID</th>
        <th width="250px" style="word-wrap:break-word">用户名</th>
        <th width="250px" style="word-wrap:break-word">密码</th>
        <th width="250px" style="word-wrap:break-word">角色</th>
        <th width="250px" style="word-wrap:break-word">电话</th>
        <th width="250px" style="word-wrap:break-word">操作</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><input value="00001"></td>
        <td><input value="admin"></td>
        <td><input value="admin"></td>
        <td><input value="管理员"></td>
        <td><input value="18855037598"></td>
        <td><button>更新</button></td>
      </tr>
      <tr>
        <td><input value="00002"></td>
        <td><input value="test"></td>
        <td><input value="test"></td>
        <td><input value="用户"></td>
        <td><input value="13014059945"></td>
        <td><button>更新</button></td>
      </tr>

    </tbody>
  </table>

</div>
</div>

</div>

</div>


</body>
</html>