<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Index</title>
	</head>
<body>
	<h2>Choose A Dog</h2>

	<form action="Dogs" method="post">
		Name: <input type="text" name="name"><br>
		Breed: <input type="text" name="breed"><br>
		Weight:<input type="number" name="weight"><br>
		<input type="submit">
	</form>
	
	<h2>Choose A Cat</h2>
	<form action="Cats" method="post">
		Name: <input type="text" name="name"><br>
		Breed: <input type="text" name="breed"><br>
		Weight: <input type="number" name="weight"><br>
		<input type="submit">
	</form>
	
</body>
</html>