
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create new product</title>
  <style>
    .message{
      color:green;
    }
  </style>
</head>
<body>
<h1>Create new product</h1>
<p>
  <c:if test='${requestScope["message"] != null}'>
    <span class="message">${requestScope["message"]}</span>
  </c:if>
</p>
<p>
  <a href="/product">Back to product list</a>
</p>
<form method="post" >
  <fieldset>
    <legend>product information</legend>
    <table>
      <tr>
        <td>Name: </td>
        <td><input type="text" name="name" id="name"></td>
      </tr>
      <tr>
        <td>Cost: </td>
        <td><input type="text" name="cost" id="cost"></td>
      </tr>
      <tr>
        <td>Decription: </td>
        <td><input type="text" name="decription" id="decription"></td>
      </tr>
      <tr>
        <td>producer: </td>
        <td><input type="text" name="producer" id="producer"></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Create product"></td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html>