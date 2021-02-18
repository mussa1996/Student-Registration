<%-- 
    Document   : Confirmation
    Created on : Feb 15, 2021, 10:22:35 PM
    Author     : Mussa
--%>

<%@page import="student.model.CourseModel"%>
<%@page import="student.domain.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>confirmation</title>
    </head>
    <body>
        
        <%
            CourseModel model = (CourseModel) request.getSession().getAttribute("registration");
            if (model == null) {
                model = new CourseModel();
                request.getSession().setAttribute("registration", model);
            }
            Student student = (Student) request.getSession().getAttribute("student");

        %>
        <h1 style="margin-left: 60px;font-size:15px; ">Form5-Confirmation Page</h1>
        <div style="border: 1px solid black;width: 400px;margin-left:50px; padding: 40px;">
            <h3 style="text-align: center;">Registration feedback</h3>
        <p>Dear <%=(student.getGender().equals("MALE"))?"Mr. ":"Ms."%> <%=student.getNames()%> , thank you for registering</p>
        <p>you requested to pay  <%=model.totalFees()%></p>
        </div>
    </body>
</html>