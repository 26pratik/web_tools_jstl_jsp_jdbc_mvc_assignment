<%-- 
    Document   : SearchMovie
    Created on : Oct 16, 2022, 7:12:13 PM
    Author     : Pratik Hariya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Movies</title>
    </head>
    <body>
        <div style="text-align: center">
            <h2> SEARCH MOVIES </h2>
            <form action="${pageContext.request.contextPath}/searchMovies" method="POST">
                <label> Keyword </label> 
                <input type="text" name="searchType" /><br>
                <input type="radio" name="search" value="title" checked="true"> <label>Search by Title</label>
                <br>
                <input type="radio" name="search" value="actor"> <label>Search by Actor</label>
                <br>
                <input type="radio" name="search" value="actress"> <label>Search by Actress</label>
                <br> 
                <input type="submit" value="SEARCH" />
            </form>
        </div>
    </body>
</html>
