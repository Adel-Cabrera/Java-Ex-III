<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Counter</title>
	</head>
<body>
			
	<a href="/Sessions/Counters" height:><button>Click!</button></a>
	
	<h1>You have clicked the button <c:out value="${count}"></c:out> times</h1>
	
</body>
</html>