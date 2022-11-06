<%-- 
    Document   : login
    Created on : Oct 31, 2022, 4:27:56 PM
    Author     : LENOVO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <c:if test="${sessionScope.account eq null}">
            <h3 style="color: red">${requestScope.error}</h3>
            <form action="login" method="POST">
                Email <input type="text" name="email" value="${email}">  <br>
                Pass <input type="text" name="pass" value="${pass}"> <br>
                <input type="submit" value="login"> <br>
            </form>
        </c:if>
        <c:if test="${sessionScope.account ne null}">           
            You have logged in successfully     <br>
            <a href="../logout">Log out</a> <br>
        </c:if>
    </body>
</html>
