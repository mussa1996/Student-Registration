<%-- 
    Document   : CourseLists
    Created on : Feb 15, 2021, 2:10:25 PM
    Author     : Mussa
--%>


<%@page import="student.domain.Course"%>
<%@page import="student.model.CourseModel"%>
<%@page import="student.dao.GenericDao"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>div[class=container]{border: 2px solid black;width:900px;height: 500px;margin-left: 100px; padding:10px 60px 20px 30px;}h1{ border: 2px solid black;text-align:left;font-size: 20px;position: relative;bottom:350px;margin-left: 600px;margin-right:100px;padding-top: 20px;text-decoration:none;}</style>
         <style>h2{font-size: 15px;margin-left: 100px;}h4{border: 2px solid black;text-align:left;font-size: 20px;position: relative;bottom:350px;margin-left: 600px;margin-right: 50px;padding-bottom: 20px;text-decoration:none; }h5{font-size: 20px;margin-left:50px;}a{color: black;}</style>
         <style>table[class=choose-course-table] {width:50%;border-collapse: collapse;}th,td {padding: 6px;border: 1px solid black; } th {height:2px; text-align: left;background-color: gray ;}div[class=test]{text-align:right;font-size: 20px;position: relative;bottom:400px;margin-right: 100px;margin-left: 100px;}</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>choose course</title>
    </head>
    <body>
        <h2>Page2-Choose Course</h2>
        <div class="container">
                <h5>select courses you want to learn</h5>
                <table border="1" class="choose-course-table">
                    <thead>
                        <tr>
                            <th>Code</th>
                            <th>Name</th>
                            <th>Credits</th>
                            <th>Course Fee</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            CourseModel mode = (CourseModel) request.getSession().getAttribute("registration");
                            GenericDao dao = new GenericDao(Course.class);
                            List<Course> courseList = dao.findAll();
                            RequestDispatcher dispatcher = request.getRequestDispatcher("CourseList.jsp");
                            if (mode == null) {
                               mode = new CourseModel();
                                request.getSession().setAttribute("registration", mode);
                            }
                            for (Course course : courseList) {


                        %>
                        <tr>
                            <td><%=course.getCode()%></td>
                            <td><%=course.getName()%></td>
                            <td><%=course.getCredits()%></td>
                            <td><%=course.getPrice()%></td>
                            <td>
                                <%
                                    if(mode.isExist(course.getCode())){ 
                                %>
                                <a href="RemoveCourse.jsp?code=<%=course.getCode()%>">Remove</a>
                                <%
                                    }else
                                    {
                                %>
                                <a href="AddCourse.jsp?code=<%=course.getCode()%>">Add</a>
                                    <% 
                                  }
                                %>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
                    <div class="test">
                    Your Current Selection
                    </div>
                    <div class="test">
                         
                     Number of Courses:      ${registration.totalCourses()}
                     </div>
                    <div class="test">
                         
                     Total Credits:           ${registration.totalCredits()}
                     </div>
                    <div class="test">
                         
                     Total Fee:               ${registration.totalFees()}
                     
                    </div>
                    <h1><a href="ViewDetails.jsp">View Details</a></h1>
                    <h4><a href="RegistrationSummary.jsp">Complete Registration</a></h4>
                  
            </div>
        
    </body>
</html>
