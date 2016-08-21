<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<html>
<title>Login Page</title>
<head>
<script src="js/jquery-1.9.1.js"></script>
<script src="js/jquery.blockUI.js" type="text/javascript"></script>
<script type="text/javascript">
function showLoadingQuestionnaire(){
    $.blockUI.defaults.css = {
          width:      '30%',
          top:        '40%',
          left:       '35%',
          textAlign:  'center',
          cursor:     'wait'
                  };
  $(document).ajaxStart($.blockUI({ message: '<img src="'+getContextRoot()+'/img/spinnerLarge.gif" />' })).ajaxStop($.unblockUI);
}
</script>
</head>
<body  background="img/bg.jpg">
	<center>
		<h1>
			<font color="#a90329">EXPENSE MANAGEMENT SYSTEM</font>
		</h1>
		<br /> <br></br> <br></br>
	</center>
	<div align="center" class="modal">
		<sf:form method="post" modelAttribute="login_bean"
			action="login_bean.obj">

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
						<td><sf:password path="password" size="20" maxlength="10" />
							<font color="red"><small>Password cannot be blank</small></font>
							<br> <sf:errors path="password" cssStyle="color:red"></sf:errors></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="Login"></td>
					</tr>
				</table>
			</fieldset>

		</sf:form>
		<img alt="" src="img/lock.png">
	</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>