<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous"></head>


<body>
<%@include file="../include/header.jsp"%>


<div class="container">
    <div class="row main mt-2  ">
        <legend>Danh sách khách hàng</legend>

            <a href="/Customer?action=create" style="color: cornsilk; text-decoration: none"><input type="button" value="Add"></a>

        <table class="table table-striped" >
            <tr>
                <th>STT</th>
                <th>name</th>
                <th>birthday</th>
                <th>gender</th>
                <th>Card</th>
                <th>phone</th>
                <th>email</th>
                <th>address</th>
                <th>customerType</th>
                <th colspan="2">action</th>

            </tr>
            <c:forEach var="customer" items="${customerList}" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>${customer.name}</td>
                <td>${customer.birthday}</td>

                    <c:if test="${customer.gender==0}">
                     <td> Nữ</td>
                    </c:if>
                    <c:if test="${customer.gender==1}">
                        <td>Nam</td>
                    </c:if>

                <td>${customer.idCard}</td>
                <td>${customer.phoneNumber}</td>
                <td>${customer.email}</td>
                <td>${customer.address}</td>
                <td>
                <c:forEach var="customerType" items="${customerTypeList}">
                    <c:if test="${customerType.customerTypeId==customer.customerTypeId}">
                        ${customerType.name}
                    </c:if>
                </c:forEach>
                </td>

                <td>
                    <a  class="btn btn-primary" href="/Customer?action=edit&id=${customer.customerId}"style="color: cornsilk; text-decoration: none">edit</a>
                </td>
                <td>
                    <button type="button" class="btn btn-danger"
                            onclick="infoDelete('${customer.customerId}','${customer.name}')"
                            data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Delete
                    </button>
                </td>
        </tr>
            </c:forEach>
        </table>
    </div>

    </div>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form method="post">
            <div class="modal-content">
                <div class="modal-header btn-danger">
                    <h5 class="modal-title" id="exampleModalLabel">Thông báo</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="text" hidden name="idDelete" id="idDelete">
                    <input type="text" hidden name="action" value="delete">
                    <span>Bạn có muốn xóa khách hàng: </span>
                    <span id="nameDelete"></span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-danger">Delete</button>
                </div>
            </div>
        </form>
    </div>
</div>

<%--Delete Modal--%>
<script>
    function infoDelete(id, name) {
        document.getElementById("idDelete").value = id;
        document.getElementById("nameDelete").innerText = name;
    }
</script>

<script>
    $(document).ready(function() {
        $('#tableCustomer').dataTable( {
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        } );
    } );
</script>

</script>

</div>
</body>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script></html>
