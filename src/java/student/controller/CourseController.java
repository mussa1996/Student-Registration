/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import student.dao.GenericDao;
import student.domain.Registration;
import student.domain.Student;
import student.model.CourseModel;

/**
 *
 * @author mussa
 */
@WebServlet("/")
public class CourseController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String path = request.getServletPath();
        switch (path) {
            
            case "/student":
                student(request, response);
                break;
            
            case "/register":
                register(request, response);
                break;
            
            default:
                response.sendRedirect("CourseList.jsp");

        }
    }

    public void student(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String id = request.getParameter("id");
        String names = request.getParameter("names");
        String gend = request.getParameter("gender");
        String dob = request.getParameter("dob");
        LocalDate date=LocalDate.parse(dob);
        Student stud = new Student(id, names, gend, date);
           request.getSession().setAttribute("student", stud);
        response.sendRedirect("CourseList.jsp");
        
        
         
    }
    public void register(HttpServletRequest request, HttpServletResponse response) {
        try {
            CourseModel model=(CourseModel) request.getSession().getAttribute("registration");
            if(model==null){
                model=new CourseModel();
                request.getSession().setAttribute("registration", model);
            }
            Student student=(Student) request.getSession().getAttribute("student");
            Registration register=new Registration();
            register.setStudId(student.getId());
            register.setStudnames(student.getNames());
            register.setStudgender(student.getGender());
            register.setStudob(student.getDob());
            register.setTotal_courses(model.totalCourses());
            register.setTotal_credits(model.totalCredits());
            register.setTotal_fees(model.totalFees());
            GenericDao dao=new GenericDao(Registration.class);
            dao.create(register);
            response.sendRedirect("Confirmation.jsp");
        } catch (IOException ex) {
            Logger.getLogger(CourseController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    

   

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
