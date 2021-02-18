/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student.domain;

import java.time.LocalDate;
import java.util.Date;

/**
 *
 * @author mussa
 */

public class Student {
    
    private String id;
    private String names;
    private String gender;
    private LocalDate dob;
 public Student() {
    }

    public Student(String id, String names, String gender, LocalDate dob) {
        this.id = id;
        this.names = names;
        this.gender = gender;
        this.dob = dob;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNames() {
        return names;
    }

    public void setNames(String names) {
        this.names = names;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public LocalDate getDob() {
        return dob;
    }

    public void setDob(LocalDate dob) {
        this.dob = dob;
    }

    
    
}
