<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 9/27/2022
  Time: 2:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Product</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
<h1>Edit product</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products" class="my-1 btn btn-success btn-block">Back to customer list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table class="table">
            <tr>
                <td>Name : </td>
                <td><input type="text" name="name" id="name" value="${requestScope["product"].getProductName()}"></td>
            </tr>
            <tr>
                <td>Price : </td>
                <td><input type="text" name="price" id="price" value="${requestScope["product"].getProductPrice()}"></td>
            </tr>
            <tr>
                <td>Describe : </td>
                <td><input type="text" name="describe" id="describe" value="${requestScope["product"].getProductDescribe()}"></td>
            </tr>
            <tr>
                <td>Origin : </td>
                <td><input type="text" name="origin" id="origin" value="${requestScope["product"].getProductOrigin()}"></td>
            </tr>
            <tr>
                <td>Image : </td>
                <td><input type="text" name="image" id="image" value="${requestScope["product"].getProductImage()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update product" class="my-1 btn btn-success btn-block"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
