<%@page import="dao.SocManagementDAO"%>
<%@page import="entity.SocMember"%>

<%


String flatNo = request.getParameter("flatNo");
String memberName = request.getParameter("memberName");
String ownership = request.getParameter("ownership");
Integer maintenance = Integer.parseInt(request.getParameter("maintenance"));

SocMember member = new SocMember(flatNo,memberName,ownership,maintenance);

int status = SocManagementDAO.updateMember(member);
if(status == 1)
{
	response.sendRedirect("viewProducts.jsp"); 
}
else
{
	response.sendRedirect("error.jsp"); 
}

%>