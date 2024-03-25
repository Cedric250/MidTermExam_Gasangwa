<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="com.auca.domain.Users" %>

<%
HttpSession existingSession = request.getSession(false);
Users user = null;
if (session != null) {
    user = (Users) session.getAttribute("user");
}
if (user == null || !"teacher".equals(user.getRole())) {
   
    response.sendRedirect("Login.jsp");
    return;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AUCA | Teacher Dashboard</title>
 
    <style>
        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('images/lecture.png');
            background-size: cover;
            background-position: center;
        }

        .sidebar {
    width: 100%;
    height: 70px; /* Adjust height as needed */
    position: fixed;
    z-index: 1;
    top: 0;
    background-color: #00447b;
    overflow-x: hidden;
    padding-top: 10px; /* Adjust padding as needed */
}

.sidebar a, .sidebar a.active {
    padding: 10px 15px;
    text-decoration: none;
    font-size: 18px;
    color: white;
    display: inline-block; /* Display links horizontally */
}


        .main {
            margin-left: 250px;
            padding: 20px;
            color: white;
            min-height: 100vh;
        }

        .home-content {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .home-text h3, .home-text h1 {
            margin: 10px 0;
        }

        .home-img img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>

<div class="sidebar">
    <a href="teacherDashboard.jsp">DASHBOARD</a>
    <a href="Research.jsp">RESEARCH</a>
    <a href="MediaCenter.jsp">MEDIA CENTER</a>
    <a href="LogoutServlet" class="active">LOGOUT</a>
</div>

<div class="main">
    <div class="home-content">
        <h3>WELCOME TO THE TEACHER DASHBOARD</h3>
        
        
       
    </div>
</div>

</body>
</html>
