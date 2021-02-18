/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student.domain;

import Services.LocalDateConverter;
import java.time.LocalDate;
import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Registration {
    @Id
    private String studId;
    private String studnames;
    private String studgender;
     @Convert(converter = LocalDateConverter.class)
    private LocalDate studob;
    private int total_courses;
    private int total_credits;
    private String total_fees;

    public Registration() {
    }

    public Registration(String studId, String studnames, String studgender, LocalDate studob, int total_courses, int total_credits, String total_fees) {
        this.studId = studId;
        this.studnames = studnames;
        this.studgender = studgender;
        this.studob = studob;
        this.total_courses = total_courses;
        this.total_credits = total_credits;
        this.total_fees = total_fees;
    }

    public String getStudId() {
        return studId;
    }

    public void setStudId(String studId) {
        this.studId = studId;
    }

    public String getStudnames() {
        return studnames;
    }

    public void setStudnames(String studnames) {
        this.studnames = studnames;
    }

    public String getStudgender() {
        return studgender;
    }

    public void setStudgender(String studgender) {
        this.studgender = studgender;
    }

    public LocalDate getStudob() {
        return studob;
    }

    public void setStudob(LocalDate studob) {
        this.studob = studob;
    }

    public int getTotal_courses() {
        return total_courses;
    }

    public void setTotal_courses(int total_courses) {
        this.total_courses = total_courses;
    }

    public int getTotal_credits() {
        return total_credits;
    }

    public void setTotal_credits(int total_credits) {
        this.total_credits = total_credits;
    }

    public String getTotal_fees() {
        return total_fees;
    }

    public void setTotal_fees(String total_fees) {
        this.total_fees = total_fees;
    }

    

}
