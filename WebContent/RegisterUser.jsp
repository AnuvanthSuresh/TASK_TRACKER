<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New User</title>
</head>
<body>
<form action="RegisterUserServlet" method="post">

Username : <input type="text" name="newusername"><br>
Password : <input type="text" name="newpassword"><br>
<br>
<input type="submit" value="REGISTER"><br>
<input type="reset" value="RESET"><br>

</form>
</body>
</html>