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
    <meta charset="UTF-8">
    <title>AUCA | Research</title>
    <link rel="shortcut icon" href="images/favicon.png"/>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
        }

         .sidebar {
    width: 100%;
    height: 70px; 
    position: fixed;
    z-index: 1;
    top: 0;
    background-color: #00447b;
    overflow-x: hidden;
    padding-top: 10px; 
}

.sidebar a, .sidebar a.active {
    padding: 10px 15px;
    text-decoration: none;
    font-size: 18px;
    color: white;
    display: inline-block; 
}


        .main {
            margin-left: 250px;
            padding: 20px;
            background-image: url('images/auca.png');
            background-size: cover;
            background-position: center;
            min-height: 100vh;
            color: white;
        }

        .home-content {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            text-align: center;
        }

        .home-text h3, .home-text h1 {
            letter-spacing: 2px;
        }

        .home-img {
            width: 500px;
        }

        footer {
            text-align: center;
            padding: 20px;
            background-color: #00447b;
            color: white;
            position: fixed;
            bottom: 0;
            left: 250px;
            width: calc(100% - 250px);
        }
    </style>
</head>
<body>

<div class="sidebar">
    <a href="teacherDashboard.jsp">Dashboard</a>
    <a href="Research.jsp" class="active">Research</a>
    <a href="MediaCenter.jsp">Media Center</a>
    <a href="LogoutServlet">Logout</a>
</div>

<div class="main">
    <div class="home-content">
        <h3><B> RESEARCH CENTER</B></h3>
        <h1>check your research here</h1>
        <div class="home-img">
            <img src="images/dash.png" width="500"/>
        </div>
    </div>
</div>

<footer>
    <p><i>Copyright (C) - 2024 </i></p>
</footer>

</body>
</html>
