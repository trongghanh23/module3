<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/8/2022
  Time: 4:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <link href="	https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
</head>
<body>
<center>
    <h1>User Management</h1>
    <table>
        <tr>
            <td>
                <a href="/users?action=create">Add New User</a>
            </td>
        </tr>
        <tr>
            <td> <a href="/users?action=sortName">SortName</a>
            </td>
        </tr>
        <tr><td>
            <form>
                <input type="text" placeholder="Tìm Kiếm" name="nameSearch">
                <input type="submit" value="search" name="action">
            </form>
        </td>
        </tr>


    </table>

</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption> <h2>
            <a href="users?action=users">List All Users</a>
        </h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>

                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <a href="/users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js">

</script>
</body>
</html>