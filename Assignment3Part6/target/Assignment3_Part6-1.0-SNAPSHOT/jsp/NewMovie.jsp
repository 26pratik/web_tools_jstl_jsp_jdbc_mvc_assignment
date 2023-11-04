<%-- 
    Document   : NewMovie
    Created on : Oct 16, 2022, 5:02:38 PM
    Author     : 18573
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Movie</title>
    </head>
    <body>
        <div style="text-align: center">
        <h2>Please add a movie by filling the following fields.</h2><br>
        <form action="${pageContext.request.contextPath}/addNewMovie" method="POST">
            <label>Movie Name</label>
            <input type="text" name="title" required/><br>
            <label>Lead Actor</label>
            <input type="text" name="actor" required/><br>
            <label>Lead Actress</label>
            <input type="text" name="actress" required/><br>
            <label>Genre</label>
            <input type="text" name="genre" required/><br>
            <label>Launch Year</label>
            <input type="number" name="year" required/><br>
            <input type="Submit" value="Add Movie"> </br>
        </form>
        <a href="${pageContext.request.contextPath}/jsp/SearchMovie.jsp">To Search Movie, Click Here</a>
        </div>
    </body>
</html>
