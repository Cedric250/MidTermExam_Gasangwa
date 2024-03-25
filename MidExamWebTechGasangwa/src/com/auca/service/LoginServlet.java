package com.auca.service;

import com.auca.controller.UsersDao;
import com.auca.domain.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String LOGIN_JSP = "Login.jsp";
    private static final String ADMIN_DASHBOARD = "adminDashboard.jsp";
    private static final String TEACHER_DASHBOARD = "teacherDashboard.jsp";
    private static final String STUDENT_DASHBOARD = "studentDashboard.jsp";
    private static final String LOGIN_FAILURE = "loginFailure.jsp";

    private UsersDao usersDao;

    @Override
    public void init() throws ServletException {
        super.init();
        this.usersDao = new UsersDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Users user = usersDao.getUserByEmailAndPassword(email, password);

        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            session.setAttribute("role", user.getRole());
            session.setMaxInactiveInterval(30 * 60);	

            redirectToDashboardBasedOnUserRole(request, response, user.getRole());
        } else {
            request.setAttribute("error", "Invalid email or password.");
            request.getRequestDispatcher(LOGIN_JSP).forward(request, response);
        }
    }

    private void redirectToDashboardBasedOnUserRole(HttpServletRequest request, HttpServletResponse response, String role)
            throws IOException {
        switch (role) {
            case "admin":
                response.sendRedirect(ADMIN_DASHBOARD);
                break;
            case "teacher":
                response.sendRedirect(TEACHER_DASHBOARD);
                break;
            case "student":
                response.sendRedirect(STUDENT_DASHBOARD);
                break;
            default:
                response.sendRedirect(LOGIN_FAILURE);
                break;
        }
    }
}