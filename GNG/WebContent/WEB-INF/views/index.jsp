<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>GNG</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/style.css" type="text/css" rel="stylesheet" />		
    </head>
<body>
	<div class="container text-center">
		<div class="col">
	
			<h1>Welcome to the Great Number Game!</h1>
			<h4>I am thinking of a number between 1 and 100</h4>
			<h4>Take a guess!</h4>
		
		</div>

	<div class="col d-flex justify-content-center">
	
		<% if(session.getAttribute("number") != null){ %>
			<% int myNum = (int) session.getAttribute("number"); %>
			<% int randomNumber = (int) session.getAttribute("randomNumber"); %>
			<% if(myNum > randomNumber){ %>
				<div class="wrong">
					<p>Too High!</p>
				</div>
			<%} else if (myNum < randomNumber){%>
				<div class="wrong">
					<p>Too Low!</p>
				</div>
			<%} else {%>
				<div class="right">
					<%= myNum %> was the number!
					<br>
					<form action="/GNG/GreatNumbers" method="POST">
						<input type="submit" class="btn btn-light" value="Play again!">
					</form>
					<br>
				</div>
			<%} %>
		<%} %>
		
	</div>
	
	<form action="/GNG/GreatNumbers" method="POST">
		<div class="col">
			<input type="text" name="number">
		</div>
		<br>
		<div class="col">
			<button type="submit" class="btn btn-info">Submit</button>
		</div>
	</form>
		
</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>