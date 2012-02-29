<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
		request.setAttribute("test", "test");
		request.getSession().setAttribute("test", "test");
	
	%>
	<form action="redirect" method="post" name="form">
       <input name="username" type="text" />
       <input type="submit" value="submit">
	</form>
</body>
</html>