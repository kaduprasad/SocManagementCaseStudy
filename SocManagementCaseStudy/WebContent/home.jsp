<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Home</title>
<p> Society Management System</p>
</head>

<body>

<%@ include file="header.jsp" %>

<%
String userName = (String)session.getAttribute("userName");
%>

<div align="center">
<br>
<label class="welcome">Welcome <%= userName %></label>
</div>

</body>
</html>