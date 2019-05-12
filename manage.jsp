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
<title>安图 - 管理中心 </title>
<!-- Bootstrap4 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
<!-- jQuery文件 -->
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
<script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
<!--  Bootstrap4 核心 JavaScript 文件 -->
<script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/bookall.css?0402">
<link rel="icon" href="img/smallico.ico" type="image/x-icon" />

</head>
<body>
<div id="container">
<div class="head-box">
<a href="index.jsp"><img src="img/easybooklogo.png" style="width:320px;height:100px;"></a>
<input type="text" placeholder="请输入作者 / 书名" style="width:500px;height:50px;
	margin:0 0 0 180px;
	border:4px solid rgba(0,0,0,.4);
	border-radius:30px;
	background-color:#fff;
	transition: all 200ms ease;
	text-align:center;">
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
用户管理
</div>

<div class="container" style="width:1500px;margin:0 0px 0 -35px;">

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

<div class="book-box" style="margin-top:80px;">

<div class="box-title" style="background-color:#CFAC66;">
图书管理
</div>

<div class="container" style="width:1500px;margin:0 0px 0 -35px;">

  <table class="table table-striped">
    <thead>
      <tr>
        <th width="100px" style="word-wrap:break-word">ID</th>
        <th width="250px" style="word-wrap:break-word">书名</th>
        <th width="150px" style="word-wrap:break-word">作者</th>
        <th width="250px" style="word-wrap:break-word">出版社</th>
        <th width="150px" style="word-wrap:break-word">分类</th>
        <th width="150px" style="word-wrap:break-word">页数</th>
        <th width="100px" style="word-wrap:break-word">开本</th>
        <th width="150px" style="word-wrap:break-word">出版时间</th>
        <th width="100px" style="word-wrap:break-word">ISBN</th>
        <th width="100px" style="word-wrap:break-word">操作</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><input value="00001"></td>
        <td><input value="竹简学-中国古代思想的探究"></td>
        <td><input value="汤浅邦弘 著,白雨田 译"></td>
        <td><input value="东方出版中心"></td>
        <td><input value="文学"></td>
        <td><input value="304"></td>
        <td><input value="32开"></td>
        <td><input value="2017-01-01"></td>
         <td><input value="9787547310663"></td>
        <td><button>更新</button></td>
      </tr>
      <tr>
        <td><input value="00002"></td>
        <td><input value="妈妈.我真的很生气-学会控制愤怒的情绪"></td>
        <td><input value="迪塔一多纳休"></td>
        <td><input value="化学工业出版社"></td>
        <td><input value="少儿"></td>
        <td><input value="40"></td>
        <td><input value="20开"></td>
        <td><input value="2014-05-01"></td>
         <td><input value="9787122195104"></td>
        <td><button>更新</button></td>
      </tr>
            <tr>
        <td><input value="00003"></td>
        <td><input value="不可能犯罪诊断书-I"></td>
        <td><input value="[美]爱德华·霍克"></td>
        <td><input value="吉林出版集团有限责任公司"></td>
        <td><input value="文学"></td>
        <td><input value="315"></td>
        <td><input value="32开"></td>
        <td><input value="2013-06-01"></td>
         <td><input value="9787553415994"></td>
        <td><button>更新</button></td>
      </tr>
            <tr>
        <td><input value="00004"></td>
        <td><input value="20世纪四大传记-(全四册)-经典图文版"></td>
        <td><input value="吴晗 等"></td>
        <td><input value="陕西师范大学出版社"></td>
        <td><input value="社科"></td>
        <td><input value="全4册"></td>
        <td><input value="16开"></td>
        <td><input value="2008-09-01"></td>
         <td><input value="9787561343463"></td>
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