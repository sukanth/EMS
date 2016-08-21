<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
</head>
<body background="img/bg.jpg">
	<font color="red">
		<h1>
			<center>hi " ${username}" Change Your Password here</center>
		</h1>
		<hr>
	</font>
	<div align="center">
		<sf:form method="post" action="doPasswordChange.obj"
			modelAttribute="newpassword">

			<fieldset>
				<table>
					<tr>
						<td><sf:label path="newpassword">Enter new Password :</sf:label></td>
						<td><sf:password path="newpassword" size="20" maxlength="10" />
							<font color="red"><small>New Password cannot be
									blank</small></font> <br> <sf:errors path="newpassword"
								cssStyle="color:red"></sf:errors></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="Change Password"></td>
					</tr>
				</table>
			</fieldset>
		</sf:form>
</body>
<a href="back.obj"><img alt="" src="img/Back.png" title="Go Back"></a>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</html>