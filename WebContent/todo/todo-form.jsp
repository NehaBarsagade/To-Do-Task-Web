<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset=ISO-8859-1">
<title>User form</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/style.css">


  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css"> 
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
	--red:#FF0000;
}


body {
	display: flex;
	flex-direction: column;
	min-height: 100vh;
	color: #FFF;
	background-color:var(--dark);
}
 h2{ 
	font-size: 2.5rem;
	font-weight: 300;
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

.input-field:focus {
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
	font-size: 2.0rem;
	font-weight: 900;
	background-image: linear-gradient(to right, var(--pink), var(--purple));
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	cursor: pointer;
	transition: 0.4s;
  
}
#alert {
	color: crimson;
	font-size: 1.20rem;
	
}
.btn:hover {
  opacity: 1;
}</style>
	
</head>
<body>
<header>
  <nav class="navbar navbar-expand-md navbar-dark"
   style="background-color: grey">
   
   <div>
    <class="navbar-brand"> Todo
     App</a>
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
 
   <div class="w3-container w3-half  "  style="margin: 100px 400px;">
		<div class="w3-container w3-card-4 " style="width: 500px; height: 500px;">
			<div class="container mt-3">
    <c:if test="${todo != null}">
     <form action="update" method="post">
    </c:if>
    <c:if test="${todo == null}">
     <form action="insert" method="post">
    </c:if>

    <caption>
     <h2>
      <c:if test="${todo != null}">
               Edit Todo
              </c:if>
      <c:if test="${todo == null}">
               Add New Todo
              </c:if>
     </h2>
    </caption>

    <c:if test="${todo != null}">
     <input type="hidden" name="id" value="<c:out value='${todo.id}' />" />
    </c:if>

    <fieldset class="form-group">
     <label>Todo Title</label> <input type="text"
      value="<c:out value='${todo.title}' />" class="form-control"
      name="title" required="required" minlength="5">
    </fieldset>

    <fieldset class="form-group">
     <label>Todo Decription</label> <input type="text"
      value="<c:out value='${todo.description}' />" class="form-control"
      name="description" minlength="5">
    </fieldset>

    <fieldset class="form-group">
     <label>Todo Status</label> <select class="form-control"
      name="isDone">
      <option value="false">In Progress</option>
      <option value="true">Complete</option>
     </select>
    </fieldset>

    <fieldset class="form-group">
     <label>Todo Target Date</label> <input type="date"
      value="<c:out value='${todo.targetDate}' />" class="form-control"
      name="targetDate" required="required">
    </fieldset>

    <button type="submit" class="btn btn-success">Save</button>
    </form>
   </div>
  </div>
 </div>


</body>
</html>