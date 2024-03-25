<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add New Teacher</title>
    <link rel="shortcut icon" href="images/favicon.png"/>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('images/auca.png');
            background-size: cover;
            background-position: center;
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
            padding: 25px;
            background-color: rgba(255, 255, 255, 0.8);
            min-height: 100vh;
        }

        .form-container {
            max-width: 600px;
            margin: auto;
            padding: 70px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: blue;
        }

        input[type=text], select, input[type=submit] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #aaa;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            background-color: green;
            color: white;
            cursor: pointer;
            font-size: 16px;
        }

        input[type=submit]:hover {
            background-color: green;
        }
    </style>
</head>
<body>

<div class="sidebar">
    <a href="adminDashboard.jsp">DASHBOARD</a>
   
    <a href="LogoutServlet" class="active">LOGOUT</a>
</div>

<div class="main">
    <div class="form-container">
        <h2><u><b>Add New Teacher</b></u></h2>
        <form action="AddTeacherServlet" method="post">
            <div class="form-group">
                <label for="teacherCode"><i>Teacher Code:</i></label>
                <input type="text" id="teacherCode" name="code" required>
            </div>
            <div class="form-group">
                <label for="firstName"><i>First Name:</i></label>
                <input type="text" id="firstName" name="firstName" required>
            </div>
            <div class="form-group">
                <label for="lastName"><i>Last Name:</i></label>
                <input type="text" id="lastName" name="lastName" required>
            </div>
            <div class="form-group">
                <label for="qualification"><i>Qualification:</i></label>
                <select id="qualification" name="qualification">
                    <option value="BACHELOR">Bachelor</option>
                    <option value="MASTER">Masters</option>
                    <option value="PHD">PhD</option>
                </select>
            </div>
            <input type="submit" value="Add Teacher">
        </form>
    </div>
</div>

</body>
</html>
