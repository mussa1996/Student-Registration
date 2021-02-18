<%-- 
    Document   : CourseView
    Created on : Feb 10, 2021, 7:54:31 PM
    Author     : Mussa
--%>


<%@page import="student.model.CourseModel"%>
<%@page import="student.domain.Course"%>

<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>div{border: 2px solid black;width:500px;height: 250px;margin-left: 100px; padding:10px 60px 20px 30px;}</style>
        <style>h5{font-size: 15px;margin-left: 100px;}h1{font-size: 20px;text-align: center;}h3{border: 2px solid black;text-align: center;width:200px;margin-bottom: -30px;text-decoration:none;}h2{border: 1px solid black;width:90px;margin-left: auto; margin-top: -20px;}a{color: black;text-decoration:none;}</style>   
        <style>table {width:100%;border-collapse: collapse;}th,td {padding: 2px;border: 1px solid black; } th {height:2px; text-align: left;background-color: gray ;}</style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h5>Form3-View Details</h5>
        <div>
        <h1>Details of Selected courses</h1>
        <table border="1">
            <thead>

                <tr>
                    <th>Code</th>
                    <th>Name</th>
                    <th>Credits</th>
                    <th>Course fees</th>
                    
                </tr>
            </thead>
            <tbody>
                <%
                    CourseModel model = (CourseModel) session.getAttribute("registration");
                    if (model == null) {
                        model = new CourseModel();
                        session.setAttribute("registration", model);
                    }
                    List<Course> cou = model.getCourseList();
                    int i = 0;
                    for (Course cour : cou) {
                        i++;

                %>
                <tr>
                    <td><%=cour.getCode()%></td>
                    <td><%=cour.getName()%></td>
                    <td><%=cour.getCredits()%></td>
                    <td><%=cour.getPrice()%></td>
                   
                </tr>
                <%}%>
                <tr>
                        <td>total</td>
                        <td></td>
                        <td><%= model.totalCredits()%></td>
                        <td><%= model.totalFees()%></td>
                    </tr>
            </tbody>
        </table>
        <h3><a href="RegistrationSummary.jsp">Complete Registration</a></h3>
        <h2><a href="CourseList.jsp">Go Back</a></h2>
</div>
    </body>
</html>
