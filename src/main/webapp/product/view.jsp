<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>View product</title>
</head>
<body>
<h1>Product details</h1>
<p>
  <a href="/product">Back to product list</a>
</p>
<table>
  <tr>
    <td>Name: </td>
    <td>${requestScope["product"].getName()}</td>
  </tr>
  <tr>
    <td>Cost: </td>
    <td>${requestScope["product"].getCost()}</td>
  </tr>
  <tr>
    <td>Decription: </td>
    <td>${requestScope["product"].getDecription() }</td>
  </tr>
  <tr>
    <td>Producer: </td>
    <td>${requestScope["product"].getProducer()}</td>
  </tr>
</table>
</body>
</html>

