<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AddMember</title>
</head>
<div align="center">
	<body bgcolor="#d2ff52" background="img/bg.jpg">
		<h1>
			<font color="#a90329">ADDING MEMBER TO DB</font>
		</h1>
		<hr>
		<sf:form method="post" modelAttribute="Add_member"
			action="AddData.obj">

			<fieldset>
				<table>
					<tr>
						<td><sf:label path="username">USERNAME :</sf:label></td>
						<td><sf:input path="username" size="20" maxlength="20" /> <font
							color="red"><small>Username cannot be blank</small></font> <br>
							<sf:errors path="username" cssStyle="color:red"></sf:errors></td>
					</tr>
					<tr>
						<td><sf:label path="password">PASSWORD :</sf:label></td>
						<td><sf:password path="password" size="20" maxlength="20" />
							<font color="red"><small>Password cannot be blank</small></font>
							<br> <sf:errors path="password" cssStyle="color:red"></sf:errors></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="AddUser"></td>
					</tr>
				</table>
			</fieldset>

		</sf:form>
		<a href="goback.obj"><img alt="" src="img/Back.png" title="Go Back"></a>
	</body>
	
</div>
<jsp:include page="footer.jsp"></jsp:include>
</html>