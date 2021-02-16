<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.SocietyInfoDAO"%>
<%@page import="dao.SocManagementDAO"%>
<%@page import="java.util.*"%>
<%@ page import="entity.Society" %>
<html>
<head>
<title>View SocietyInfo</title>
</head>
<body>
<%@ include file="header.jsp" %>  

	<table align="center" class="societyTable">
		<thead>
			<tr>
				<th>Society Name</th>
				<th>Society Address</th>
				<th>City</th>
				<th style="text-align: center">No. of Flats</th>
				<th colspan="2">Actions</th>
			</tr> 
		</thead>
		<%
			List<Society> societyList = null;
			societyList = SocietyInfoDAO.getAllSocietyInfo();
			int noOfFlats = SocManagementDAO.getAllMembers().size();

			for (Society society : societyList) {
		%>
		<tr>
			<td><%=society.getSocName()%></td>
			<td><%=society.getAddress()%></td>
			<td><%=society.getCity()%></td>
			<td><%=noOfFlats%></td>
			<td><button class="actionBtn" onclick="location.href = 'editSocietyInfo.jsp?socName=<%= society.getSocName()%>';">Edit</button></td>
		</tr>

		<%
}
%>
	</table>
</body>
</html>