<%-- 
    Document   : login
    Created on : Feb 26, 2022, 7:05:04 PM
    Author     : Pratik Hariya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Cart</title>
    </head>
    <body>
        <div style="text-align: center">
            <form method="post" action="Login">
                <h2>Please Login</h2>
                <label>Username</label>
                <input type="text" name="userName" />
                <br>
                <label>Password</label>
                <input type="password" name="password" />
                <br>
                <input type="submit" value="Login">
            </form>
        </div>
    </body>
</html>
