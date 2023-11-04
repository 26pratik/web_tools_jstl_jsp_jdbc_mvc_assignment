<%-- 
    Document   : index
    Created on : Oct 17, 2022, 7:11:43 PM
    Author     : Pratik Hariya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <div style="text-align: center">
            <form method="post" action="tableSizeController">
                <h2>How many books do you want to add?</h2>
                <br> 
                <input type="number" min="1" name="noOfBooks">
                <br> <br>
                <input type="submit" value="Submit">
            </form>
        </div>
    </body>
</html>
