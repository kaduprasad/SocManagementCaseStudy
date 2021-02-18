<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.SocManagementDAO"%>
<%@page import="entity.SocMember"%>
<html>
<head>
	<link rel="stylesheet" href="css/style.css">
	<title>Edit Member</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<%
		String flatNo = request.getParameter("flatNo");
		SocMember member = SocManagementDAO.getMemberByFlatNo(flatNo);
		
	%>
	<div align="center">
		<form action="processEditMemberInfo.jsp" method="post">
			<table class="memberTable">
				<thead>
					<tr>
						<th colspan="2">
							Member Details
						</th>
					</tr>
				</thead>
				<tr>
					<td>Flat No.</td>
					<td><input type="text" name="flatNo" size="20"
						value="<%=flatNo%>" class="inputTextField" readonly/></td>
				</tr>
				<tr>
					<td>Member Name</td>
					<td><input type="text" name="memberName" size="20"
							   value="<%=member.getMemberName()%>" class="inputTextField"/></td>
				</tr>
				<tr>
					<td>Ownership</td>
					<td>
						<select class="dropDown" name="ownership" value="<%=member.getOwnership()%>" style="width:190px;">
							<option value="Owner">Owner</option>
							<option value="Tenant">Tenant</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>Maintenance</td>
					<td><input type="text" name="maintenance" size="20"
							   value="<%=member.getMaintenance()%>" class="inputTextField"/></td>
				</tr>
			</table>
			<button class="actionBtn" style="margin-top:10px">Save</button>
		</form>
	</div>
</body>
</html>