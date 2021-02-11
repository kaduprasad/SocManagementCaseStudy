<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.SocManagementDAO"%>
<%@page import="entity.SocMember"%>
<%@page import="java.util.*"%>
<html>
<head>
<title>Add Member</title>
</head>
<body>
	<%@ include file="header.jsp" %>

	<div align="center">
		<form action="processAddMember.jsp" method="post">
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
						class="inputTextField" /></td>
				</tr>
				<tr>
					<td>Member Name</td>
					<td><input type="text" name="memberName" size="20"
						class="inputTextField" /></td>
				</tr>
				<tr>
					<td>Ownership</td>
					<td><input type="text" name="ownership" size="20"
						class="inputTextField" /></td>
				</tr>
				<tr>
					<td>Maintenance</td>
					<td><input type="text" name="maintenance" size="20"
						class="inputTextField" /></td>
				</tr>
			</table>
			<button class="actionBtn" style="margin-top:10px">Add</button>
		</form>
	</div>
</body>
</html>