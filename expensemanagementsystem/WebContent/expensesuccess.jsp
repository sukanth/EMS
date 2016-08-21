<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>expense addition success</title>
</head>
<body bgcolor="#d2ff52" background="img/bg.jpg">
<div align="center">
<h1><font color="red">hi ${username }, info updated into DB successfully</font></h1>
<a href="addanotherexp.obj">perform another operation</a><br>
<a href="userlogout.obj"><img alt="" src="img/logout.png" title="LOGOUT"> </a>
</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>