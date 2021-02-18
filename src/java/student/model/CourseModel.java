/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student.model;


import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import student.domain.Course;

/**
 *
 * @author Mussa
 */
public class CourseModel {
    
    private List<Course> courseList=new ArrayList<>();
    public void addCourse(Course cou){
        courseList.add(cou);
    }
    public void removeCourse(Course cou){
        courseList.remove(cou);
    }
    public Integer totalCourses(){
        return courseList.size();
    }
    public Integer totalCredits(){
        int total=0;
        for (Course course : courseList) {
            total=total+course.getCredits();
        }
        return total;
    }
    public String totalFees(){
        double total=0;
        for (Course course : courseList) {
            total=total+course.getPrice();
        }
        DecimalFormat df=new DecimalFormat("###,### FRW");
        return df.format(total);
    }
    public boolean isExist(String code){
        boolean isexist=false;
        for (Course course : courseList) {
            if(course.getCode().equals(code))
                isexist=true;
        }
        return isexist;
    }

    public List<Course> getCourseList() {
        return courseList;
    }

    public void setCourseList(List<Course> courseList) {
        this.courseList = courseList;
    }
    
}
