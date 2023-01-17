<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String email = request.getParameter("lemail");
String lpassword = request.getParameter("lpassword");

session.setAttribute("currentuser", email);

//out.print(email);
//out.print(lpassword);
if (email.equals("admin@gmail.com") && lpassword.equals("Admin123@")){
	response.sendRedirect("adminhome.jsp");
	}
	else if(email.equals("user@gmail.com") && lpassword.equals("User123@")){
		response.sendRedirect("userhome.jsp");	
}
	else{
		response.sendRedirect("index.html");

	}

%>

</body>
</html>