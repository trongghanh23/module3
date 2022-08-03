<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 31/7/2022
  Time: 5:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Product</title>
    <style>
        .back {
            text-decoration: none;
            color: black;
        }
        a:hover {
            color: red;
        }
    </style>
</head>
<body>
<h1>Product Details</h1>
<form method="post">
    <fieldset>
        <legend><h4>List Product</h4></legend>
        <table>
            <tr>
                <td>Name:</td>
                <td>${product.getName()}</td>
            </tr>
            <tr>
                <td>Price:</td>
                <td>${product.getPrice()}</td>
            </tr>
            <tr>
                <td>Description:</td>
                <td>${product.getDescription()}</td>
            </tr>
            <tr>
                <td>Producer:</td>
                <td>${product.getProducer()}</td>
            </tr>
        </table>
    </fieldset>
</form>
<p><a class="back" href="/products">Back To Product List</a></p>
</body>
</html>
