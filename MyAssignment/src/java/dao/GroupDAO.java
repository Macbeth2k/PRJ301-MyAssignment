/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.util.ArrayList;
import model.Group;
import model.Student;

/**
 *
 * @author LENOVO
 */
public class GroupDAO {

    private ArrayList<Group> groups = new ArrayList<>();

    public GroupDAO(ArrayList<Group> groups) {
        this.groups = groups;
    }

//    public boolean isDuplicated(Group model) {
//        for (Group g : groups) {
//            return g.getName().equals(model.getName())
//                    && g.getSemester().equals(model.getSemester())
//                    && g.getScode().equals(model.getScode());
//        }
//        return false;
//    }
    
    public Group getGroupDup(Student model){
        return null;
    }
    
//    public int getIdDup(Student model){
//        for (Group g : groups) {
//            if(g.getName().equals(model.getName())
//                    && g.getSemester().equals(model.getSemester())
//                    && g.getScode().equals(model.getScode())){
//                
//            }
//        }
//        return 0;
//    }
}
