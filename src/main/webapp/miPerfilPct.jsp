<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	HttpSession seccionPrincipal = (HttpSession) request.getSession();
	String sectionVarUsser = (String) seccionPrincipal.getAttribute("correoUser");
	if(sectionVarUsser == null){
		response.sendRedirect("LoginPaciente.jsp");
	}
%>
<body>
	¡Estas dentro!
</body>
</html>