<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous"></head>


<body>
<%@include file="../include/header.jsp"%>

    <legend>Add Employee</legend>


    <div class="mb-3">
        <label for="disabledTextInput" class="form-label">name</label>
        <input type="text" id="disabledTextInput" class="form-control" placeholder="name">
    </div>
    <div class="mb-3">
        <label for="disabledTextInput" class="form-label">date_of_birth</label>
        <input type="text" id="TextInput" class="form-control" placeholder="date_of_birth">
    </div>
    <div class="mb-3">
        <label for="disabledTextInput" class="form-label">id_card</label>
        <input type="text" id="Input" class="form-control" placeholder="id_card">
    </div>
    <div class="mb-3">
        <label for="disabledTextInput" class="form-label">phone</label>
        <input type="text" id="text" class="form-control" placeholder="phone">
    </div>

    <div class="mb-3">
        <label for="disabledTextInput" class="form-label">email</label>
        <input type="text" id="a" class="form-control" placeholder="email">
    </div>
    <div class="mb-3">
        <label for="disabledSelect" class="form-label">Choose education degree</label>
        <select id="disabledSelect" class="form-select">
            <option>Trung cấp</option>
            <option> Cao đẳng</option>
            <option>Đại học </option>
            <option>sau đại học</option>
        </select>
    </div>

    <div class="mb-3">
        <label for="disabledSelect" class="form-label">Choose position</label>
        <select id="select" class="form-select">
            <option>Lễ tân</option>
            <option> phục vụ</option>
            <option>chuyên viên</option>
            <option>giám sát</option>
            <option>quản lý</option>
            <option>giám đốc</option>
        </select>
    </div>
    <div class="mb-3">
        <label for="disabledTextInput" class="form-label">salary</label>
        <input type="text" id="a1" class="form-control" placeholder="salary">
    </div>
    <div class="mb-3">
        <label for="disabledSelect" class="form-label">Choose division</label>
        <select id="selects" class="form-select">
            <option>Sale – Marketing</option>
            <option> Hành Chính</option>
            <option>Phục vụ</option>
            <option>quản lý</option>
        </select>
    </div>


    <div class="mb-3">
        <label for="disabledTextInput" class="form-label">customer_type_id</label>
        <input type="text" id="s" class="form-control" placeholder="customer_type_id">
    </div>
    <div class="mb-3">
        <label for="disabledTextInput" class="form-label">address</label>
        <input type="text" id="x" class="form-control" placeholder="address">
    </div>
    <div class="mb-3">
        <label for="disabledTextInput" class="form-label">customer_type</label>
        <input type="text" id="h" class="form-control" placeholder="customer_type">
    </div>

<button type="submit" class="btn btn-primary">SAVE</button>

    <button type="submit" class="btn btn-primary ">
        <a style="color: cornsilk ; text-decoration: none" href="/view/employee/list.jsp">BACK</a>
    </button>



</div>


</body>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

</html>
</head>

