<%-- 
    Document   : home
    Created on : Feb 25, 2022, 2:12:38 PM
    Author     : Pratik Hariya
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping App</title>        
    </head>
    <body>
        <div style=" width: 100%; text-align: center ">
            <h2>Items Menu</h2>
            <form method="get" action="HomeController">
                <input type="submit" value="Books" name="choice"/>
                <input type="submit" value="Music" name="choice"/>
                <input type="submit" value="Computer" name="choice"/>
            </form>
        </div>
        <div style=" width: 100%; text-align: center ">
            <form method="get" action="HomeController">
                <c:forEach var="mov" items="${sessionScope.visibleArray}">
                    <input type="radio" name="check" value="${mov}">
                    <c:out value="${mov}" /><br>
                </c:forEach>
                <c:if test = "${sessionScope.visibleArray.size() < 1}">
                    <h2> Please add items to your cart from Home Page.</h2>
                </c:if>
                <div style="text-align: center">
                    <c:if test = "${sessionScope.visibleArray.size() > 0}">
                        <input type="submit" value="ADD TO CART">
                    </c:if>
                    <div>
                        <h3 style="text-align: center;"><a href="cart">View Cart</a></h3><br>
                    </div>
            </form>
        </div>
    </div>
</body>
</html>
