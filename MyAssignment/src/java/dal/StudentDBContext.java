/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Session;
import model.Student;

/**
 *
 * @author LENOVO
 */
public class StudentDBContext extends DBContext<Student> {

    @Override
    public void insert(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }



    @Override
    public ArrayList<Student> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Student get(String email) {
        try {
            String sql = "SELECT [email]\n"
                    + "      ,[username]\n"
                    + "      ,[avatar]\n"
                    + "  FROM [dbo].[Student]\n"
                    + "  where email = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            ResultSet rs = stm.executeQuery();
            if(rs.next()){
                Student s = new Student();
                s.setEmail(email);
                s.setUsername(rs.getString("username"));
                s.setAvatar(rs.getString("avatar"));
                return s;
            }         
        } catch (SQLException ex) {
            System.out.println("Error at student database");
        }
        return null;
    }
    
    public ArrayList<Session> getSessions(String email){
        ArrayList<Session> sessions = new ArrayList<>();
        
        return sessions;
    }
}
