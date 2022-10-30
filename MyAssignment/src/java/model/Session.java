/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author LENOVO
 */
public class Session {
    private int serial;
    private TimeSlot timeslot;
    private Room room;
    private Date date;
    private boolean attended;
    private ArrayList<Attendance> attendances = new ArrayList<>();

    public Session() {
    }

    public Session(int serial, TimeSlot timeslot, Room room, Date date,
            boolean attended, ArrayList<Attendance> attendances) {
        this.serial = serial;
        this.timeslot = timeslot;
        this.room = room;
        this.date = date;
        this.attended = attended;      
    }

    public int getSerial() {
        return serial;
    }

    public void setSerial(int serial) {
        this.serial = serial;
    }

    public TimeSlot getTimeslot() {
        return timeslot;
    }

    public void setTimeslot(TimeSlot timeslot) {
        this.timeslot = timeslot;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public boolean isAttended() {
        return attended;
    }

    public void setAttended(boolean attended) {
        this.attended = attended;
    }

    public ArrayList<Attendance> getAttendances() {
        return attendances;
    }

    public void setAttendances(ArrayList<Attendance> attendances) {
        this.attendances = attendances;
    }
       
}
