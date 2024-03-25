<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="com.auca.domain.Users" %>
<%
HttpSession existingSession = request.getSession(false);
    Users user = null;
    if (session != null) {
        user = (Users) session.getAttribute("user");
    }
    if (user == null || ! "admin".equals(user.getRole())) {
       
        response.sendRedirect("Login.jsp");
        return;
    }
%>
  
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><u>STUDENT MANAGEMENT DASHBOARD</u></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"> 
</head>
<body>
    <div class="main"> 
        <nav>
            
        </nav>
        <section class="section main" style="padding-top: 100px;"> 
            <h1><b>Student Management Dashboard</b></h1>
            <div class="dashboard-links">
                <a href="add-student.jsp" class="dashboard-link">Add New Student</a>
                <a href="ListStudentsServlet" class="dashboard-link">View / Edit / Delete Students</a>
            </div>
        </section>
    </div>
</body>
</html>
