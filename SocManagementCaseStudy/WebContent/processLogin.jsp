<%@page import="dao.LoginDAO"%>
<%@page import="entity.LoginInfo"%>
<%
String userName = request.getParameter("userName");
String password = request.getParameter("password");

if(LoginDAO.isUserValid(new LoginInfo(userName,password))) {
	session.setAttribute("userName",userName); // session is created - admin logged in
	session.setMaxInactiveInterval(300);      // max inactive time is set 
	response.sendRedirect("home.jsp");        // if valid redirected to homePage
}
else {
	response.sendRedirect("loginFailed.jsp"); 
}
%>