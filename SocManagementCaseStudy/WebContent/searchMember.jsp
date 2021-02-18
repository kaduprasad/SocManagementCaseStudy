<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.SocManagementDAO"%>
<%@page import="entity.SocMember"%>
<%@page import="java.util.*"%>
<html>
<head>
	<link rel="stylesheet" href="css/style.css">
	<title>Search Member</title>
</head>
<body>
<%@ include file="header.jsp" %>  
<div align="center" style="padding-top:25px;">
	<form action="searchMember.jsp">
		<label>Enter Flat No: </label>
		<input type="text" name="flatNo" size="25" class="searchTextField"/>
		<button class="actionBtn">Search</button>
	</form>
</div> 
	<table align="center" class="memberTable">
		<thead>
			<tr>
				<th>Flat No</th>
				<th>Member Name</th>
				<th>Ownership</th>
				<th>Maintenance</th>
				<th colspan="2">Actions</th>
			</tr> 
		</thead>
		<%
			String flatNo = request.getParameter("flatNo");
			if(flatNo != null)
			{
				SocMember member = SocManagementDAO.getMemberByFlatNo(flatNo);
			
				if(member != null)
				{
		%>
			<tr>
				<td><%=member.getFlatNo()%></td>
				<td><%=member.getMemberName()%></td>
				<td><%=member.getOwnership()%></td>
				<td><%= member.getMaintenance() %></td>
				<td><button class="actionBtn" onclick="location.href = 'editMemberInfo.jsp?prodId=<%= member.getFlatNo()%>';">Edit</button></td>
				<td><button class="actionBtn" onclick="location.href = 'processDeleteMember.jsp?prodId=<%= member.getFlatNo()%>';">Delete</button></td>
			</tr>
	    <%		}
				else
				{
		%>
			<tr>
				<td colspan="5">No record to display</td>
			</tr>
		<% 
				}
			}
			else 
			{
		%>
			<tr>
				<td colspan="5">No record to display</td>
			</tr>
		<% 
			}
		%>
	</table>

</body>
</html>