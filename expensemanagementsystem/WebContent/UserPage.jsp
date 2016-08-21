<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome ${username}</title>
<script src="js/jquery-1.9.1.js"></script>
<script src="js/jquery.blockUI.js"></script>
<script src="js/common.js"></script>
</head>
<body  background="img/bg.jpg">
	<div align="center">
		<font color="red">
			<h1>
				<center>hi " ${username}" manage your expenses here</center>
			</h1>
			<hr>
		</font>
		<div align="left">
				<li style="color: red"><a href="changePassword.obj" style="font-style: italic;color:highlighttext;">Change Your Password</a></li>
				<a href="userlogout.obj"><img alt="" src="img/logout.png"
				title="Logout" align="right"></a>				
		</div>
<br><br>
<br><br>
		<table>
			<tr>
				<th></font> <a href="addexpense.obj"><img alt=""
						src="img/addexp.png" title="Add Expense"></a></th>

				<th><a href="allexpense.obj"><img alt=""
						src="img/viewall.png" title="View All Expenses"> </a></th>

				<th><a href="yourexpense.obj"><img alt=""
						src="img/viewyour.png" title="View Your Expense"> </a></th>

				<th><a href="calculations.obj"><img alt=""
						src="img/calculations.png" title="View Your calculations"> </a></th>


			</tr>
			<br>
			<tr style="color: red">
				<td>Add Expense</td>
				<td>View All Expenses</td>
				<td>View Your Expense</td>
				<td>View Calculations</td>

			</tr>
		</table>
	</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>