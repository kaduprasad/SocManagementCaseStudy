<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<%
	if(session.getAttribute("userName") == null)
	{
		response.sendRedirect("login.jsp"); 
	}
	%>
	<nav class="navbar">
		<ul class="navbar-nav">
			<li><a href="home.jsp">Home</a></li>
			<li><a href="addMember.jsp">Add Member</a></li>
			<li><a href="viewMembers.jsp">View Members</a></li>
			<li><a href="viewSocietyInfo.jsp">View SocietyInfo</a></li>
			<li><a href="searchMember.jsp">Search Member</a></li>
			<li style="float:right;margin-right:10px"><a href="logout.jsp">Logout</a></li>
		</ul>
	</nav>
</body>
</html>