<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AUCA | Login</title>
<link rel="shortcut icon" href="images/EAQQL.png"/>
<style>
    body, html {
        margin: 50;
        padding: 50;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-image: url('images/auca.png');
    }

    .sidebar {
        height: 200vh;
        width: 200px;
        position: fixed;
        z-index: 1;
        top: 0;
        left: 0;
        background-color: #00447b;
        overflow-x: hidden;
        padding-top: 70px;
    }

    .sidebar a, .sidebar a.active {
        padding: 20px 20px;
        text-decoration: none;
        font-size: 18px;
        color: white;
        display: block;
    }

    .sidebar a:hover {
        background-color: #131E3A;
    }

    .main {
        margin-left: 150px;
        padding: 20px;
        background-color: #aaa;
       
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .form-container {
    
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        width: 70%;
        max-width: 350px;
    }

    .form-group {
        margin-bottom: 15px;
    }

    label {
        display: block;
        margin-bottom: 10px;
        color: green;
    }

    input[type=email], input[type=password], input[type=submit] {
        width: 100%;
        padding: 20px;
        margin: 5px 0 20px 0;
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

    .info {
        display: block;
        text-align: center;
        margin-top: 50px;
        
    }

    footer {
        text-align: center;
        padding: 10px;
        background-color: #00447b;
        color: white;
        position: fixed;
        bottom: 0;
        left: 200px;
        width: calc(100% - 250px);
    }
</style>
</head>
<body>
<div class="sidebar">
    <a href="index.jsp">HOME</a>
    <a class="active" onclick="document.getElementById('id01').style.display='block'">LOGIN</a>
</div>

<div class="main">
    <form action="LoginServlet" method="post" class="form-container">
        <h2>Login</h2>
        <div class="form-group email">
            <label for="email">Email</label>
            <input type="email" id="email" placeholder="Enter your email" name="email">
        </div>
        <div class="form-group password">
            <label for="password">Password</label>
            <input type="password" id="password" placeholder="Enter your password" name="password">
        </div>
        <div>
            <a href="#" class="info" style="color: blue;">Forgot your Password</a>
        </div>
        <div class="form-group submit-btn">
            <input type="submit" value="Login">
        </div>
        <div>
            <a href="Signup.jsp" class="info" style="color: blue;">Don't Have An Account??</a>
        </div>
        <% if (request.getAttribute("error") != null) { %>
            <p class="info" style="color: red;"><%= request.getAttribute("error").toString() %></p>
        <% } %>
    </form>
</div>

<footer>
    <p><i>Copyright (C) - 2024</i> </p>
</footer>

</body>
</html>
