<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 9/25/2022
  Time: 10:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    Map<String,String> dic = new HashMap<>();
%>
<%
    dic.put("hello","Xin Chào");
    dic.put("how","Thế nào");
    dic.put("book","Quyển sách");
    dic.put("computer","Máy Tính");

    String search = request.getParameter("search");

    String result = dic.get(search);
    if (result != null) {

        System.out.println("Word: " + search );
        System.out.println("Result: " + result);
    }
    else {
        System.out.println("not found");
    }
%>
</body>
</html>
