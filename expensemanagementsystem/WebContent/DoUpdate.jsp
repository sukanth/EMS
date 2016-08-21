<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Member</title>
</head>
<body bgcolor="#d2ff52" background="img/bg.jpg">
	<div align="center">
		<h1>
			<font color="#a90329">Update Member Details</font>
		</h1>
		<sf:form method="post" modelAttribute="l1" action="Update.obj">

			<fieldset>
				<table>
					<tr>
						<td><sf:label path="username">USERNAME :</sf:label></td>
						<td><sf:input path="username" size="20" maxlength="20"
								readonly="true" /> <font color="red"><small>Username
									cannot be blank</small></font> <br> <sf:errors path="username"
								cssStyle="color:red"></sf:errors></td>
					</tr>
					<tr>
						<td><sf:label path="password">PASSWORD :</sf:label></td>
						<td><sf:password path="password" size="20" maxlength="10" />
							<font color="red"><small>Password cannot be blank</small></font>
							<br> <sf:errors path="password" cssStyle="color:red"></sf:errors></td>
					</tr>
					<tr>
						<td><sf:label path="role">ROLE :</sf:label></td>
						<td><sf:input path="role" size="20" maxlength="10" /> <font
							color="red"><small>role cannot be blank</small></font> <br>
							<sf:errors path="role" cssStyle="color:red"></sf:errors></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit"
							name="login" value="update"></td>
					</tr>
				</table>
			</fieldset>

		</sf:form>
		<a href="backToUpdate.obj"><img alt="" src="img/Back.png"
			title="Go Back"></a>
	</div>
</body>


<jsp:include page="footer.jsp"></jsp:include>
</html>