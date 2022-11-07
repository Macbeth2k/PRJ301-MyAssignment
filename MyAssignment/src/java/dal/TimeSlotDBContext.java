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
import model.TimeSlot;

/**
 *
 * @author LENOVO
 */
public class TimeSlotDBContext extends DBContext<TimeSlot> {

    @Override
    public void insert(TimeSlot model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(TimeSlot model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(TimeSlot model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<TimeSlot> list() {
        try {
            ArrayList<TimeSlot> slots = new ArrayList<>();
            String sql = "SELECT [slot]\n"
                    + "      ,[description]\n"
                    + "  FROM [dbo].[TimeSlot]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {                
                TimeSlot t = new TimeSlot();
                t.setSlot(rs.getInt("slot"));
                t.setDescription(rs.getString("description"));
                slots.add(t);
            }
            return slots;
        } catch (SQLException ex) {
            Logger.getLogger(TimeSlotDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;       
    }

    @Override
    public TimeSlot get(String key) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public TimeSlot get(int slot) {
        try {
            String sql = "SELECT [slot]\n"
                    + "      ,[description]\n"
                    + "  FROM [dbo].[TimeSlot]\n"
                    + "  where slot = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, slot);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                TimeSlot t = new TimeSlot();
                t.setSlot(slot);
                t.setDescription(rs.getString("description"));
                return t;
            }
        } catch (SQLException ex) {
            System.out.println("Error at timeslot database");
        }
        return null;
    }
}
