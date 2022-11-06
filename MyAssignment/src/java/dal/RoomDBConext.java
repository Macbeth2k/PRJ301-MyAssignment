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
import model.Room;

/**
 *
 * @author LENOVO
 */
public class RoomDBConext extends DBContext<Room> {

    @Override
    public void insert(Room model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Room model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Room model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Room> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Room get(String room) {
        try {
            String sql = "SELECT [room]\n"
                    + "  FROM [dbo].[Room]\n"
                    + "  where room = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, room);
            ResultSet rs = stm.executeQuery();
            if(rs.next()){
                Room r = new Room();
                r.setRoom(room);
                return r;
            }
        } catch (SQLException ex) {
            Logger.getLogger(RoomDBConext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
        
    }

}
