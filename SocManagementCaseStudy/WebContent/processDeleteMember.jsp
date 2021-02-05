<%@page import="dao.SocManagementDAO"%>
<%@page import="entity.SocMember"%>

<%
String flatNo = request.getParameter("flatNo");

int status = SocManagementDAO.deleteMember(flatNo);
if(status == 1) {
	response.sendRedirect("viewMembers.jsp");
}
else {
	response.sendRedirect("error.jsp"); 
}
%>