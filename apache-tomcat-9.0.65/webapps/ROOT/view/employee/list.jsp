<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous"></head>


<body>
<%@include file="../include/header.jsp"%>
<legend>Danh sách hợp đồng</legend>
    <div class="row main mt-2 ">
        <table class="table table-striped">
            <tr>
                <th>STT</th>
                <th>start_date</th>
                <th>end_date</th>
                <th>deposit</th>
                <th>total_money</th>
                <th>email</th>
                <th>education degree</th>
                <th>position</th>
                <th>salary</th>
                <th>division</th>
                <th colspan="5">action</th>
            </tr>
            <tr>
                <td>1</td>
                <td>nguyễn văn minh</td>
                <td>12/04/1998</td>
                <td>e01</td>
                <td>090757575</td>
                <td>minh@123gmail.com</td>
                <td>Trung cấp</td>
                <td>phục vụ</td>
                <td>1000000</td>
                <td>Sale – Marketing</td>
                <td>
                    <button type="button" class="btn btn-primary">
                        <a href="/view/employee/edit.jsp" style="color: cornsilk;text-decoration: none">edit</a>

                    </button>
                </td>
                <td>
                    <button type="button" class="btn btn-primary">
                        <a href="/view/employee/add.jsp" style="color: cornsilk;text-decoration: none">add</a>

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
<form action="/student" id="formDelete">
    <input type="hidden" name="actionUser" value="delete">
    <input type="hidden" id="idStudentInput" name="idStudentDelete">
</form>
    <script>
        function showInfoDelete(id,name) {
            document.getElementById("deleteId").value= id;


        }
    </script>

</div>
</body>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script></html>
