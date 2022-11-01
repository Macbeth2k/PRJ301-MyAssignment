<%-- 
    Document   : login
    Created on : Oct 31, 2022, 4:27:56 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h3 style="color: red">${requestScope.error}</h3>
        <form action="login" method="POST">
            Email <input type="text" name="email" value="${email}">  <br>
            Pass <input type="text" name="pass" value="${pass}"> <br>
            <input type="submit" value="login"> <br>
        </form>
    </body>
</html>
