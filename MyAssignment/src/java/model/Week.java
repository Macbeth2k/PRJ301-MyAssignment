/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author LENOVO
 */
public class Week {

    private ArrayList<Date> dates;
    private Date from;
    private Date to;

    public Week() {
    }

    public Week(ArrayList<Date> week) {
        this.dates = week;
        this.from = week.get(0);
        this.to = week.get(6);
    }

    public ArrayList<Date> getDates() {
        return dates;
    }

    public void setDates(ArrayList<Date> week) {
        this.dates = week;
    }

    public Date getFrom() {
        return from;
    }

    public void setFrom(Date from) {
        this.from = from;
    }

    public Date getTo() {
        return to;
    }

    public void setTo(Date to) {
        this.to = to;
    }

    
}
