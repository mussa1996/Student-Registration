<%-- 
    Document   : Registration
    Created on : Feb 15, 2021, 3:42:14 PM
    Author     : Mussa
--%>


<%@page import="student.domain.Student"%>
<%@page import="java.util.List"%>
<%@page import="student.model.CourseModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>div{border: 2px solid black;width:350px;height: 500px;margin-left: 100px; padding:10px 60px 20px 30px;}div[class=space]{line-height:2em;}</style>
        <style>h1{font-size: 15px;margin-left: 100px;}h2{border:2px solid black;color: black;margin-left: -60px;margin-top:50px;font-size: 20px;text-align: center;}a{color: black;text-decoration:none;}</style>
        
        <style>table{}th,td{font-size: 20px;}</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Summary</title>
    </head>
    <body>

        <h1>Form4-Registration Summary</h1>
        <div class="space">
            <h3>Student Registration Form</h3>
        <table border="0">
            
            <tbody >
                <%
                    CourseModel model = ( CourseModel) session.getAttribute("registration");
                    if (model == null) {
                        model = new  CourseModel();
                        session.setAttribute("registration", model);
                    }

                    Student student = (Student) session.getAttribute("student");
                    session.setAttribute("student", student);
                %>
                <tr>
                    <td>Student id:</td>
                    <td><%=student.getId()%></td>
                </tr>
                <tr>
                    <td>names:</td>
                    <td><%=student.getNames()%></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td><%=student.getGender()%></td>
                </tr>
                <tr>
                    <td>Date of birth:</td>
                    <td><%=student.getDob()%></td>
                </tr>
                <tr>
                    <td>number of courses:</td>
                    <td>${registration.totalCourses()}</td>
                </tr>
                <tr>
                    <td>Total Credits:</td>
                    <td>${registration.totalCredits()}</td>
                </tr>
                <tr>
                    <td>Total school fees:</td>
                    <td>${registration.totalFees()}</td>
                </tr>
                <tr>
                    <td></td>
                    <td><h2><a href="register">Register Now</a></h2></td>
                </tr>
            </tbody>
        </table>
        </div>

    </body>
</html>

