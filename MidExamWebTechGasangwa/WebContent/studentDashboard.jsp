<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="com.auca.domain.Users" %>

<%
HttpSession existingSession = request.getSession(false);
Users user = null;
if (session != null) {
    user = (Users) session.getAttribute("user");
}
if (user == null || !"student".equals(user.getRole())) {
    
    response.sendRedirect("Login.jsp");
    return;
}
%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AUCA | Student Dashboard</title>
    <link rel="shortcut icon" href="images/favicon.png"/>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image:  url('images/graudation.png'); 
            background-size: cover;
            background-position: center;
        }

        .sidebar {
            height: 100vh;
            width: 250px;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: #00447b;
            overflow-x: hidden;
            padding-top: 25px;
        }

        .sidebar a, .sidebar a.active {
            padding: 15px 15px;
            text-decoration: none;
            font-size: 18px;
            color: white;
            display: block;
        }

        .sidebar a:hover {
            background-color: #0056b3;
        }

        .main {
            margin-left: 250px;
            padding: 20px;
            color: blue;
            min-height: 100vh;
        }

        .home-content, .services {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .services-heading h2, .box font, .box a {
            margin-top: 50px;
        }

        .box {
            display: inline-block;
            margin: 10px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 5px;
        }

        .box img {
            width: 50px;
            height: auto;
        }

        .box a {
            display: inline-block;
            background-color: green;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s ease;
        }

        .box a:hover {
            background-color: #00447b;
        
    </style>
</head>
<body>

<div class="sidebar">
    <a href="LogoutServlet" class="active">LOGOUT</a>
</div>

<div class="main">
    <div class="home-content">
        <h3>WELCOME TO ADVENTIST UNVERSITY OF CENTRAL AFRICA</h3>
        <h1>Student Platform</h1>
        
    </div>

    <section class="services">
        <div class="services-heading">
            <h2><u>SERVICES</u></h2>
        </div>
        <div class="box-container">
            <div class="box">
                <img src="images/nikon.png"/>
                <font>Register As New Student</font>
                <a href="Student.jsp">Go</a>
            </div>
            <div class="box">
                <img src="images/nikon.png"/>
                <font>Student Registration</font>
                <a href="StudentRegistration.jsp">Go</a>
            </div>
        </div>
    </section>
</div>

</body>
</html>
