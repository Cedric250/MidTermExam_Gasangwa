<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.auca.domain.Eregistration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AUCA | StudentRegistration</title>
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

        .sidebar a, .sidebar a.active {
            padding: 10px 15px;
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
            background-color: #aaa;
            min-height: 100vh;
             background-image: url('images/auca.png');	
        }

        form {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            background-color: #aaa;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #131E3A;
        }

        input[type=text], select, input[type=submit] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            background-color: #131E3A;
            color: white;
            cursor: pointer;
            font-size: 16px;
        }

        input[type=submit]:hover {
            background-color: #0056b3;
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
    <a href="studentDashboard.jsp">DASHBOARD</a>
 >
    <a href="Login.jsp" class="active">LOGOUT</a>
</div>

<div class="main">
    <form action="studentregistrationupdate" method="post">
        <h2><u>Update Student Registration</u></h2>
        <div class="form-group">
            <label for="code">Registration ID</label>
            <input type="text" id="code" name="code" placeholder="enter Registration ID">
        </div>
        <div class="form-group">
            <label for="status">Status</label>
            <select id="status" name="status">
                <c:forEach var="status" items="${Eregistration.values()}">
                    <option value="${status}">${status}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group submit-btn">
            <input type="submit" value="Update">
        </div>
    </form>

    <form action="studentregistrationdelete" method="post">
        <h2><u>Delete Student Registration</u></h2>
        <div class="form-group">
            <label for="code">Registration ID</label>
            <input type="text" id="code" name="code" placeholder="enter Registration ID">
        </div>
        <div class="form-group submit-btn">
            <input type="submit" value="Delete">
        </div>
    </form>
</div>

<footer>
    <p><i>Copyright (C) - 2024 </i></p>
</footer>

</body>
</html>