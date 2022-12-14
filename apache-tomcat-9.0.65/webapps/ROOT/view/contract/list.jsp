<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous"></head>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-primary ">

    <div class="container-fluid">

        <img src="https://furamavietnam.com/wp-content/uploads/2018/10/logo.png"style="height: 50px;width: 50px" >
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <a class="navbar-brand text-light" href="/home.jsp" >Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-light" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Employee
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/view/employee/list.jsp">Employee List</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-light" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Customer
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/view/customer/list.jsp">Customer List</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-light" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Service
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/view/service/add_service.jsp">Add new service</a></li>
                        <li><a class="dropdown-item" href="/view/service/list_service.jsp">Service List</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled text-light">Contract</a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
<div class="container">
<div class="row main mt-2 ">
    <legend>Danh s??ch h???p ?????ng</legend>
    <legend>
        <button onclick="addContract('${id}')
                " type="button" class="btn btn-primary"
                data-bs-toggle="modal" data-bs-target="#addContract">
            Th??m m???i h???p ?????ng
        </button>
    </legend>

    <table class="table table-striped">
        <tr>
            <th>STT</th>
            <th>D???ch v???</th>
            <th>Kh??ch h??ng</th>
            <th>Ng??y b???t ?????u</th>
            <th>Ng??y k???t th??c</th>
            <th>Ti???n ?????t c???c</th>
            <th>T???ng ti???n</th>
            <th>C??c d???ch v??? ??i k??m</th>

        </tr>
        <tr>
            <td>1</td>
            <td>1</td>
            <td>2</td>
            <td>3</td>
            <td>4</td>
            <td>5</td>
            <td>6</td>

            <td>
                <button onclick="addGoContract('${id}')
                        " type="button" class="btn btn-primary"
                        data-bs-toggle="modal" data-bs-target="#addDvmodal">
                    +
                </button>
                <button onclick="showGoContract('${id}')
                        " type="button" class="btn btn-primary"
                        data-bs-toggle="modal" data-bs-target="#show">
                    Danh s??ch d???ch v??? ??i k??m

                </button>

            </td>
        </tr>
    </table>

</div>
</div>
<div class="modal fade" id="addContract" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModal">Th??m d???ch v??? ??i k??m</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form class="row" action="" method="post">
                    <div class="col-md-12">
                        <label for="startday" class="form-label">Ng??y b???t ?????u </label>
                        <input type="date" class="form-control" id="startday" name="startday">
                    </div>
                    <div class="col-md-12">
                        <label for="endday" class="form-label">Ng??y k???t th??c </label>
                        <input type="date" class="form-control" id="endday" name="endday">
                    </div>

                    <div class="col-md-12">
                        <label for="deposit" class="form-label">Ti???n ?????t c???c</label>
                        <input type="text" class="form-control" id="deposit" name="deposit">
                    </div>
                    <div class="col-md-12">
                        <label for="total" class="form-label">T???ng ti???n</label>
                        <input type="number" readonly class="form-control" id="total" name="total">
                    </div>

                    <div class="col-md-12">
                        <label class="form-label">Kh??ch h??ng</label>
                        <select name="customerName" class="form-select">
                            <option value="None">Ch???n kh??ch h??ng</option>
                            <option value="1">Diamond</option>
                            <option value="2">Platinium</option>
                            <option value="3">Gold</option>
                            <option value="4">Silver</option>
                            <option value="4">Member</option>

                        </select>
                    </div>
                    <div class="col-md-12">
                        <label class="form-label">D???ch v???</label>
                        <select name="serviceName" class="form-select">
                            <option value="None">Ch???n d???ch v???</option>
                            <option value="1">Villa</option>
                            <option value="2">Room</option>
                            <option value="3">House</option>


                        </select>
                    </div>
                    <div class="col-md-12">
                        <button type="button" class="btn btn-primary mt-2 mb-2" data-bs-toggle="modal"
                                data-bs-target="" >
                            +
                        </button>

                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="addDvmodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Th??m d???ch v??? ??i k??m </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <table class="table table-striped">
                        <tr>
                            <th>T??n d???ch v??? ??i k??m</th>
                            <th>????n v???</th>
                            <th>Gi?? ti???n</th>
                            <th>S??? l?????ng</th>

                        </tr>

                        <tr>
                            <td><input type="checkbox"> Thu?? xe m??y</td>
                            <td>Gi???</td>
                            <td>100000</td>
                            <td><input style="width: 70px" type="number"></td>
                        </tr>
                        <tr>
                        <td><input type="checkbox"> Thu?? xe ?????p</td>
                        <td>Gi???</td>
                        <td>50000</td>
                        <td><input style="width: 70px" type="number"></td>
                    </tr>
                        <tr>
                            <td><input type="checkbox"> karaoke </td>
                            <td>Gi???</td>
                            <td>200000</td>
                            <td><input style="width: 70px" type="number"></td>
                        </tr>

                        <tr>
                            <td><input type="checkbox"> Buffet Bu???i s??ng</td>
                            <td>ng?????i</td>
                            <td>100000</td>
                            <td><input style="width: 70px" type="number"></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox">  Buffet bu???i tr??a</td>
                            <td>ng?????i</td>
                            <td>100000</td>
                            <td><input style="width: 70px" type="number"></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox">  BUffet bu???I t???i</td>
                            <td>ng?????i</td>
                            <td>100000</td>
                            <td><input style="width: 70px" type="number"></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save</button>
            </div>
        </div>
    </div>
</div>



<div class="modal fade" id="show" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="Label">danh s??ch d???ch v??? ??i k??m </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <table class="table table-striped">
                        <tr>
                            <th>T??n d???ch v??? ??i k??m</th>
                            <th>????n v???</th>
                            <th>Gi?? ti???n</th>
                            <th>S??? l?????ng</th>
                        </tr>
                        <tr>
                            <td>Thu?? xe m??y</td>
                            <td>Gi???</td>
                            <td>100000</td>
                            <td>1</td>
                        </tr>

                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save</button>
            </div>
        </div>
    </div>
</div>



<script>


    function addContract(id) {
        document.getElementById("customerName").value = id;
    }

    function addGoContract(id) {
        document.getElementById("id").value = id;
    }

        function showGoContract(id) {
        document.getElementById("id").value= id;

    }

</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

</body>
</html>