<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.SocietyInfoDAO"%>

<%@ page import="entity.Society" %>
<html>
<head>
	<link rel="stylesheet" href="css/style.css">
	<title>Edit SocietyInfo</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<%
		String socName = request.getParameter("socName");
		Society society = SocietyInfoDAO.getSocietyBySocName(socName);
	%>
	<div align="center">
		<form action="processEditSocietyInfo.jsp" method="post">
			<table class="memberTable">
				<thead>
					<tr>
						<th colspan="2">
							Society Details
						</th>
					</tr>
				</thead>
				<tr>
					<td>Society Name</td>
					<td><input type="text" name="socName" size="20"
							   value="<%=society.getSocName()%>" class="inputTextField" readonly/></td>
				</tr>
				<tr>
					<td>Society Address</td>
					<td><input type="text" name="address" size="20"
							   value="<%=society.getAddress()%>" class="inputTextField"/></td>
				</tr>
				<tr>
					<td>City</td>
					<td><input type="text" name="city" size="20"
							   value="<%=society.getCity()%>" class="inputTextField"/></td>
				</tr>
			</table>
			<button class="actionBtn" style="margin-top:10px">Save</button>
		</form>
	</div>
</body>
</html>