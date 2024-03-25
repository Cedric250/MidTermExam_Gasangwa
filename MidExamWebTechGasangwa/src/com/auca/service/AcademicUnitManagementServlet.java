package com.auca.service;

import com.auca.controller.AcademicUnitDao;
import com.auca.domain.AcademicUnit;
import com.auca.domain.Eacademicunit;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Optional;

@WebServlet("/ManageAcademicUnit")
public class AcademicUnitManagementServlet extends HttpServlet {

    private AcademicUnitDao academicUnitDao;

    @Override
    public void init() throws ServletException {
        super.init();
        this.academicUnitDao = new AcademicUnitDao(); 
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        displayAllAcademicUnits(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        handleAcademicUnitCreation(request, response);
    }

    private void displayAllAcademicUnits(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("allAcademicUnits", academicUnitDao.getAllAcademicUnits());
        request.getRequestDispatcher("AcademicUnit.jsp").forward(request, response);
    }

    private void handleAcademicUnitCreation(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            AcademicUnit newAcademicUnit = constructAcademicUnitFromRequest(request);
            academicUnitDao.saveAcademicUnit(newAcademicUnit);
            response.sendRedirect("ManageAcademicUnit");
        } catch (IllegalArgumentException e) {
            request.setAttribute("errorMessage", "Invalid input: " + e.getMessage());
            request.getRequestDispatcher("view/errorPage.jsp").forward(request, response);
        }
    }

    private AcademicUnit constructAcademicUnitFromRequest(HttpServletRequest request) {
        String code = request.getParameter("code");
        String name = request.getParameter("name");
        Eacademicunit type = Eacademicunit.valueOf(request.getParameter("type").toUpperCase());
        String parentCode = request.getParameter("parent");

        AcademicUnit parentUnit = academicUnitDao.getAcademicUnitByCode(parentCode);
        return new AcademicUnit(code, name, type, parentUnit);
    }
}