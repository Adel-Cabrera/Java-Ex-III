<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Cat</title>
	</head>
<body>
	<h1>Cat's name: <c:out value="${cat.name}"/> | Breed: <c:out value="${cat.breed}"/> | Weigth: <c:out value="${cat.getWeight()}"/> </h1>
	<p><c:out value="${cat.showAffection()}"></c:out></p>
	<h1></h1>
	
</body>
</html>