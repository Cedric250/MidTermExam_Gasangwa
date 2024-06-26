<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AUCA | CourseDefinition</title>
<link rel="shortcut icon" href="images/favicon.png"/>
<style>
    body, html {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f4f4f4;
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
        padding-top: 70px;
    }

    .sidebar a {
        padding: 20px 20px;
        text-decoration: none;
        font-size: 18px;
        color: white;
        display: block;
    }

    .sidebar a:hover, .sidebar a.active {
        background-color: #0056b3
    }

    .main {
        margin-left: 250px;
        padding: 20px;
        background-color: #aaa;
        min-height: 100vh;
         background-image: url('images/auca.png');
    }

    form {
        background-color: #aaa;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        max-width: 350px;
        margin: auto;
    }

    label {
        display: block;
        margin-bottom: 25px;
        color: blue;
    }

    input[type=text], input[type=submit] {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type=submit] {
        background-color: green;
        color: white;
        cursor: pointer;
    }

    input[type=submit]:hover {
        background-color: green;
    }

    footer {
        text-align: center;
        padding: 25px;
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
    <a href="adminDashboard.jsp">BACK</a>
    
    <a href="LogoutServlet" class="active">LOGOUT</a>
</div>

<div class="main">
    <h2><u>Add New Course</u></h2>
    <form action="coursedefinition" method="post">
        <div class="form-group">
            <label for="code">Course Code</label>
            <input type="text" id="code" placeholder="Enter Course Code" name="code">
        </div>
        <div class="form-group">
            <label for="name">Course Name</label>
            <input type="text" id="name" placeholder="Enter Course Name" name="name">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <input type="text" id="description" placeholder="Enter Description" name="description">
        </div>            
        <div class="form-group submit-btn">
            <input type="submit" value="Add">
        </div>
    </form>
</div>

<footer>
    <p><i>Copyright (C) - 2024</i></p>
</footer>

</body>
</html>
