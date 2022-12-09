<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/style.css">
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
	font-size: 1.75rem;
	font-weight: 700;
	background-image: linear-gradient(to right, var(--pink), var(--gray));
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	cursor: pointer;
	transition: 0.4s;
  
}
#alert {
	color: green;
	font-size: 1.20rem;
	
}
.btn:hover {
  opacity: 1;
}</style>

</head>

<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<center>
       

            <h2 style="margin-top: 30px;">User Register Form</h2>
            <div class="col-md-6 col-md-offset-3" >
                <div id="alert" role="alert">
                    <p>${NOTIFICATION}</p>
                </div>

                <form action="<%=request.getContextPath()%>/register" method="post">
                  <div class="container" id="body" style="height: 750px;">
                  <div class="registerbox w3-container w3-card-4 w3-darkest-grey" style="width: 500px; height: 400px;">
                    <div class="form-group">
                      <label for="uname"> First Name:</label>
                      <input type="text" class="form-control" id="new-task-input" placeholder="First Name" name="firstName" required>
                    </div>

                    <div class="form-group">
                        <label for="uname">Last Name:</label>
                         <input type="text" class="form-control" id="new-task-input" placeholder="last Name" name="lastName" required>
                    </div>

                    <div class="form-group">
                        <label for="uname">User Name:</label> 
                        <input type="text" class="form-control" id="new-task-input" placeholder="User Name" name="username" required>
                    </div>

                    <div class="form-group">
                        <label for="uname">Password:</label> 
                        <input type="password" class="form-control" id="password" placeholder="Password" name="password" required>
                    </div>

                    <button type="submit" class="btn btn-primary">Submit</button>

                </form>
            </div>
        </div>
       </center> 
</body>
</html>