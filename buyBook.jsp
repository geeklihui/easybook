<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>安图 - 下单</title>

<!-- Bootstrap4 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
<!-- jQuery文件 -->
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
<script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
<!--  Bootstrap4 核心 JavaScript 文件 -->
<script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/purchase.css?055">
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
下单
</div>

<div class="container" style="width:1500px;">

<img src="${book.bookimg }" style="margin-left:430px;margin-top:20px;"width="240px" height="300px">
<p style="text-align:center;font-size:25px;margin-top:10px;">${book.bookname}

 <form action="${pageContext.request.contextPath }/Order" method="post">
 <table class="table  table-striped">
    <tbody>
    
      <tr>
        <td>收件人姓名</td>
        <td><input type="text" name="ordername" autofocus required ></td>
      </tr>
      <tr>
        <td>收件人地址</td>
        <td><input type="text" name="orderaddress" required ></td>
      </tr>
      <tr>
        <td>收件人电话</td>
        <td><input type="text" name="ordertel" required ></td>
      </tr>
		<tr>
        <td>下单用户</td>
        <td>uname</td>
      </tr>
	<tr>
        <td>订单号</td>
        <td>${orderid }</td>
      </tr>
	<tr>
        <td>价格</td>
        <td>${book.bookprice }</td>
      </tr>
		<tr>
        <td>下单时间</td>
        <td>${ordertime }</td>
      </tr>
    </tbody>
	<button type="submit" style="margin-left:440px;margin-bottom:20px;">提交订单</button>
  </table>
  
  </form>
    



</div>


</div>

</div>


</body>
</html>