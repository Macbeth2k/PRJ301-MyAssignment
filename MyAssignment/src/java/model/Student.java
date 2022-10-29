/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author LENOVO
 */
public class Student extends Member{
    public Student() {
        super(null, null, null);
    }
    
    public Student(String email, String username, String avatar) {
        super(email, username, avatar);
    }
    
}
