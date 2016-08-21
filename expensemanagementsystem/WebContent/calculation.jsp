<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="/WEB-INF/c.tld"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/calculation.js"></script>
<title>Calculations Page</title>
</head>
<body bgcolor="#d2ff52" background="img/bg.jpg">
	<%
		java.text.DateFormat df = new java.text.SimpleDateFormat(
				"dd/MM/yyyy");
	%>
	<div align="center">
		<h1>
			<font color="red">${username}'s Calculations till <%=df.format(new java.util.Date())%></font>
		</h1>
		<hr>
		<div align="center">
			<font>*** "-" Sign indiacates u have to </font><font color="red">give</font><font>
				***</font><br>
			<font>*** "+" Sign indicates u have to <font color="green">get</font>
				<font>*** </font></font>
		</div>
		<br> <br>
		<table border="0">

			<tr>
				<td><font color="green"
					style="font-size: medium; font-size: 25px; font-style: normal;">YOU
						HAVE TO GET/GIVE</font></td>
				<td><font color="red" size="5">${sessionScope.FinalResult.chowdary
						}</font></td>
				<td><font color="green"
					style="font-size: medium; font-size: 25px; font-style: normal;">RS/-
						FROM CHOWDARY</font></td>
			</tr>
			<tr>
				<td><font color="green"
					style="font-size: medium; font-size: 25px; font-style: normal;">YOU
						HAVE TO GET/GIVE </font></td>
				<td><font color="red" size="5">${sessionScope.FinalResult.datta
						}</font></td>
				<td><font color="green"
					style="font-size: medium; font-size: 25px; font-style: normal;">RS/-
						FROM DATTA</font></td>
			</tr>
			<tr>
				<td><font color="green"
					style="font-size: medium; font-size: 25px; font-style: normal;">YOU
						HAVE TO GET/GIVE</font></td>
				<td><font color="red" size="5">${sessionScope.FinalResult.vamsi
						}</font></td>
				<td><font color="green"
					style="font-size: medium; font-size: 25px; font-style: normal;">RS/-
						FROM VAMSI</font></td>
			</tr>
			<tr>
				<td><font color="green"
					style="font-size: medium; font-size: 25px; font-style: normal;">YOU
						HAVE TO GET/GIVE </font></td>
				<td><font color="red" size="5">${sessionScope.FinalResult.kiran
						}</font></td>
				<td><font color="green"
					style="font-size: medium; font-size: 25px; font-style: normal;">RS/-
						FROM KIRAN</font></td>
			</tr>
			<tr>
				<td><font color="green"
					style="font-size: medium; font-size: 25px; font-style: normal;">YOU
						HAVE TO GET/GIVE </font></td>
				<td><font color="red" size="5">${sessionScope.FinalResult.uday
						}</font></td>
				<td><font color="green"
					style="font-size: medium; font-size: 25px; font-style: normal;">RS/-
						FROM UDAY</font></td>
			</tr>
			<tr>
				<td><font color="green"
					style="font-size: medium; font-size: 25px; font-style: normal;">YOU
						HAVE TO GET/GIVE</font></td>
				<td><font color="red" size="5">${sessionScope.FinalResult.gunda
						}</font></td>
				<td><font color="green"
					style="font-size: medium; font-size: 25px; font-style: normal;">RS/-
						FROM GUNDA</font></td>
			</tr>
			<tr>
				<td><font color="green"
					style="font-size: medium; font-size: 25px; font-style: normal;">YOU
						HAVE TO GET/GIVE</font></td>
				<td><font color="red" size="5">${sessionScope.FinalResult.vihar
						}</font></td>
				<td><font color="green"
					style="font-size: medium; font-size: 25px; font-style: normal;">RS/-
						FROM VIHAR</font></td>
			</tr>


		</table>
	</div>
	<div align="center">
		<table>
			<th><a href="back.obj"><img alt="" src="img/Back.png"
					title="Go Back"></a></th>
			<th><a href="#" onclick="Print()"><img alt=""
					src="img/Print.png" title="Print This Page"> </a></th>
		</table>
	</div>

</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>