<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
    <style>
        a:hover {
            color: red;
        }
    </style>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<body>
<h1>Products</h1>
<nav class="navbar bg-light">
    <div class="container-fluid">
        <form class="d-flex">
            <label><input class="form-control me-2" type="search" placeholder="Search" name="nameFind"></label>
            <input class="btn btn-outline-success" type="submit" name="action" value="Search">
        </form>
    </div>
</nav>
<table class="container-fluid table table-striped table-hover">
    <tr>

        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Producer</th>
        <th colspan="2">Action</th>
    </tr>
    <c:forEach items="${products}" var="product">
        <tr>
            <td><a class="text-decoration-none text-dark link-danger"
                   href="/product?action=view&id=${product.id}">${product.name}</a></td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td>${product.producer}</td>
            <td><a class="text-decoration-none text-dark link-danger"
                   href="/product?action=edit&id=${product.id}">edit</a></td>
            <td><a class="text-decoration-none text-dark link-danger"
                   href="/product?action=delete&id=${product.id}">delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
<p><a class="text-decoration-none text-dark link-danger" href="/product?action=create">Create New Product</a></p>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
        crossorigin="anonymous"></script>
</html>