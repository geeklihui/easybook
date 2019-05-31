<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>安图 - 网络书店：便捷、舒适、安全、高端书店：便捷、舒适、安全、高端</title>

<!-- Bootstrap4 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
<!-- jQuery文件 -->
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
<script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
<!--  Bootstrap4 核心 JavaScript 文件 -->
<script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/index.css?05">
<link rel="icon" href="img/smallico.ico" type="image/x-icon" />

</head>

<body>
<div id="container">
<div class="head-box"><form action="SearchAllBooks">
<a href="#"><img src="img/easybooklogo.png" style="width:320px;height:100px;"></a>
<input type="text" name="bookname" placeholder="请输入书名">
<button type="submit"  ><img src="img/pc-search.svg" ></button>

<%!
String denglu;
String denglua;
%>
<%
String uname = (String)request.getSession().getAttribute("uname");
if(uname == null)
{
	denglu="登录";
	denglua="login.jsp";
}

else if(uname.equals("admin")){
	response.sendRedirect("SearchAllBooks"); 
}

else{
	denglu="<a href=logout.jsp>退出</a>";
	denglua=request.getContextPath()+"/OrderByName";
}
%>

<script language="javascript" type="text/javascript">
String uname = (String)request.getSession().getAttribute("uname");
if(uname=="admin")
	{window.location.href="managebooks.jsp";}
</script>

<div id="top" class="qrcode">
<a target="blank" href="introm.html">
<img src="img/qrcode.png"style="width:80px;height:80px;" ></a>
<a href="<%=denglua%>" style="margin-left:40px;">
<img src="img/m/user.svg"style="width:80px;height:80px;" ></a>
</div>

<div class="qrtext" style="padding-left:1255px;">
<a target="blank" href="introm.html">手机扫码上安图</a>
<a href="<%=denglua%>"style="margin-left:57px;"><%=denglu%></a>
</form>
</div>
</div>


<div class="banner-box">
<div class="table-box">
<div class="menu-item">
<a href="#liberate"><span>文学 ></span></a>		
</div>
<div class="menu-item">
<a  href="#science"><span>社科 ></span></a>
</div>
<div class="menu-item">
<a  href="#boyhood"><span>少儿 ></span></a>
</div>
<div class="menu-item">
<a  href="#art"><span>艺术 ></span></a>
</div>
<div class="menu-item">
<a  href="#life"><span>生活 ></span></a>
</div>
<div class="menu-item">
<a  href="#teach"><span>文教 ></span></a>
</div>
<div class="menu-item">
<a  href="#history"><span>历史 ></span></a>
</div>
<div class="menu-item">
<a  href="#biography"><span>传记 ></span></a>
</div>
</div>
</div>



<div id="liberate" class="book-box" style="margin-top:30px;">
<div class="box-title" style="background-color:#3a8fb7">文学著作</div>
<br>
<div id="bookimg" style="margin-left:200px;">
<c:forEach var="B" begin="0" end="2" items="${bookAll}">
			<div style="display: inline-block">
			<p style="width:400px;"><img src="${B.bookimg}"style="width:150px;height:200px;"> ${B.bookname}
			<p style="font-size:25px;">价格：￥${B.bookprice}
			<a href="${pageContext.request.contextPath }/BuyBook?bookid=${B.bookid}" style="display: block">立即购买</a>
			</div>
			</c:forEach>
</div>
</div>

<div id="science" class="book-box">
<div class="box-title" style="background-color:#4f726c">
社科图书
</div>
<br>
<div id="bookimg" style="margin-left:200px;">
<c:forEach var="B" begin="3" end="5" items="${bookAll}">
			<div style="display: inline-block">
		<p style="width:400px;"><img src="${B.bookimg}"style="width:150px;height:200px;"> ${B.bookname}
			<p style="font-size:25px;">价格：￥${B.bookprice}
			<a href="${pageContext.request.contextPath }/BuyBook?bookid=${B.bookid}" style="display: block">立即购买</a>
			</div>
			</c:forEach>
</div>
</div>
<div id="boyhood" class="book-box">
<div class="box-title" style="background-color:#f7d94c">
少儿读物
</div>
<br>
<div id="bookimg" style="margin-left:200px;">
<c:forEach var="B" begin="6" end="8" items="${bookAll}">
			<div style="display: inline-block">
		<p style="width:400px;"><img src="${B.bookimg}"style="width:150px;height:200px;"> ${B.bookname}
			<p style="font-size:25px;">价格：￥${B.bookprice}
			<a href="${pageContext.request.contextPath }/BuyBook?bookid=${B.bookid}" style="display: block">立即购买</a>
			</div>
			</c:forEach>
</div>
</div>
<div id="art" class="book-box">
<div class="box-title" style="background-color:#6f3381">
艺术作品
</div>
<br>
<div id="bookimg" style="margin-left:200px;">
<c:forEach var="B" begin="9" end="11" items="${bookAll}">
			<div style="display: inline-block">
			<p style="width:400px;"><img src="${B.bookimg}"style="width:150px;height:200px;"> ${B.bookname}
			<p style="font-size:25px;">价格：￥${B.bookprice}
			<a href="${pageContext.request.contextPath }/BuyBook?bookid=${B.bookid}" style="display: block">立即购买</a>
			</div>
			</c:forEach>
</div>
</div>
<div id="life" class="book-box">
<div class="box-title" style="background-color:#cb1b45">
生活宝典
</div>
<br>
<div id="bookimg" style="margin-left:200px;">
<c:forEach var="B" begin="12" end="14" items="${bookAll}">
			<div style="display: inline-block">
		<p style="width:400px;"><img src="${B.bookimg}"style="width:150px;height:200px;"> ${B.bookname}
			<p style="font-size:25px;">价格：￥${B.bookprice}
		<a href="${pageContext.request.contextPath }/BuyBook?bookid=${B.bookid}" style="display: block">立即购买</a>
			</div>
			</c:forEach>
</div>
</div>
<div id="teach" class="book-box">
<div class="box-title" style="background-color:#828282">
文教百科
</div>
<br>
<div id="bookimg" style="margin-left:200px;">
<c:forEach var="B" begin="15" end="17" items="${bookAll}">
			<div style="display: inline-block">
			<p style="width:400px;"><img src="${B.bookimg}"style="width:150px;height:200px;"> ${B.bookname}
			<p style="font-size:25px;">价格：￥${B.bookprice}
			<a href="${pageContext.request.contextPath }/BuyBook?bookid=${B.bookid}" style="display: block">立即购买</a>
			</div>
			</c:forEach>
</div>
</div>
<div id="history" class="book-box">
<div class="box-title" style="background-color:#86473f">
历史记载
</div>
<br>
<div id="bookimg" style="margin-left:200px;">
<c:forEach var="B" begin="18" end="20" items="${bookAll}">
			<div style="display: inline-block">
			<p style="width:400px;"><img src="${B.bookimg}"style="width:150px;height:200px;"> ${B.bookname}
			<p style="font-size:25px;">价格：￥${B.bookprice}
			<a href="${pageContext.request.contextPath }/BuyBook?bookid=${B.bookid}" style="display: block">立即购买</a>
			</div>
			</c:forEach>
</div>
</div>

<div id="biography" class="book-box">
<div class="box-title" style="background-color:#080808">
人物传记
</div>
<br>
<div id="bookimg" style="margin-left:200px;">
<c:forEach var="B" begin="21" end="23" items="${bookAll}">
			<div style="display: inline-block">
			<p style="width:400px;"><img src="${B.bookimg}"style="width:150px;height:200px;"> ${B.bookname}
			<p style="font-size:25px;">价格：￥${B.bookprice}
			<a href="${pageContext.request.contextPath }/BuyBook?bookid=${B.bookid}" style="display: block">立即购买</a>
			</div>
			</c:forEach>
</div>
<div class="about-box">
<a  href="#top">返回顶部</a>
</div>

</div>

</body>

</html>