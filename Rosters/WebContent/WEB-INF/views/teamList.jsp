<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.darkonnen.web.models.Team" %>
 <%@ page import="com.darkonnen.web.models.Player" %>
    
<%@ page import="com.darkonnen.web.models.*" %>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Team</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/style.css" type="text/css" rel="stylesheet" />		
		
	</head>
<body>

	<div class="container py-5">
		<div class="row d-flex justify-content-between">
			<% Team team = Team.getTeams().get(Integer.parseInt(request.getParameter("id"))); %>
			<h1><%=team.getTeamName() %></h1>
			<a href="/Rosters/Players?id=<%=request.getParameter("id")%>">New Player</a>  
		</div>
	</div>
	<div class="container py-5">
		<table class="table table-dark">
		  <thead>
			  <tr>
			    <th scope="col">First Name</th>
   			    <th scope="col">Last Name</th>			    
			    <th scope="col">Age</th>
			    <th scope="col">Action</th>
			  </tr>
		  </thead>
		  <tbody>

		  	<%for(int i = 0; i < team.getPlayers().size();i++){ %>
			  <tr>
				<td><%= team.getPlayers().get(i).getFirstName() %></td>
				<td><%= team.getPlayers().get(i).getLastName() %></td>
				<td><%= team.getPlayers().get(i).getAge() %></td>				
				<td><a href="/Rosters/Players?team_id=<%=request.getParameter("id")%>&player_id=<%=i%>&delete=true">Delete</a></td>
			  </tr>
			<%} %>
		  </tbody>
		  
		</table>
		
	</div>
	
	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>