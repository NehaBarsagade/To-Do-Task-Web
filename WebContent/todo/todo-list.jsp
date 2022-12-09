<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management Application</title>

<link rel="stylesheet"
 href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
 crossorigin="anonymous">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css"> 
 <link rel="stylesheet" type="text/css" href="css/style.css">
 <style>
* {box-sizing: border-box;
    margin: 0;
	box-sizing: border-box;
	font-family: "Fira sans", sans-serif;}

/* Style the input container */
.input-container {
  display: flex;
  width: 100%;
  margin-bottom: 20px;
}
:root {
	--dark: #374151;
	--darker: #1F2937;
	--darkest: #111827;
	--grey: #6B7280;
	--pink: #EC4899;
	--purple: #8B5CF6;
	--light: #EEE;
	
}


body {
	display: flex;
	flex-direction: column;
	min-height: 100vh;
	color: #FFF;
	background-color:var(--dark);
}
 h2{ 
  padding: 10px;
	font-size: 2.5rem;
	font-weight: 500;
	color: var(--grey);
	margin-bottom: 1rem;
}
input, button {
	appearance: none;
	border: none;
	outline: none;
	background: none;
}
/* Style the form icons */
.icon {
  padding: 10px;
  background: dodgerblue;
  color: white;
  min-width: 50px;
  text-align: center;
}

/* Style the input fields */
.input-field {
  width: 100%;
  padding: 10px;
  outline: none;
}

.focus {
  border: 2px solid dodgerblue;
    flex: 1 1 0%;
	background-color: var(--darker);
	padding: 1rem;
	border-radius: 1rem;
	margin-right: 1rem;
	color: var(--light);
	font-size: 1.25rem;

}
#new-task-input::placeholder {
	color: var(--grey);
}

/* Set a style for the submit button */
.btn {
 
  padding: 15px 20px;
  border: none;
 
  width: 100%;
  opacity: 0.9;
  color: var(--pink);
	font-size: 1.75rem;
	font-weight: 700;
	background-image: linear-gradient(to right, var(--pink), var(--gray));
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	cursor: pointer;
	transition: 0.4s;
  
}
tr:hover {background-color: #383838;}

.edit {
	background-image: linear-gradient(to right, var(--pink), var(--purple));
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	font-size: 1.35rem;
	font-weight: 900;
}

.delete {
	color:crimson;
	font-size: 1.35rem;
	font-weight: 900;
}
th{
background-color:coral;
font-size:1.35rem;
font-weight: 500;
}
.btn:hover {
  opacity: 1;
}</style>
</head>

</head>
<body>
 <header>
  <nav class="navbar navbar-expand-md navbar-dark"
   style="background-color:grey">
   <div>
    <h2 class="navbar-brand"> Todo
     App</h2>
   </div>

   <ul class="navbar-nav">
    <li><a href="<%=request.getContextPath()%>/list"
     class="nav-link">Todos</a></li>
   </ul>

   <ul class="navbar-nav navbar-collapse justify-content-end">
    <li><a href="<%=request.getContextPath()%>/logout"
     class="nav-link">Logout</a></li>
   </ul>
  </nav>
 </header>
 <h2 class="text-center">List of Todos</h2>
<div class="w3-container" style="margin-top: 20px">

		<div class="w3-container w3-card-4  "
			style="width: 1200px; height: 500px; margin-left: 50px; margin-top: 0px;"
			method="get">
			<table class="table table-bordered">
 <div class="row">
  <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

  <div class="w3-container">
   
   <hr>
   <div class="container text-center">

    <a href="<%=request.getContextPath()%>/new"
     class="btn btn-success">Add Todo</a>
   </div>
   <br>
   <table class="table table-bordered">
    <thead>
     <tr >
      <th>Title</th>
      <th>Target Date</th>
      <th>Todo Status</th>
      <th>Actions</th>
     </tr>
    </thead>
    <tbody>
     <!--   for (Todo todo: todos) {  -->
     <c:forEach var="todo" items="${listTodo}">

      <tr class="focus">
       <td><c:out value="${todo.title}" /></td>
       <td><c:out value="${todo.targetDate}" /></td>
       <td><c:out value="${todo.status}" /></td>
      
    <td><a href="edit?id=<c:out value='${todo.id}' /> " class="edit">Edit</a>
        &nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="delete?id=<c:out value='${todo.id}' />" class="delete">Delete</a></td>
       
          
  <!--<td><button (click)="updateTodo(todo.id)" class="btn btn-success">Update</button>
                 <button (click)="deleteTodo(todo.id)" class="btn btn-warning">Delete</button></td>   -->      
      </tr>
     </c:forEach>
     <!-- } -->
    </tbody>

   </table>
  </div>
 </div>

 
</body>
</html>