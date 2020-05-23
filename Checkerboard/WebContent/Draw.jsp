<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Checkerboard</title>
		<style>
			.blue{background-color: blue;}
			.purple{background-color: purple;}
			.size{width: 50px; height: 50px;}
			.outerDiv{display: table; margin-left:auto;margin-right:auto;}
			.innerDiv{display: table-cell;}
			.noEdge{margin: 0!important; padding: 0!important;}
			.center{text-align: center;}
			body{text-align: center;}
			
						
		</style>
	</head>
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
   		 		<% currentClass = "blue";%>
   		 	<%} else if (j % 2 == 0 && i % 2 != 0 ) { %>
   		 		<% currentClass = "purple";%>
   		 	<%} else if (j % 2 != 0 && i % 2 == 0 ) { %>
   		 		<% currentClass = "purple";%>
   		 	<%} else {%>
   		 		<% currentClass = "blue";%>
   		 		
   		 	<%} %>
   		 	<div class="<%= currentClass %> size innerDiv noEdge">
   		 		
   		 	</div>
   		 <% }%>
   		 
   		 </div>
    <%} %>
    
<!--     http://localhost:8080/Checkerboard/Draw.jsp?width=10&height=5 -->
    
<%--     <h1><%= width %></h1> --%>
<%-- 	<h1><%= height %></h1> --%>
	
	
</body>
</html>