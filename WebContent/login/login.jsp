<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta  charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css"> 
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
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
 h1{ 
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
 
  padding: 10px 15px;
  border: none;
 
  width: 100%;
  opacity: 0.9;
    color: var(--darker);
	font-size: 2.0rem;
	font-weight: 700;
	background-image: linear-gradient(to right, var(--pink), var(--purple));
	
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
<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="w3-container w3-half  "  style="margin: 100px 400px;">
		<div class="w3-container w3-card-4 " style="width: 500px; height: 400px;">
			<div class="container mt-3">
		<h1 align="center">Login Form</h1>
		<form action="<%=request.getContextPath()%>/login" method="post" style="align:center; margin-top:60px;">
                 
			<div class="form-group">
				<label for="uname">User Name:</label> <input type="text"
					class="form-control" id="username" placeholder="User Name"
					name="username" required>
			</div>

			<div class="form-group">
				<label for="uname">Password:</label> <input type="password"
					class="form-control" id="password" placeholder="Password"
					name="password" required>
			</div>

           <div class="form-check mb-3">
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
	
</body>
</html>