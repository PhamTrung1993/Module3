<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 9/27/2022
  Time: 2:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        body,table {
            text-align: center;
        }
        img {
            width: 100px;
            height: 100px;
        }
        h1,h3 {
            color: red;

        }
    </style>
</head>
<body>
<h1>Delete product</h1>
<p>
    <a href="/products" class="btn btn-danger btn-lg">Back to customer list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Customer information</legend>
        <table class="table">
            <tr>
                <td>Name: </td>
                <td>${requestScope["product"].getProductName()}</td>
            </tr>
            <tr>
                <td>Price: </td>
                <td>${requestScope["product"].getProductPrice()}</td>
            </tr>
            <tr>
                <td>Describe: </td>
                <td>${requestScope["product"].getProductDescribe()}</td>
            </tr>
            <tr>
                <td>Origin: </td>
                <td>${requestScope["product"].getProductOrigin()}</td>
            </tr>
            <tr>
                <td>Image </td>
                <td><td><img class='avatar' src="<c:out value="${requestScope['product'].getProductImage()}"></c:out>"></td></td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete customer"></td>
                <td><a href="/products" class="btn btn-danger">Back to customer list</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
