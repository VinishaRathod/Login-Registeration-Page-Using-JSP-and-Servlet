<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Login</title>
</head>
<body>
	<div class="container">
		<h1>Login</h1>
		<form action="LoginServlet" method="post">
			<label for="username">Username:</label> <input type="text"
				id="username" name="username" required> <label
				for="password">Password:</label> <input type="password"
				id="password" name="password" required>
			<button type="submit">Login</button>
			<p>
				<a href="index.jsp">Back to Home</a>
			</p>
		</form>
		<%--Display error message if login fails --%>
		<%
		String error = request.getParameter("error");
		if (error != null && error.equals("1")) {
		%><p style="color: red;">Invalid username or password.Please try
			again</p>
		<%
		}
		%>

		<%--Display Error message if Registeration is successful --%>
		<%
		String rs = request.getParameter("registration");
		if (rs != null && rs.equals("success")) {
		%>
		<p style="color: white;">Your Registeration is successful. Please
			Login</p>
		<%
		}
		%>
	</div>
</body>
</html>