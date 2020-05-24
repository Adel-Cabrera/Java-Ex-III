<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Checkerboard</title>
		<link href="css/style.css" type="text/css" rel="stylesheet"/>		

<body class="center">
	
	<% String w = request.getParameter("width"); %>
	<% String h = request.getParameter("height"); %>
	<% Integer width = Integer.valueOf(w); %>
    <% Integer height = Integer.valueOf(h); %>
    
    
    <h1>Checkerboard: <%= width %>w X <%= height %>h </h1>
    
   	<% for(int i = 0; i < height; i++) {%>
   		<div class="outerDiv">
   		
   		 <% for(int j = 0; j< width; j++){%>
   		 	
   		 	<% String currentClass = "";%>
   		 	
   		 	<% if (j % 2 == 0 && i % 2 == 0 ) {%>
   		 		<% currentClass = "purple";%>
   		 	<%} else if (j % 2 == 0 && i % 2 != 0 ) { %>
   		 		<% currentClass = "blue";%>
   		 	<%} else if (j % 2 != 0 && i % 2 == 0 ) { %>
   		 		<% currentClass = "blue";%>
   		 	<%} else {%>
   		 		<% currentClass = "purple";%>
   		 		
   		 	<%} %>
   		 	<div class="<%= currentClass %> size innerDiv noEdge">
   		 		
   		 	</div>
   		 <% }%>
   		 
   		 </div>
    <%} %>
    
<!--     http://localhost:8080/Checkerboard/Draw.jsp?width=10&height=5 -->
    
	
	
</body>
</html>