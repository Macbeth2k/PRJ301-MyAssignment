<%-- 
    Document   : home
    Created on : Oct 27, 2022, 5:32:04 PM
    Author     : LENOVO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="mytag" tagdir="/WEB-INF/tags/" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <mytag:welcome name="${sessionScope.account.role}"/>
        <c:if test="${sessionScope.account eq null}">
            <a href="login">Log in</a> <br>
        </c:if>
        <c:if test="${sessionScope.account ne null}">
            <a href="logout">Log out</a> <br>
        </c:if>
        
        
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
            <form action="schedule" method="GET">
                <input type="submit" value="Schedule"> <br>
            </form>
            <form action="" method="GET">
                <input type="submit" value="View Attendance"> <br>
            </form>
            <form action="" method="GET">
                <input type="submit" value="Result"> <br>
            </form>
        </c:if>
        
        <c:if test="${sessionScope.account.role eq 'lecture'}">
            <form action="schedule" method="GET">
                <input type="submit" value="Schedule"> <br>
            </form>
            <form action="takeatt" method="GET">
                <input type="submit" value="Take Attendance"> <br>
            </form>
            <form action="" method="GET">
                <input type="submit" value="Take Result"> <br>
            </form>
        </c:if>

    </body>
</html>
