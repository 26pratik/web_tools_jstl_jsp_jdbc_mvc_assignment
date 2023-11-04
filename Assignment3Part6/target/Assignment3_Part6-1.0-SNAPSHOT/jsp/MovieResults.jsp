<%-- 
    Document   : MovieResults
    Created on : Oct 16, 2022, 9:28:36 PM
    Author     : 18573
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Movie Results</title>
    </head>
    <body>
        <div style="text-align: center">
            <h1>Search Results</h1>
            <table border="1" width="100%">
                <thead>
                    <th>MOVIE TITLE</th>
                    <th>LEAD ACTOR</th>
                    <th>LEAD ACTRESS</th>
                    <th>GENRE</th>
                    <th>LAUNCH YEAR</th>
                </thead>
                <tbody>
                    <c:forEach var="movie" items="${requestScope.movies}">
                        <tr>
                            <td><c:out value="${movie.getMovieName()}" /></td>
                            <td><c:out value="${movie.getLeadActor()}" /></td>
                            <td><c:out value="${movie.getLeadActress()}" /></td>
                            <td><c:out value="${movie.getGenre()}" /></td>
                            <td><c:out value="${movie.getLaunchYear()}" /></td>
                        </tr>
                    </c:forEach>
                <br><br>                
                </tbody>
            </table>    
            <h2><a href="${pageContext.request.contextPath}/jsp/NewMovie.jsp">Click here to go back to the main page</a></h2>
        </div>
    </body>
</html>
