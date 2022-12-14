<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 9/26/2022
  Time: 9:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new customer</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<%--    <style>--%>
<%--        .message {--%>
<%--            color : green;--%>
<%--        }--%>
<%--    </style>--%>
</head>
<body>
    <h1>Create new customer</h1>
    <p>
        <c:if test='${requestScope["message"] != null}'>
            <span class = "message">${requestScope["message"]}</span>
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
                    <td><input type="text" name="name" id="name"></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><input type="text" name="email" id="email"></td>
                </tr>
                <tr>
                    <td>Address: </td>
                    <td><input type="text" name="address" id="address"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Create customer"></td>
                </tr>
            </table>
        </fieldset>
    </form>
</body>
</html>
