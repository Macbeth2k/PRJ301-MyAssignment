/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.auth;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;

/**
 *
 * @author LENOVO
 */
public abstract class BaseAuthentication extends HttpServlet{
    private boolean isAuthenticated(HttpServletRequest req){
        return req.getSession().getAttribute("account") != null;
    }
    
    
}
