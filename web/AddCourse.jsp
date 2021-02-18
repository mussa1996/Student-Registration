

<%@page import="student.model.CourseModel"%>
<%@page import="student.domain.Course"%>
<%@page import="student.dao.GenericDao"%>
<%
    String code=request.getParameter("code");
    GenericDao dao=new GenericDao(Course.class);
CourseModel model=(CourseModel)session.getAttribute("registration");
 Course cour=(Course)dao.findById(code);
if(model==null){
    model=new CourseModel();
    session.setAttribute("registration", model);
}
model.addCourse(cour);
%>
<jsp:forward page="CourseList.jsp"/>