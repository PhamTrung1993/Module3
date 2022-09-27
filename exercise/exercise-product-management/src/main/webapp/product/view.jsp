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
    <title>View Product</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
<h1>Customer details</h1>
<p>
    <a href="<c:url value="/products"/>" class="btn btn-danger btn-lg">Back to customer list</a>
</p>
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
        <td>Descibe: </td>
        <td>${requestScope["product"].getProductDescribe()}</td>
    </tr>
    <tr>
        <td>Descibe: </td>
        <td>${requestScope["product"].getProductDescribe()}</td>
    </tr>
    <tr>
        <td>Descibe: </td>
        <td>${requestScope["product"].getProductDescribe()}</td>
    </tr>
</table>
</body>
</html>
