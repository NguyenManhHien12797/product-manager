<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting product</title>
</head>
<body>
<h1>Delete product</h1>
<p>
    <a href="/product">Back to product list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td>${requestScope["productMap"].getName()}</td>
            </tr>
            <tr>
                <td>Cost: </td>
                <td>${requestScope["productMap"].getCost()}</td>
            </tr>
            <tr>
                <td>Decription: </td>
                <td>${requestScope["productMap"].getDecription()}</td>
            </tr>
            <tr>
                <td>Producer: </td>
                <td>${requestScope["productMap"].getProducer() }</td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete product"></td>
                <td><a href="/product">Back to product list</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>

