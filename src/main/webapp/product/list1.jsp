<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Customer List</title>

</head>
<body>
<table border="1">
  <tr>
    <td>Name</td>
    <td>Email</td>
    <td>Address</td>
    <td>Edit</td>
    <td>Delete</td>
  </tr>
  <c:forEach items='${requestScope["productMap"]}' var="productMap">
    <tr>
      <td><a href="/customers?action=view&id=${customer.getId()}">${productMap.getName()}</a></td>
      <td>${productMap.getCost()}</td>
      <td>${productMap.getDecription() }</td>
      <td>${productMap.getProducer() }</td>
      <td><a href="/customers?action=edit&id=${customer.getId()}">edit</a></td>
      <td><a href="/customers?action=delete&id=${customer.getId()}">delete</a></td>

    </tr>
  </c:forEach>
</table>
</body>
</html>
