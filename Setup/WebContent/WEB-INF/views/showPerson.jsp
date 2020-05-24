<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!--     import="com.darkonnen.web.models.Person" -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Show person page</title>
	</head>
<body>
<%-- 	<% Person person = (Person) request.getAttribute("person"); %> --%>
<%-- 	<h1><%= person.gretting() %></h1> --%>
<%-- 	<p><%= person.getName() %></p> --%>
		<h1><c:out value="${person.gretting()}"/></h1>
		<h2><c:out value="${person.getName()}"/></h2>
	
<!-- 	http://localhost:8080/Setup/ShowPerson?name=Adel&age=33 -->
	
</body>
</html>