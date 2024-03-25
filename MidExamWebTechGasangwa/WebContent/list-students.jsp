<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.auca.domain.Student" %>
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
    <title>List of Students</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <style>
        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('${pageContext.request.contextPath}/images/EAQQL.jpg');
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
            padding-top: 70px;
        }

        .sidebar a {
            padding: 15px 15px;
            text-decoration: none;
            font-size: 18px;
            color: white;
            display: block;
        }

        .sidebar a:hover, .sidebar a.active {
            background-color: #0056b3;
        }

        .main {
            margin-left: 250px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            min-height: 100vh;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
        }

        .table th, .table td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        .table th {
            background-color: green;
            color: white;
        }

        a.main-login {
            background-color: #00447b;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 5px;
            display: inline-block;
        }

        a.main-login:hover {
            background-color: green;
        }
    </style>
</head>
<body>

<div class="sidebar">
    <a href="adminDashboard.jsp">BACK</a>
    
    <a href="LogoutServlet" class="active">LOGOUT</a>
</div>

<div class="main">
    <section style="padding-top: 20px;">
        <h2>Students List</h2>
        <table class="table">
            <thead>
                <tr>
                    <th>Reg No</th>
                    <th>Full Name</th>
                    <th>Date of Birth</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
            <%
                List<Student> students = (List<Student>) request.getAttribute("studentList");
                for (Student student : students) {
            %>
                <tr>
                    <td><%= student.getRegno() %></td>
                    <td><%= student.getFullname() %></td>
                    <td><%= student.getDateofbirth() %></td>
                    <td>
                        <a href="update-student.jsp?regno=<%= student.getRegno() %>">Edit</a>
                        |
                        <a href="DeleteStudentServlet?regno=<%= student.getRegno() %>" onclick="return confirm('Are you sure?')">Delete</a>
                    </td>
                </tr>
            <% } %>
            </tbody>
        </table>
        <a href="add-student.jsp" class="main-login">Add New Student</a>
    </section>
</div>

</body>
</html>
