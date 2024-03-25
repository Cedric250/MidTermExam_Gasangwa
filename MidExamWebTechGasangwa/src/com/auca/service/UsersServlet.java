package com.auca.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.auca.controller.UsersDao;
import com.auca.domain.Users;

public class UsersServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private UsersDao usersDao = new UsersDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        doPost(req, res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        saveUser(req, res);
    }

    protected void saveUser(HttpServletRequest req, HttpServletResponse res) {
        try {
            
            Integer id = null;
            try {
                id = Integer.parseInt(req.getParameter("id"));
            } catch (NumberFormatException e) {
                
            }
            
            String email = req.getParameter("email");
            String password = req.getParameter("password");
            String role = req.getParameter("role");

            Users user = new Users();
            if(id != null) {
                user.setId(id); 
            }
            user.setEmail(email);
            user.setPassword(password);
            user.setRole(role);

            usersDao.saveUser(user); 

            req.getRequestDispatcher("Login.jsp").forward(req, res);

        } catch (Exception e) {
            e.printStackTrace();
            
        }
    }
}
