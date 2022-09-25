<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 9/25/2022
  Time: 9:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Converter</title>
</head>
<body>
<%
  //request.getParameter("rate"): lấy về giá trị của tham số "rate" trong trường input text.
  // Chuyển giá trị này sang số thực và gán vào biển rate
  float rate = Float.parseFloat(request.getParameter("rate"));
  float usd = Float.parseFloat(request.getParameter("usd"));

  float vnd = rate*usd;
%>
<h1>Rate: <%=rate%></h1>
<h1>USD: <%=usd%></h1>
<h1>VND: <%=vnd%></h1>
</body>
</html>
