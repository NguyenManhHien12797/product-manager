<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
  <title>Product List</title>

</head>
<body>

<h1>Product</h1>
<p>
  <a href="/product?action=create" >Create new product</a>

</p>
<a href="/product?action=search" >Search product</a>
<table border="1">
  <tr>
    <td>Name</td>
    <td>Cost</td>
    <td>Decription</td>
    <td>Producer</td>
    <td>Edit</td>
    <td>Delete</td>
  </tr>
  <c:forEach items='${requestScope["product"]}' var="product">
    <tr>
      <td><a href="/product?action=view&id=${product.getId()}">${product.getName()}</a></td>
      <td>${product.getCost()}</td>
      <td>${product.getDecription() }</td>
      <td>${product.getProducer() }</td>
      <td><a href="/product?action=edit&id=${product.getId()}">edit</a></td>
      <td><a href="/product?action=delete&id=${product.getId()}">delete</a></td>

    </tr>
  </c:forEach>
</table>
</body>
</html>
