
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Search</title>
</head>
<body>
<h1>Search Product</h1>
<p>
    <a href="/product">Back to product list</a>
</p>
<form method="post" >
    <input type="text" name="search" placeholder="search">
    <input type="submit" value="Search">
    <c:if test='${requestScope["product"] == null}'>
        <p><b>${requestScope["message"]}</b></p>
    </c:if>
    <c:if test='${requestScope["product"] != null}'>
        <h3>Is this your Product ?</h3>
        <table>
            <tr>
                <td>Name: ${requestScope["product"].getName()}</td>
                <td></td>
            </tr>
            <tr>
                <td>Cost: ${requestScope["product"].getCost()}</td>
                <td></td>
            </tr>
            <tr>
                <td>Decription: ${requestScope["product"].getDecription()}</td>
                <td></td>
            </tr>
            <tr>
                <td>Producer: ${requestScope["product"].getProducer()}</td>
                <td></td>
            </tr>
        </table>
    </c:if>


</form>


</body>
</html>
