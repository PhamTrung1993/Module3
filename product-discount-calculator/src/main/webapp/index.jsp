<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>product discount calculator</title>
</head>
<body>
<h2>product discount calculator</h2>
<form method="post" action="/discount">
    <h2>iphone 14 Deep Purple</h2>
    <label>List Price: </label><br/>
    <input type="text" name="Price" placeholder="Price" value="1550"/><br/>
    <label>Discount Percent: </label><br/>
    <input type="text" name="Percent" placeholder="Percent" value="0"/><br/>
    <input type = "submit" id = "submit" value = "Calculate Discount"/>
</form>
</body>
</html>