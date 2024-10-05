<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<%@page import="com.User.User" %>
<body>
<% User user=(User)session.getAttribute("userD"); 
	String name=user.getName();
	String email=user.getEmail();
	String password=user.getPassword();
%>
<h1>Welcome <%=name %> !!</h1>
<h3>Your Details :</h3>
<h3>Email :<%= email %> Password:<%= password %></h3>
</body>
</html>