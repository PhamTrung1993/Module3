<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 9/26/2022
  Time: 10:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Customer</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
<h1>Edit customer</h1>
<p>
  <c:if test='${requestScope["message"] != null}'>
    <span class="message">${requestScope["message"]}</span>
  </c:if>
</p>
<p>
  <a href="/customers" class="btn btn-danger btn-lg">Back to customer list</a>
</p>
<form method="post">
  <fieldset>
    <legend>Customer information</legend>
    <table class="table">
      <tr>
        <td>Name: </td>
        <td><input type="text" name="name" id="name" value="${requestScope["customer"].getName()}"></td>
      </tr>
      <tr>
        <td>Email: </td>
        <td><input type="text" name="email" id="email" value="${requestScope["customer"].getEmail()}"></td>
      </tr>
      <tr>
        <td>Address: </td>
        <td><input type="text" name="address" id="address" value="${requestScope["customer"].getAddress()}"></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Update customer"></td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html>
