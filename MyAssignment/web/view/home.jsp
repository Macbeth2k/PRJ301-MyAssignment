<%-- 
    Document   : home
    Created on : Oct 27, 2022, 5:32:04 PM
    Author     : LENOVO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <h4>Hello ${sessionScope.account.username}</h4>
        <a href="">Log out</a>
        
        <c:if test="${sessionScope.account.role eq 'staff'}">
            <form action="" method="GET">
                <input type="submit" value="Student"> 
            </form>
            <form action="" method="GET">
                <input type="submit" value="Lecture"> <br>
            </form>
            
            <form action="" method="GET">
                <input type="submit" value="Group">  
            </form>
            <form action="" method="GET">
                <input type="submit" value="Subject">  
            </form>
            <form action="" method="GET">
                <input type="submit" value="Session"> <br>
            </form>
            
            <form action="" method="GET">
                <input type="submit" value="TimeSlot">
            </form>
            <form action="" method="GET">
                <input type="submit" value="Room"> <br>
            </form>
            
        </c:if>

        <c:if test="${sessionScope.account.role eq 'student'}">
            <form action="" method="GET">
                <input type="submit" value="Schedule"> <br>
            </form>
            <form action="" method="GET">
                <input type="submit" value="Attendance"> <br>
            </form>
            <form action="" method="GET">
                <input type="submit" value="Result"> <br>
            </form>
        </c:if>
        
        <c:if test="${sessionScope.account.role eq 'lecture'}">
            <form action="" method="GET">
                <input type="submit" value="Schedule"> <br>
            </form>
            <form action="" method="GET">
                <input type="submit" value="Take Attendance"> <br>
            </form>
            <form action="" method="GET">
                <input type="submit" value="Take Result"> <br>
            </form>
        </c:if>

    </body>
</html>
