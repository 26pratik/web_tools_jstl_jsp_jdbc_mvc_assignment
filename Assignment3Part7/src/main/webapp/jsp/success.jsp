<%-- 
    Document   : success
    Created on : Oct 17, 2022, 9:09:07 PM
    Author     : Pratik Hariya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SUCCESS</title>
    </head>
    <body>
        ${sessionScope.size} <p> Books Saved Successfully</p>
        <a href="${pageContext.request.contextPath}/jsp/index.jsp">Click here to go back to homepage</a>
    </body>
</html>
