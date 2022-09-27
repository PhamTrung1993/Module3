<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 9/26/2022
  Time: 10:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting Customer</title>
  <link rel="stylesheet" href="style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
<h1>Delete customer</h1>
<p>
  <a href="/customers" class="btn btn-danger btn-lg">Back to customer list</a>
</p>
<form method="post">
  <h3>Are you sure?</h3>
  <fieldset>
    <legend>Customer information</legend>
    <table class="table">
      <tr>
        <td>Name: </td>
        <td>${requestScope["customer"].getName()}</td>
      </tr>
      <tr>
        <td>Email: </td>
        <td>${requestScope["customer"].getEmail()}</td>
      </tr>
      <tr>
        <td>Address: </td>
        <td>${requestScope["customer"].getAddress()}</td>
      </tr>
      <tr>
        <td><input type="submit" value="Delete customer"></td>
        <td><a href="/customers">Back to customer list</a></td>
      </tr>
    </table>
  </fieldset>
</body>
</html>
