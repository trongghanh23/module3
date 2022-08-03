<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/7/2022
  Time: 4:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/ProductServlet" method="post">
      <label>Product Description</label><br>
      <input name="description" type="text"><br>
      <label>List Price</label><br>
      <input name="price" type="number" ><br>
      <label>Discount Percent</label><br>
      <input name="percent" type="number" ><br>
      <input type="submit" name="calculateDiscount" value="Calculate Discount" />

  </form>

  </body>
</html>
