/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author LENOVO
 */
public class Group {
    private String name;
    private String semester;
    private Subject subject;
    private Lecture lecture;
    private ArrayList<Student> students = new ArrayList<>();

    public Group() {
    }

    public Group(String name, String semester, Subject subject, Lecture lecture, 
            ArrayList<Student> students) {
        this.name = name;
        this.semester = semester;
        this.subject = subject;
        this.lecture = lecture;
        this.students = students;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    public Lecture getLecture() {
        return lecture;
    }

    public void setLecture(Lecture lecture) {
        this.lecture = lecture;
    }

    public ArrayList<Student> getStudents() {
        return students;
    }

    public void setStudents(ArrayList<Student> students) {
        this.students = students;
    }

    @Override
    public String toString() {
        return "Group{" + "name=" + name + ", semester=" + semester + ", subject=" + subject + ", lecture=" + lecture + ", students=" + students + '}';
    }
   
}
