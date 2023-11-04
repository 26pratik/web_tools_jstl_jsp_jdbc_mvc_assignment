<%-- 
    Document   : addNewBooks
    Created on : Oct 17, 2022, 7:30:07 PM
    Author     : 18573
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Books</title>
    </head>
    <body>
        <div style="text-align: center">
        <form action="addNewBooks" method="post">        
        <table border="1" width="100%">
            <thead>
                <th>ISBN</th>
                <th>BOOK TITLE</th>
                <th>AUTHOR</th>
                <th>PRICE</th>
            </thead>
            <tbody>                
                <c:forEach begin="1" end= "${ sessionScope.size }" step="1" varStatus="loop">
                    <tr>
                        <td><input type="text" name="isbn${loop.index}" required /></td>
                        <td><input type="text" name="title${loop.index}" required /></td>
                        <td><input type="text" name="authors${loop.index}" required /></td>
                        <td><input type="text" name="price${loop.index}" required /></td>
                    </tr>
                </c:forEach>
            <br><br>            
            </tbody>
        </table>
        <input type="submit" value="ADD NEW BOOKS">
        </form>
        </div>
    </body>
</html>
