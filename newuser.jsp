<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.easybook.dao.RegisterDao" %>
<%@ page import="com.easybook.entity.Register" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String utel = request.getParameter("utel");
String upwd = request.getParameter("upwd");
Register register = new Register(utel,upwd);
RegisterDao dao = new RegisterDao();
int result = dao.register(register);
if(result > 0){
	response.sendRedirect("login.jsp");
}
else {
	out.print("<script>alert('手机号或密码错误，请重试！'); window.location='register.jsp' </script>");
}

%>
</body>
</html>