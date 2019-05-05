<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.easybook.dao.LoginDao" %>
<%@ page import="com.easybook.entity.Login" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录失败</title>
</head>
<body>
<%
String utel = request.getParameter("utel");
String upwd = request.getParameter("upwd");
Login login = new Login(utel,upwd);
LoginDao dao = new LoginDao();
int result = dao.login(login);
if(result > 0){
	session.setAttribute("utel", utel);
	response.sendRedirect("index.jsp");
}
else {
	out.print("<script>alert('手机号或密码错误，请重试！'); window.location='login.jsp' </script>");
	//response.sendRedirect("login.jsp");
}

%>
</body>
</html>