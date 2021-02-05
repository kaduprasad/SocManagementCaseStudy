<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="dao.SocManagementDAO"%>
<%@page import="entity.SocMember"%>
<%@page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
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