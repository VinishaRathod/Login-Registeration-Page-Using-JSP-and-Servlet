<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<link rel="stylesheet" type="text/css" href="index.css">
</head>
<body>
<%
        // Retrieve the session object
        HttpSession session1 = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (session != null && session1.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) session1.getAttribute("username");
    %>
<div class="container">
  <h1>Welcome, <%= username %>!</h1>
  <p>We are delighted to have you on our platform.</p>
  <p>Explore, learn and Connect with our vibrant community!</p>
  <p>Feel Free to stay as long as you like, and when you're  ready you can <a href="logoutServlet">Logout </a>securely</p>
  </div>
  
  <%
        }else{
        	response.sendRedirect("login.jsp");
        }
  %>
</body>
</html>