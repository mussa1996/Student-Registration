/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import student.dao.GenericDao;
import student.domain.Course;

/**
 *
 * @author Mussa
 */
public class MainClass {
    public static void main(String[] args) {
        GenericDao dao = new GenericDao(Course.class);
        Course course = new Course("C01", "advanced software modeling ", 3, 45000.0);
        Course course1 = new Course("C02", "web technology ", 4, 60000.0);
        Course course2 = new Course("C03", "data structure", 5, 75000.0);
        Course course3 = new Course("C04", "Software testing", 3, 45000.0);
        Course course4 = new Course("C05", "introduction to bible", 2, 30000.0);
        Course course5 = new Course("C06", "introduction to accounting",3,45000.0);
        Course course6 = new Course("C07", "mobile computing", 4, 60000.0);
        Course course7 = new Course("C08", "digital computer and fundamentals", 4, 60000.0);
        
      dao.create(course);
      dao.create(course1);
       dao.create(course2);
       dao.create(course3);
       dao.create(course4);
       dao.create(course5);
       dao.create(course6);
      dao.create(course7);
      
    }
}
