/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author LENOVO
 */
public class Lecture extends Member{
    public Lecture() {
        super(null, null, null);
    }

    public Lecture(String email, String pass, String username, String avatar) {
        super(email, username, avatar);
    }
}
