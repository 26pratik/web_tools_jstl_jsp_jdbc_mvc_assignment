<%-- 
    Document   : cart
    Created on : Feb 26, 2022, 4:26:27 PM
    Author     : Pratik Hariya
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Cart</title>
    </head>
    <body>

        <div style="text-align: center">
            <h2 style="text-align: center">Cart Items:</h2>    
            <form method="post" action="HomeController">
                <div text-align: center">
                    <c:forEach var="mov" items="${sessionScope.cartArray}">
                        <input  type="radio" name="checkDel" value="${mov}" />
                        <c:out value="${mov}" /><br>
                    </c:forEach>

                    <c:if test = "${sessionScope.cartArray.size() < 1 || sessionScope.cartArray == null}">
                        <h3> Please add items to your cart from Home Page.</h3>
                    </c:if>
                </div>
                <div style="text-align: center">
                    <c:if test = "${sessionScope.cartArray.size() > 0}">
                        <input type="submit" value="Delete Item">
                    </c:if>
                </div>
            </form>
            <div style="text-align: center">
                <h2><a href="home">Home Page</a><br></h2>
            </div>

        </div>
    </body>
</html>
