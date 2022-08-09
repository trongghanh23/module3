<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>


<body>
<%@include file="../include/header.jsp"%>

<form method="post" action="/Customer?action=edit" >
    <legend>EDIT CUSTOMER</legend>
    <div class="mb-3">
        <label class="form-label">id</label>
        <input type="text" name="customerId" class="form-control" placeholder="name" value="${customer.customerId}">
    </div>
    <div class="mb-3">
        <label class="form-label">name</label>
        <input type="text" name="name" class="form-control" placeholder="name" value="${customer.name}">
    </div>
    <div class="mb-3">
        <label for="birthday" class="form-label">birthday</label>
        <input type="date" id="birthday" name="birthday" class="form-control" placeholder="birthday" value="${customer.birthday}">
    </div>
    <div class="mb-3">
        <label class="form-label">Giới tính: </label>
        <select id="gender" name="gender">
            <c:if test="${customer.gender==1}">
                <option value="1" selected>nam</option>
                <option value="0" >nu</option>
            </c:if>
            <c:if test="${customer.gender==0}">
                <option value="1">nam</option>
                <option value="0" selected>nu</option>
            </c:if>
        </select>

    </div>
    <div class="mb-3">
        <label for="idCard" class="form-label">idCard</label>
        <input type="text" id="idCard" name="idCard" value="${customer.idCard}" class="form-control" placeholder="id_card" >
    </div>
    <div class="mb-3">
        <label for="phone" class="form-label">phone</label>
        <input type="text" id="phone" name="phoneNumber" class="form-control" placeholder="phone" value="${customer.phone}">
    </div>
    <div class="mb-3">
        <label for="email" class="form-label">email</label>
        <input type="text" id="email" name="email" class="form-control" placeholder="email" value="${customer.email}">
    </div>
    <div class="mb-3">
        <label for="address" class="form-label">address</label>
        <input type="text" id="address" name="address" class="form-control" placeholder="address" value="${customer.address}">
    </div>

    <div class="mb-3">
        <label for="customerType" class="form-label">customerType</label>
        <select id="customerType" name="customerTypeId" class="form-select">
            <c:forEach var="customerType" items="${customerTypeList}">
                <c:if test="${customerType.customerTypeId=customer.customerTypeId}">
                    <option value="${customerType.customerTypeId}" selected>${customerType.name}</option>
                </c:if>
                <c:if test="${customerType.customerTypeId!=customer.customerTypeId}">
                    <option value="${customerType.customerTypeId}">${customerType.name}</option>
                </c:if>
            </c:forEach>

        </select>
        </select>
    </div>

    <button type="submit" class="btn btn-primary">EDIT</button>

</form>
</div>
</body>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
</html>
