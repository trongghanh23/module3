<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous"></head>


<body>
<%@include file="../include/header.jsp"%>
    <form>

            <legend>ADD NEW SERVICE</legend>

            <div class="mb-3">
                <label for="disabledSelect" class="form-label">Choose service</label>
                <select id="disabledSelect" class="form-select">
                    <option>Villa</option>
                    <option>House</option>
                    <option>Room</option>
                </select>
            </div>

        <div class="mb-3">
            <label for="disabledTextInput" class="form-label">area</label>
            <input type="text" id="disabledTextInput" class="form-control" placeholder="area">
        </div>
        <div class="mb-3">
            <label for="disabledTextInput" class="form-label">cost</label>
            <input type="text" id="TextInput" class="form-control" placeholder="cost">
        </div>
        <div class="mb-3">
            <label for="disabledTextInput" class="form-label">max_people</label>
            <input type="text" id="Input" class="form-control" placeholder="max_people">
        </div>
        <div class="mb-3">
            <label for="disabledTextInput" class="form-label">rent_type_id</label>
            <input type="text" id="text" class="form-control" placeholder="rent_type_id">
        </div>
        <div class="mb-3">
            <label for="disabledTextInput" class="form-label">standard_room</label>
            <input type="text" id="t" class="form-control" placeholder="standard_room">
        </div>
        <div class="mb-3">
            <label for="disabledTextInput" class="form-label">description_other_convenience</label>
            <input type="text" id="a" class="form-control" placeholder="description_other_convenience">
        </div>
        <div class="mb-3">
            <label for="disabledTextInput" class="form-label">pool_area</label>
            <input type="text" id="s" class="form-control" placeholder="pool_area">
        </div>
        <div class="mb-3">
            <label for="disabledTextInput" class="form-label">number_of_floors</label>
            <input type="text" id="x" class="form-control" number_of_floors="pool_area">
        </div>

            <button type="submit" class="btn btn-primary ">ADD</button>


    </form>
    </div>
</body>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script></html>
