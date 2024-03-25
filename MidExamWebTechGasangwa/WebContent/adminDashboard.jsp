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
if (user == null || !"admin".equals(user.getRole())) {
    
    response.sendRedirect("Login.jsp");
    return;
}
%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AUCA | Dash</title>
<link rel="shortcut icon" href="images/favicon.png"/>
<script src="asserts/script.js"></script>
<style>
    body, html {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        
        background-color: white;
         background-image: url('images/auca.png');
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
        margin-left: 150px;
        padding: 70px;
        background-image: url('images/graudation.png');
        background-size: cover;
        background-position: center;
        min-height: 100vh;
        color: white;
    }

    .services {
        padding: 20px;
        background-color: #f4f4f4;
        color: #131E3A;
    }

    .services .box {
        text-align: center;
        padding: 15px;
        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        background: #aaa;
        margin: 20px;
        border-radius: 15px;
    }

    .services img {
        margin-top: 5px;
        width:40px;
        background-image: url('images/graudation.png');
    }

    .services a {
        display: inline-block;
        margin: 20px 0;
        background-color: green;
        color: white;
        padding: 10px 15px;
        text-decoration: none;
        border-radius: 5px;
        transition: background 0.3s ease;
    }

    .services a:hover {
        background-color: green;
    }


</style>
</head>
<body>

<div class="sidebar">
    
    <a href="ListStudentsServlet">STUDENTS MANAGEMENT</a>
    <a href="LogoutServlet" class="active">LOGOUT</a>
</div>

<div class="main">
    <section style="padding-top: 100px;">
        <h3><center>ADVENTIST UNIVERSITY OF CENTRAL AFRICA</center></h3>
        <h1>Administration Platform</h1>
    </section>

    <section class="services">
        <div class="services-heading">
            <h2><b>SERVICES</b></h2>
        </div>
        <div class="box-container">
            <div class="box">
                <img src="images/nikon.png">
                <font>Add New TEACHER</font>
                <a href="teacher.jsp">Go</a>
            </div>
            
            <div class="box">
                <img src="images/nikon.png">
                <font>Add New COURSES DEFINITION</font>
                
                
                <a href="CourseDefinition.jsp">Go</a>
            </div>
            
            <div class="box">
                <img src="images/nikon.png">
                <font>Add New AcademicUnit</font>
                
                <!--btn--------->
                <a href="AcademicUnit.jsp">Go</a>
            </div>
            <!--box-4-------->
            <div class="box">
                <img src="images/nikon.png">
                <font>Add New SEMESTER</font>
                
                <!--btn--------->
                <a href="Semester.jsp">Go</a>
            </div>
            
            
            
            <div class="box">
                <img src="images/nikon.png">
                <font>Add New Course</font>
                
                
                <a href="Course.jsp">Go</a>
            </div>
            
            <div class="box">
                <img src="images/nikon.png">
                <font>Add New Student Course</font>
                
                
                <a href="StudentCourse.jsp">Go</a>
            </div>
            
            <div class="box">
                <img src="images/nikon.png">
                <font>Edit Student Registration</font>
                
              
                <a href="StudentRegistrationAdmin.jsp">Go</a>
            </div>
        </div>
            
            
        </div>
    </section>
</div>


</body>
</html>
