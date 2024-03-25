<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.auca.domain.Eacademicunit" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AUCA | AcademicUnit Management</title>
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="shortcut icon" href="images/favicon.png"/>
    <script src="assets/script.js"></script>
    <style>
        body, html {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            margin-left: 250px;
            padding: 20px;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            max-width: 600px;
        }
        label {
            color: green;
            font-weight: bold;
        }
        input[type=text], input[type=submit], select {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
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

<div class="container">
    <h2><u>Add New Academic Unit</u></h2>
    <form action="ManageAcademicUnit" method="post">
        <div class="form-group">
            <label for="code">Code</label>
            <input type="text" id="code" name="code" placeholder="Enter the Code" required>
        </div>
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" placeholder="Enter the name" required>
        </div>
        <div class="form-group">
            <label for="type">Academic Type</label>
            <select id="type" name="type" required>
                <c:forEach var="type" items="${Eacademicunit.values()}">
                    <option value="${type}">${type}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label for="parent">Parent Code</label>
            <input type="text" id="parent" name="parent" placeholder="Enter the parent code">
        </div>
        <input type="submit" value="Add">
    </form>
</div>

<footer>
    
</footer>
</body>
</html>