<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 9/26/2022
  Time: 5:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        body,table {
            text-align: center;
        }
    </style>

</head>
<body>
<h1>Customers</h1>
<p>
    <a href="/customers?action=create" class="btn btn-danger btn-lg">Create new customer</a>

</p>
<table border="1" class="table">
    <tr>
        <td>Name</td>
        <td>Email</td>
        <td>Address</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["customers"]}' var="customer">
        <tr>
            <td><a href="/customers?action=view&id=${customer.getId()}">${customer.getName()}</a></td>
            <td>${customer.getEmail()}</td>
            <td>${customer.getAddress()}</td>
            <td><a href="/customers?action=edit&id=${customer.getId()}" class="btn btn-danger btn-lg">edit</a></td>
            <td><a href="/customers?action=delete&id=${customer.getId()}" class="btn btn-danger btn-lg">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
