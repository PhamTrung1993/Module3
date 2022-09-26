<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 9/26/2022
  Time: 9:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.example.exerciselistofcustomers.model.Employee" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>EmployeeList</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>EMPLOYEE LIST</h1>
    <table>
        <tr>
            <th>Name</th>
            <th>DOB</th>
            <th>Address</th>
            <th>Image</th>
        </tr>
        <c:forEach items="${empList}" var="employee">
            <tr>
                <td><c:out value="${employee.getEmpname()}"></c:out></td>
                <td><c:out value="${employee.getEmpDob()}"></c:out></td>
                <td><c:out value="${employee.getEmpAddress()}"></c:out></td>
                <td class='avatar'><img src="<c:out value="${employee.getEmpImage()}"></c:out>"></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
