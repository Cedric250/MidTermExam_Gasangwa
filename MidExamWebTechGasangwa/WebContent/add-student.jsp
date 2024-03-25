<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<html>
<head>
    <title>Add Student</title>
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

        .main-content {
            margin-left: 250px;
            padding: 20px;
            background-color: #fff;
            min-height: 100vh;
        }

        h2 {
            color: #131E3A;
        }

        .form-group {
            margin: 20px 0;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #blue;
        }

        input[type=text], input[type=date], input[type=submit] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            background-color: #131E3A;
            color: white;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #0d1a26;
        }
    </style>
</head>
<body>
<div class="sidebar">
    <a href="adminDashboard.jsp">Dashboard</a>
    <a href="Report.jsp">REPORT</a>
    <a href="Result.jsp">RESULT</a>
    <a href="LogoutServlet" class="active">LOGOUT</a>
</div>

<div class="main-content">
    <h2><u>Add New Student</u></h2>
    <form action="AddStudentServlet" method="post" style="max-width: 500px; margin: auto;">
        <div class="form-group">
            <label for="regno">Reg No:</label>
            <input type="text" id="regno" name="regno" required>
        </div>
        <div class="form-group">
            <label for="fullname">Full Name:</label>
            <input type="text" id="fullname" name="fullname" required>
        </div>
        <div class="form-group">
            <label for="dateofbirth">Date of Birth:</label>
            <input type="date" id="dateofbirth" name="dateofbirth" required>
        </div>
        <div class="form-group">
            <input type="submit" value="Submit" class="main-login">
        </div>
    </form>
</div>
</body>
</html>
