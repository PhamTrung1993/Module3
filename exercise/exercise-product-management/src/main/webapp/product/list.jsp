<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 9/27/2022
  Time: 11:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        body,table {
            text-align: center;
        }
        img {
            width: 100px;
            height: 100px;
        }
    </style>
</head>
<body>
<h1>List of products</h1>
<%--<p>--%>
<%--    <a href="/products?action=create" class="btn btn-primary">Create new product</a>--%>
<%--</p>--%>
<form class="form-group search-form" action="/products" method="post">
    <input name="search" class="form-control search-input" type="text" placeholder="Type something to search">
    <input type="hidden" name="action" value="search">
    <button type="submit" class="btn btn-primary search-btn">Seacrh</button>
    <a href="/products?action=create"
       class="btn btn-primary search-btn">Add</a>
</form>
<table border="1" class="table">
    <tr>
        <td>Name</td>
        <td>Price</td>
        <td>Describe</td>
        <td>Origin</td>
        <td>Image</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var = "product">
        <tr>
            <td><a href="/products?action=view&id=${product.getProductId()}">${product.getProductName()}</a></td>
            <td>${product.getProductPrice()}</td>
            <td>${product.getProductDescribe()}</td>
            <td>${product.getProductOrigin()}</td>
            <td><img class='avatar' src="<c:out value="${product.getProductImage()}"></c:out>"></td>
            <td><a href="/products?action=edit&id=${product.getProductId()}" class="btn btn-primary">edit</a></td>
            <td><a href="/products?action=delete&id=${product.getProductId()}" class="btn btn-primary">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
