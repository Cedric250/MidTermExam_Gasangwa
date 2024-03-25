package com.auca.service;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.auca.controller.ResultDao;
import com.auca.domain.Course;

public class CourseResultServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ResultDao resultDao = new ResultDao();

 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long courseSemesterId = Long.parseLong(request.getParameter("courseSemesterId"));
        String selectedDepartment = request.getParameter("department"); 

       
        List<Course> courses = resultDao.getCoursesBySemesterAndDepartment(courseSemesterId, selectedDepartment);

        
        request.setAttribute("courses", courses);

        RequestDispatcher dispatcher = request.getRequestDispatcher("Result.jsp");
        dispatcher.forward(request, response);
    }

}
