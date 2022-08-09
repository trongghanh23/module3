<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous"></head>

<body>
<%@include file="../include/header.jsp"%>
<legend>Danh sách dịch vụ</legend>
    <div class="row main mt-2 ">
        <table class="table table-striped">
            <tr>
                <th>STT</th>
                <th>name</th>
                <th>area</th>
                <th>cost</th>
                <th>max_people</th>
                <th>rent_type_id</th>
                <th>standard_room</th>
                <th>description_other_convenience</th>
                <th>pool_area</th>
                <th>number_of_floors</th>
                <th>facility_free</th>

                <th colspan="5">action</th>
            </tr>
            <tr>
                <td>1</td>
                <td>Villa</td>
                <td>40m^2</td>
                <td>2500000</td>
                <td>10</td>
                <td>day</td>
                <td>vip</td>
                <td></td>
                <td>30m^2</td>
                <td>10</td>
                <td></td>
                <td>
                    <button type="button" class="btn btn-primary">
                        <a href="/view/service/edit.jsp" style="color: cornsilk; text-decoration: none">edit</a>

                    </button>
                <td>
                    <button onclick="showInfoDelete('${id}')" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        delete
                    </button>

        </table>

    </div>
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <form action="/view=delete" >
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Bạn có muốn xoá</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <input type="text" name="deleteId" id="deleteId">

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Delete</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script>
        function showInfoDelete(id) {
            document.getElementById("deleteId").value= id;

        }
    </script>

</div>
</body>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script></html>
