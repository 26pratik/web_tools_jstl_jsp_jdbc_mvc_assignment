<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - JSTL Tags</title>
</head>
<br>
<br>
<h1>JSTL Core Tags</h1>
<c:out value="${'-----------------------------------------------------------------------------------------------------------'}"/>
<c:out value="${'-----------------------------------------------------------------------------------------------------------'}"/>
<c:set var="description" scope="session" value="${'Demonstration of set, out and remove tags from JSTL Core lib'}"/>
<p>Description before using remove tag: <b><c:out value="${description}"/></b></p>
<c:remove var="description"/>
<p>Description after using remove tag: <c:out value="${description}"/></p> </br>

<h1>JSTL Function Tags</h1>
<c:out value="${'-----------------------------------------------------------------------------------------------------------'}"/>
<c:out value="${'-----------------------------------------------------------------------------------------------------------'}"/>
</br>
<c:set var="lowercase" value="LOWER CASE"/>
${fn:toLowerCase(lowercase)} </br>
<c:set var="uppercase" value="upper case"/>
${fn:toUpperCase(uppercase)} </br>

<c:if test="${fn:contains(lowercase, 'lower')}">
<p>Function contains successful
<p>
    </c:if>

    <c:if test="${fn:contains(uppercase, 'upper')}">
<p>Function contains successful
<p>
    </c:if>
    </br>
<h1>JSTL Formatting Tags</h1>
<c:out value="${'-----------------------------------------------------------------------------------------------------------'}"/>
<c:out value="${'-----------------------------------------------------------------------------------------------------------'}"/>
</br>

<c:set var="date" value="12-08-2016"/>

<fmt:parseDate value="${date}" var="parsedDate" pattern="dd-MM-yyyy"/>
<p>ParsedDate= <c:out value="${parsedDate}"/></p>

<c:set var="num" value="800.100"/>
<p>Number before parsing is:<b> <c:out value="${num}"/></b></p>
<fmt:parseNumber var="parsedNum" integerOnly="true" type="number" value="${num}"/>
<p>Number after parsing is:<b> <c:out value="${parsedNum}"/></b></p>

<c:set var="Amount" value="9850.14115" />
<p> Format Number to currency:
    <b><fmt:formatNumber value="${Amount}" type="currency" /></b></p>
</body>
</html>