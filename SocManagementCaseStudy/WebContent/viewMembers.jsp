<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.SocManagementDAO"%>
<%@page import="entity.SocMember"%>
<%@page import="java.util.*"%>
<html>
<head>
<title>View Members</title>
</head>
<body>
<%@ include file="header.jsp" %>  

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
			List<SocMember> memberList = SocManagementDAO.getAllMembers();
			for (SocMember member : memberList) {
		%>
		<tr>
				<td><%=member.getFlatNo()%></td>
				<td><%=member.getMemberName()%></td>
				<td><%=member.getOwnership()%></td>
				<td><%= member.getMaintenance() %></td>
			<td><button class="actionBtn" onclick="location.href = 'editMemberInfo.jsp?flatNo=<%= member.getFlatNo()%>';">Edit</button></td>
			<td><button class="actionBtn" onclick="location.href = 'processDeleteMember.jsp?flatNo=<%= member.getFlatNo()%>';">Delete</button></td>
		</tr>

		<%
}
%>
	</table>

</body>
</html>