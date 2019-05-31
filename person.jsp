<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">]
<title>安图 - 个人中心 </title>
<!-- Bootstrap4 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
<!-- jQuery文件 -->
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
<script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
<!--  Bootstrap4 核心 JavaScript 文件 -->
<script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/manage.css?003">
<link rel="icon" href="img/smallico.ico" type="image/x-icon" />

</head>
<body>
<div id="container">
<div class="head-box">
<a href="IndexBooks"><img src="img/easybooklogo.png" style="width:320px;height:100px;"></a>
<a href=IndexBooks> 返回 </a> <a href=logout.jsp > 退出 </a>
</div>

<div class="book-box" style="margin-top:30px;">

<div class="box-title" style="background-color:#CFAC66;">
订单中心
</div>

<div class="container" style="width:1500px;margin:0 0px 0 -35px;">

  <table class="table table-striped">
    <thead>
      <tr>
        <th width="150px" style="word-wrap:break-word">用户名</th>
        <th width="150px" style="word-wrap:break-word">订单ID</th>
        <th width="250px" style="word-wrap:break-word">下单时间</th>
        <th width="650px" style="word-wrap:break-word">订单内容</th>
        <th width="150px" style="word-wrap:break-word">订单总价</th>
        <th width="150px" style="word-wrap:break-word">订单状态</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="order" items="${orderlist }">
        <tr>
            <td>${order.orderuser }</td> 
            <td>${order.orderid }</td> 
            <td>${order.ordertime }</td> 
            <td>${order.orderbooks }</td> 
            <td>${order.orderprice }</td> 
            <td>${order.orderprocess }</td> 
        </tr>
      
      </c:forEach>
    </tbody>
  </table>
  <table class="table">        
  
<tbody>
 <tr>
<td>没有更多啦！快去买买买！</td>
</tr>
</tbody>
</table>

</div>
</div>


</div>

</body>
</html>