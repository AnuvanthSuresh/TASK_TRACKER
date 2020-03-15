<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New User</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: #3b5998;
}

.button {
	background-color: white;
	color: #3b5998;
	padding: 6px 10px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
}

* {
	box-sizing: border-box;
}

/* Add padding to containers */
.container {
	padding: 16px;
	background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

/* Overwrite default styles of hr */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
	background-color: #4CAF50;
	color: blue;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.registerbtn:hover {
	opacity: 1;
}

a:link, a:visited {
	background-color: white;
	color: #3b5998;
	padding: 6px 10px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
}

a:hover, a:active {
	background-color: white;
}

.button {
	background-color: #3b5998;
	color: white;
	padding: 6px 10px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
}

</style>
<script type="text/javascript">
    function validateForm() {
        var pass1 = document.getElementById("newpasswordreal").value;
        document.getElementById("newpasswordreal").focus();
        var pass2 = document.getElementById("newpassword-repeatreal").value;
        document.getElementById("newpassword-repeatreal").focus();
        if (pass1 != pass2) {
            alert("Passwords Do not match");
            return false;
        }
        else {
             true;   
        }
    }
</script>
</head>
<body>
	<div style="color: white;">
		<h1>Register</h1>
		<p>Please fill in this form to create an account.</p>
	</div>
	<div class="container">
		<form id="regForm" onsubmit="return validateForm()" method="post"
			action="RegisterUserServlet">


			<label for="newusername"><b>UserName</b></label> <input type="text"
				placeholder="Username" name="newusername" id="newusername"
				autocomplete="off" required> <label for="newpassword"><b>Password</b></label>
			<input type="password" placeholder="Enter Password"
				name="newpassword" id="newpasswordreal" required> <label
				for="newpassword-repeat"><b>Repeat Password</b></label> <input
				type="password" placeholder="Repeat Password"
				name="newpassword-repeat" id="newpassword-repeatreal" required>
			<hr>
			<p>Vanakam da Mapla test project la irundhu</p>
			<div align="right">
				<button type="submit" class="button">Register</button>
			</div>
			<br>

			<div class="container signin">
				<p>
					Already have an account? <a href="Index.jsp">Sign in</a>.
				</p>
			</div>

		</form>
	</div>
</body>
</html>