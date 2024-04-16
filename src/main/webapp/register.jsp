<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Register</title>
</head>
<body>
<div class="container">
 <h1>Register</h1>
 <form action="RegisterServlet" method="post">
  <label for="username">Username:</label>
  <input type="text" id="username" name="username" required>
  <label for="email">Email-Id:</label>
  <input type="email" id="email" name="email" required>
  <label for="password">Password:</label>
  <input type="password" id="password" name="password" required>
  <button type="submit">Register</button>
  <p><a href="index.html">Back to Home</a></p>
 </form>
</div>
</body>
</html>