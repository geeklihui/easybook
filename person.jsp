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
<title>安图 - 个人中心 </title>
<!-- Bootstrap4 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
<!-- jQuery文件 -->
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
<script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
<!--  Bootstrap4 核心 JavaScript 文件 -->
<script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/bookall.css?003">
<link rel="icon" href="img/smallico.ico" type="image/x-icon" />

</head>
<body>
<div id="container">
<div class="head-box">
<a href="index.jsp"><img src="img/easybooklogo.png" style="width:320px;height:100px;"></a>
<input type="text" placeholder="请输入作者 / 书名">
<button type="submit" ><img src="img/pc-search.svg" ></button>

<%!
String denglu;
String denglua;
%>
<%
String uname = (String)session.getAttribute("uname");
if(uname!=null){
	denglu="<a href=logout.jsp>退出</a>";
	denglua="person.jsp";
}
else{
	denglu="登录";
	denglua="login.jsp";
}
%>

<div class="qrcode"><a target="blank" href="introm.html"><img src="img/qrcode.png"style="width:80px;height:80px;" ></a>
<a href="<%=denglua%>" style="margin-left:40px;"><img src="img/m/user.svg"style="width:80px;height:80px;" ></a></div>
<div class="qrtext" style="padding-left:1255px;"><a target="blank" href="introm.html">手机扫码上安图</a><a href="<%=denglua%>"style="margin-left:57px;"><%=denglu%></a>
</div>
<div class="book-box" style="margin-top:80px;">

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
        <th width="150px" style="word-wrap:break-word">订单物流</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>00001</td>
        <td>2019-04-20 07:30:30</td>
        <td>百年中华文学史论(1898-1999) * 1</td>
        <td>¥22.90</td>
        <td>已到货</td>
      </tr>
      <tr>
      <td>John</td>
        <td>00002</td>
        <td>2019-04-22 15:30:30</td>
        <td>阿加莎.克里斯蒂侦探推理系列:大象的证词 * 1</td>
        <td>¥12.70</td>
        <td>运输中<br><a href="#">点击查看物流</a></td>
      </tr>
      <tr>
      <td>John</td>
        <td>00003</td>
        <td>2019-04-22 08:30:30</td>
        <td>不可能犯罪诊断书-I * 1</td>
        <td>¥28.00</td>
        <td>待发货</td>
      </tr>

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


</div>
</body>
</html>