<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous"></head>


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


<div class=" row "style="background: #0dcaf0">
    <div class="col-lg-9">
        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://images.vietnamtourism.gov.vn/vn/images/Furama12.jpg" class="d-block " style="width: 1000px ;height: 400px" alt="img1">
                </div>
                <div class="carousel-item">
                    <img src="https://images.vietnamtourism.gov.vn/vn/images/Furama12.jpg" class="d-block " style="width: 1000px ;height: 400px" alt="img1">
                </div>
                <div class="carousel-item">
                    <img src="https://r.bstatic.com/xdata/images/hotel/max1024x768/92594160.jpg?k=994fefefaa04a68c435049e538f6a3e7a1ba518fd1049102f3b0d92e03ad098a&o=" class="d-block " style="width: 1000px ;height: 400px" alt="img3">
                </div>
                <div class="carousel-item">
                    <img src="https://furamavietnam.com/wp-content/uploads/2018/08/Vietnam_Danang_Furama_Villas_Beach_Pool_Villas_Bathroom-1047x563.jpg" class="d-block " style="width: 1000px ;height: 400px" alt="img3">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

    <div class="col-lg-3 ">
        <div class="row bg-light ">
            <img src="https://furamavietnam.com/wp-content/uploads/2019/02/Ariyana-Tourism-Complex-02-2.png">
        </div>
        <div class="row " style="margin-top: 20px">
            <div class="col-lg-2"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/2048px-Facebook_f_logo_%282019%29.svg.png"style="height: 40px;width: 40px "></div>
            <div class="col-lg-10 " ><a href="https://www.facebook.com/furamaresort/" style="color: black; text-decoration: none">FuramaDaNangResort</a></div></div>

        <div class="row" style="margin-top: 20px">
            <div class="col-lg-2"><img src="https://thumbs.dreamstime.com/b/twitter-logo-bird-isolated-over-white-background-social-media-networking-communications-symbol-breaking-news-130861855.jpg"style="height: 40px;width: 40px ;padding: 5px"></div>
            <div class="col-lg-10" ><a href="https://www.facebook.com/furamaresort/"style="color: black; text-decoration: none">FuramaDaNangResort</a></div>
        </div>
        <div class="row" style="margin-top: 20px">
            <div class="col-lg-2"><img src="https://banner2.cleanpng.com/20180331/yaq/kisspng-logo-telephone-company-yell-calling-5abf775edb9bb5.0259369015224973748995.jpg"style="height: 40px;width: 40px;padding: 5px"></div>
            <div class="col-lg-10" ><a  href="https://www.facebook.com/furamaresort/"style="color: black; text-decoration: none">FuramaDaNangResort</a></div>
        </div>
        <div class="row" style="margin-top: 20px">
            <div class="col-lg-2"><img src="https://www.e-mailit.com/social-buttons/build/images/solutions/zalo-icon.png"style="height: 40px;width: 40px;padding: 5px"></div>
            <div class="col-lg-10" ><a  href="https://www.facebook.com/furamaresort/"style="color: black; text-decoration: none">FuramaDaNangResort</a></div>
        </div>
        <div class="row" style="margin-top: 20px">
            <div class="col-lg-2"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Email_Shiny_Icon.svg/1200px-Email_Shiny_Icon.svg.png"style="height: 40px;width: 40px;padding: 5px"></div>
            <div class="col-lg-10" ><a  href="https://www.facebook.com/furamaresort/ "style="color: black; text-decoration: none">FuramaDaNangResort</a></div>
        </div>

    </div>
</div>
    <form>

        <legend>Edit SERVICE</legend>

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


        <button type="submit" class="btn btn-primary">Save</button>
        <button type="submit" class="btn btn-primary">
            <a href="/view/service/list_service.jsp" style="color: cornsilk ;text-decoration: none"> Back</a>

        </button>

    </form>
</div>
</body>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script></html>
