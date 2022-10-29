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
    private String scode;
    private Lecture lecture;
    private ArrayList<Student> students = new ArrayList<>();

    public Group() {
    }

    public Group(String name, String semester, String scode, Lecture lecture, ArrayList<Student> students) {
        this.name = name;
        this.semester = semester;
        this.scode = scode;
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

    public String getScode() {
        return scode;
    }

    public void setScode(String scode) {
        this.scode = scode;
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
    
    public void addStudent(Student student) {
        this.students.add(student);
    }   
}
