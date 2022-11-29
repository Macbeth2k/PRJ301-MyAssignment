/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author LENOVO
 */
public class Attendance {
    private Student student;
    private boolean present;
    private String description;
    private Session session;

    public Attendance() {
    }

    public Attendance(Student student, boolean present, String description) {
        this.student = student;
        this.present = present;
        this.description = description;
        this.session = new Session();
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public boolean isPresent() {
        return present;
    }

    public void setPresent(boolean present) {
        this.present = present;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }  

    public Session getSession() {
        return session;
    }

    public void setSession(Session session) {
        this.session = session;
    }
    
}
