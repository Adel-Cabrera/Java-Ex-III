<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Dog</title>
	</head>
<body>
	<h1>Dog's name: <c:out value="${dog.name}"/> | Breed: <c:out value="${dog.breed}"/> | Weigth: <c:out value="${dog.getWeight()}"/> </h1>
	<h2>You created a <c:out value="${dog.getBreed()}" />!</h2>
	<p><c:out value="${dog.showAffection()}"></c:out></p>
	
</body>
</html>