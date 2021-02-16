<%@page import="dao.SocietyInfoDAO"%>
<%@ page import="entity.Society" %>

<%
String socName = request.getParameter("socName");
String address = request.getParameter("address");
String city = request.getParameter("city");

Society society = new Society(socName, address, city);

	int status = SocietyInfoDAO.updateSociety(society);
	if(status == 1) {
		response.sendRedirect("viewSocietyInfo.jsp");
	}
	else {
		response.sendRedirect("error.jsp");
	}

%>