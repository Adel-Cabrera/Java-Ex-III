<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.darkonnen.web.models.Person"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Show person page</title>
	</head>
<body>
	<% Person person = (Person) request.getAttribute("person"); %>
	<h1><%= person.gretting() %></h1>
	<p><%= person.getName() %></p>
</body>
</html>