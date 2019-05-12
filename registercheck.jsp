<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.easybook.dao.RegisterDao" %>
<%@ page import="com.easybook.entity.Register" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>安图 - 个人中心</title>
</head>
<body>
<%
String uname = request.getParameter("uname");
String upwd = request.getParameter("upwd");
Register register = new Register(uname,upwd);
RegisterDao dao = new RegisterDao();
int result = dao.register(register);
if(result > 0){
	out.print("<script>alert('注册成功，点击确认转入登录页'); window.location='login.jsp' </script>");
	//response.sendRedirect("login.jsp");
}
else {
	out.print("<script>alert('用户名或密码输入超过限制，请重试！'); window.location='register.jsp' </script>");
}

%>
</body>
</html>