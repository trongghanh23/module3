<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/7/2022
  Time: 2:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
    <style>
        img {
            height: 50px;
            width: 50px;
        }

        div {
            width: 100%;
        }

        table {

            border: 2px solid black;
            width: 600px;
            height: 500px;
        }
        .tables{
            margin: 15px 300px;
        }

    </style>

</head>
<body>


<div>
    <div class="tables">
        <h2>Danh Sách Khách Hàng</h2>

        <table class="table ">
            <thead>
            <tr>
                <th scope="col">STT</th>
                <th scope="col">Name</th>
                <th scope="col">Birthday</th>
                <th scope="col">Address</th>
                <th scope="col">Image</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="person" items="${personList}" varStatus="status">
                <tr>
                    <td scope="row">${status.count}</td>
                    <td>${person.getName()}</td>
                    <td>${person.getDate()}</td>
                    <td>${person.getAddress()}</td>

                    <td><img src="${person.getImage()}"></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>


</body>
</html>
